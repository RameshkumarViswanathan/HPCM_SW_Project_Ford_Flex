/**************************************************************************
**
** This file contains SFR descriptions for TC37X
** Generated at 2021-03-23 16:07:39 +0000
** from TC37X_um_MCSFR.xml_tmp, V1.1.0 supplied by Infineon
** Filter: ^SRC_, ^SCU_, ^STM\d?_, ^ASCLIN, ^P\d\d_, ^CPU\d?, XBAR_
**
**************************************************************************/
#ifndef Os_TC37X_DEFS_H
#define Os_TC37X_DEFS_H
/* [MISRA 2004 Rule 18.4] Unions */ /*lint -save -e960 (range safe) */
typedef signed int signed_sfr_access_type;
typedef unsigned int unsigned_sfr_access_type;
#ifdef __TASKING__
typedef unsigned __sfrbit32 sfr_bitfield;
#else
typedef unsigned int sfr_bitfield;
#endif
typedef volatile union
{
	struct
	{
     sfr_bitfield DISR : 1; /* Module Disable Request Bit */
    /* const */ sfr_bitfield DISS : 1; /* Module Disable Status Bit */
     sfr_bitfield resv2 : 1; /* reserved */
     sfr_bitfield EDIS : 1; /* Sleep Mode Enable Control */
     sfr_bitfield resv4 : 28; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_CLC_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ALTI : 3; /* Alternate Input Select */
     sfr_bitfield resv3 : 1; /* reserved */
     sfr_bitfield DEPTH : 6; /* Digital Glitch Filter Depth */
     sfr_bitfield resv10 : 6; /* reserved */
     sfr_bitfield CTS : 2; /* CTS Select */
     sfr_bitfield resv18 : 7; /* reserved */
     sfr_bitfield RCPOL : 1; /* RTS CTS Polarity */
     sfr_bitfield CPOL : 1; /* Clock Polarity in Synchronous Mode */
     sfr_bitfield SPOL : 1; /* Slave Polarity in Synchronous Mode */
     sfr_bitfield LB : 1; /* Loop Back Mode */
     sfr_bitfield CTSEN : 1; /* Input Signal CTS Enable */
    /* const */ sfr_bitfield RXM : 1; /* Receive Monitor */
    /* const */ sfr_bitfield TXM : 1; /* Transmit Monitor */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_IOCR_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield MODREV : 8; /* Module Revision Number */
    /* const */ sfr_bitfield MODTYPE : 8; /* Module Type */
    /* const */ sfr_bitfield MODNUMBER : 16; /* Module Number Value */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_ID_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield FLUSH : 1; /* Flush the transmit FIFO */
     sfr_bitfield ENO : 1; /* Transmit FIFO Outlet Enable */
     sfr_bitfield resv2 : 2; /* reserved */
     sfr_bitfield FM : 2; /* TXFIFO Mode */
     sfr_bitfield INW : 2; /* Transmit FIFO Inlet Width */
     sfr_bitfield INTLEVEL : 4; /* FIFO Interrupt Level */
     sfr_bitfield resv12 : 4; /* reserved */
    /* const */ sfr_bitfield FILL : 5; /* FIFO Filling Level */
     sfr_bitfield resv21 : 11; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_TXFIFOCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield FLUSH : 1; /* Flush the receive FIFO */
     sfr_bitfield ENI : 1; /* Receive FIFO Inlet Enable */
     sfr_bitfield resv2 : 2; /* reserved */
     sfr_bitfield FM : 2; /* RXFIFO Mode */
     sfr_bitfield OUTW : 2; /* Receive FIFO Outlet Width */
     sfr_bitfield INTLEVEL : 4; /* FIFO Interrupt Level */
     sfr_bitfield resv12 : 4; /* reserved */
    /* const */ sfr_bitfield FILL : 5; /* FIFO Filling Level */
     sfr_bitfield resv21 : 10; /* reserved */
     sfr_bitfield BUF : 1; /* Receive Buffer Mode */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_RXFIFOCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PRESCALER : 12; /* Prescaling of the Fractional Divider */
     sfr_bitfield resv12 : 4; /* reserved */
     sfr_bitfield OVERSAMPLING : 4; /* Oversampling Factor */
     sfr_bitfield resv20 : 4; /* reserved */
     sfr_bitfield SAMPLEPOINT : 4; /* Sample Point Position */
     sfr_bitfield resv28 : 3; /* reserved */
     sfr_bitfield SM : 1; /* Sample Mode */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_BITCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 6; /* reserved */
     sfr_bitfield IDLE : 3; /* Duration of the IDLE delay */
     sfr_bitfield STOP : 3; /* Number of Stop Bits */
     sfr_bitfield LEAD : 3; /* Duration of the Leading Delay */
     sfr_bitfield resv15 : 1; /* reserved */
     sfr_bitfield MODE : 2; /* Mode Selection */
     sfr_bitfield resv18 : 10; /* reserved */
     sfr_bitfield MSB : 1; /* Shift Direction */
     sfr_bitfield CEN : 1; /* Collision Detection Enable */
     sfr_bitfield PEN : 1; /* Parity Enable */
     sfr_bitfield ODD : 1; /* Parity Type */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_FRAMECON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield DATLEN : 4; /* Data Length */
     sfr_bitfield resv4 : 9; /* reserved */
     sfr_bitfield HO : 1; /* Header Only */
     sfr_bitfield RM : 1; /* Response Mode */
     sfr_bitfield CSM : 1; /* Checksum Mode */
     sfr_bitfield RESPONSE : 8; /* Response Timeout Threshold Value */
     sfr_bitfield resv24 : 8; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_DATCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield DENOMINATOR : 12; /* Denominator */
     sfr_bitfield resv12 : 4; /* reserved */
     sfr_bitfield NUMERATOR : 12; /* Numerator */
     sfr_bitfield resv28 : 4; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_BRG_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield LOWERLIMIT : 8; /* Lower Limit */
     sfr_bitfield UPPERLIMIT : 8; /* Upper Limit */
    /* const */ sfr_bitfield MEASURED : 12; /* Measured Value of 8-bits from Sync Field */
     sfr_bitfield resv28 : 4; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_BRD_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 23; /* reserved */
     sfr_bitfield CSI : 1; /* Checksum Injection */
     sfr_bitfield resv24 : 1; /* reserved */
     sfr_bitfield CSEN : 1; /* Hardware Checksum Enable */
     sfr_bitfield MS : 1; /* Master Slave Mode */
     sfr_bitfield ABD : 1; /* Autobaud Detection */
     sfr_bitfield resv28 : 4; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_LINCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield BREAK : 6; /* Break Pulse Generation and Detection */
     sfr_bitfield resv6 : 26; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_LINBTIMER_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield HEADER : 8; /* Header Timeout Threshold Value */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_LINHTIMER_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield TH : 1; /* Transmit Header End Flag */
    /* const */ sfr_bitfield TR : 1; /* Transmit Response End Flag */
    /* const */ sfr_bitfield RH : 1; /* Receive Header End Flag */
    /* const */ sfr_bitfield RR : 1; /* Receive Response End Flag */
     sfr_bitfield resv4 : 1; /* reserved */
    /* const */ sfr_bitfield FED : 1; /* Falling Edge from Level 1 to Level 0 Detected */
    /* const */ sfr_bitfield RED : 1; /* Rising Edge from Level 0 to Level 1 Detected */
     sfr_bitfield resv7 : 6; /* reserved */
    /* const */ sfr_bitfield TWRQ : 1; /* Transmit Wake Request Flag */
    /* const */ sfr_bitfield THRQ : 1; /* Transmit Header Request Flag */
    /* const */ sfr_bitfield TRRQ : 1; /* Transmit Response Request Flag */
    /* const */ sfr_bitfield PE : 1; /* Parity Error Flag */
    /* const */ sfr_bitfield TC : 1; /* Transmission Completed Flag */
    /* const */ sfr_bitfield FE : 1; /* Framing Error Flag */
    /* const */ sfr_bitfield HT : 1; /* Header Timeout Flag */
    /* const */ sfr_bitfield RT : 1; /* Response Timeout Flag */
    /* const */ sfr_bitfield BD : 1; /* Break Detected Flag */
    /* const */ sfr_bitfield LP : 1; /* LIN Parity Error Flag */
    /* const */ sfr_bitfield LA : 1; /* LIN Autobaud Detection Error Flag */
    /* const */ sfr_bitfield LC : 1; /* LIN Checksum Error Flag */
    /* const */ sfr_bitfield CE : 1; /* Collision Detection Error Flag */
    /* const */ sfr_bitfield RFO : 1; /* Receive FIFO Overflow Flag */
    /* const */ sfr_bitfield RFU : 1; /* Receive FIFO Underflow Flag */
    /* const */ sfr_bitfield RFL : 1; /* Receive FIFO Level Flag */
     sfr_bitfield resv29 : 1; /* reserved */
    /* const */ sfr_bitfield TFO : 1; /* Transmit FIFO Overflow Flag */
    /* const */ sfr_bitfield TFL : 1; /* Transmit FIFO Level Flag */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_FLAGS_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield THS : 1; /* Flag Set Bit */
     sfr_bitfield TRS : 1; /* Flag Set Bit */
     sfr_bitfield RHS : 1; /* Flag Set Bit */
     sfr_bitfield RRS : 1; /* Flag Set Bit */
     sfr_bitfield resv4 : 1; /* reserved */
     sfr_bitfield FEDS : 1; /* Flag Set Bit */
     sfr_bitfield REDS : 1; /* Flag Set Bit */
     sfr_bitfield resv7 : 6; /* reserved */
     sfr_bitfield TWRQS : 1; /* Flag Set Bit */
     sfr_bitfield THRQS : 1; /* Flag Set Bit */
     sfr_bitfield TRRQS : 1; /* Flag Set Bit */
     sfr_bitfield PES : 1; /* Flag Set Bit */
     sfr_bitfield TCS : 1; /* Flag Set Bit */
     sfr_bitfield FES : 1; /* Flag Set Bit */
     sfr_bitfield HTS : 1; /* Flag Set Bit */
     sfr_bitfield RTS : 1; /* Flag Set Bit */
     sfr_bitfield BDS : 1; /* Flag Set Bit */
     sfr_bitfield LPS : 1; /* Flag Set Bit */
     sfr_bitfield LAS : 1; /* Flag Set Bit */
     sfr_bitfield LCS : 1; /* Flag Set Bit */
     sfr_bitfield CES : 1; /* Flag Set Bit */
     sfr_bitfield RFOS : 1; /* Flag Set Bit */
     sfr_bitfield RFUS : 1; /* Flag Set Bit */
     sfr_bitfield RFLS : 1; /* Flag Set Bit */
     sfr_bitfield resv29 : 1; /* reserved */
     sfr_bitfield TFOS : 1; /* Flag Set Bit */
     sfr_bitfield TFLS : 1; /* Flag Set Bit */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_FLAGSSET_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield THC : 1; /* Flag Clear Bit */
     sfr_bitfield TRC : 1; /* Flag Clear Bit */
     sfr_bitfield RHC : 1; /* Flag Clear Bit */
     sfr_bitfield RRC : 1; /* Flag Clear Bit */
     sfr_bitfield resv4 : 1; /* reserved */
     sfr_bitfield FEDC : 1; /* Flag Clear Bit */
     sfr_bitfield REDC : 1; /* Flag Clear Bit */
     sfr_bitfield resv7 : 6; /* reserved */
     sfr_bitfield TWRQC : 1; /* Flag Clear Bit */
     sfr_bitfield THRQC : 1; /* Flag Clear Bit */
     sfr_bitfield TRRQC : 1; /* Flag Clear Bit */
     sfr_bitfield PEC : 1; /* Flag Clear Bit */
     sfr_bitfield TCC : 1; /* Flag Clear Bit */
     sfr_bitfield FEC : 1; /* Flag Clear Bit */
     sfr_bitfield HTC : 1; /* Flag Clear Bit */
     sfr_bitfield RTC : 1; /* Flag Clear Bit */
     sfr_bitfield BDC : 1; /* Flag Clear Bit */
     sfr_bitfield LPC : 1; /* Flag Clear Bit */
     sfr_bitfield LAC : 1; /* Flag Clear Bit */
     sfr_bitfield LCC : 1; /* Flag Clear Bit */
     sfr_bitfield CEC : 1; /* Flag Clear Bit */
     sfr_bitfield RFOC : 1; /* Flag Clear Bit */
     sfr_bitfield RFUC : 1; /* Flag Clear Bit */
     sfr_bitfield RFLC : 1; /* Flag Clear Bit */
     sfr_bitfield resv29 : 1; /* reserved */
     sfr_bitfield TFOC : 1; /* Flag Clear Bit */
     sfr_bitfield TFLC : 1; /* Flag Clear Bit */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_FLAGSCLEAR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield THE : 1; /* Flag Enable Bit */
     sfr_bitfield TRE : 1; /* Flag Enable Bit */
     sfr_bitfield RHE : 1; /* Flag Enable Bit */
     sfr_bitfield RRE : 1; /* Flag Enable Bit */
     sfr_bitfield resv4 : 1; /* reserved */
     sfr_bitfield FEDE : 1; /* Flag Enable Bit */
     sfr_bitfield REDE : 1; /* Flag Enable Bit */
     sfr_bitfield resv7 : 9; /* reserved */
     sfr_bitfield PEE : 1; /* Flag Enable Bit */
     sfr_bitfield TCE : 1; /* Flag Enable Bit */
     sfr_bitfield FEE : 1; /* Flag Enable Bit */
     sfr_bitfield HTE : 1; /* Flag Enable Bit */
     sfr_bitfield RTE : 1; /* Flag Enable Bit */
     sfr_bitfield BDE : 1; /* Flag Enable Bit */
     sfr_bitfield LPE : 1; /* Flag Enable Bit */
     sfr_bitfield LAE : 1; /* Flag Enable Bit */
     sfr_bitfield LCE : 1; /* Flag Enable Bit */
     sfr_bitfield CEE : 1; /* Flag Enable Bit */
     sfr_bitfield RFOE : 1; /* Flag Enable Bit */
     sfr_bitfield RFUE : 1; /* Flag Enable Bit */
     sfr_bitfield RFLE : 1; /* Flag Enable Bit */
     sfr_bitfield resv29 : 1; /* reserved */
     sfr_bitfield TFOE : 1; /* Flag Enable Bit */
     sfr_bitfield TFLE : 1; /* Flag Enable Bit */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_FLAGSENABLE_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield DATA : 32; /* Data */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_TXDATA_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CLKSEL : 5; /* Baud Rate Logic Clock Select */
     sfr_bitfield resv5 : 26; /* reserved */
    /* const */ sfr_bitfield CON : 1; /* Clock On Flag */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_CSR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 24; /* reserved */
     sfr_bitfield SUS : 4; /* OCDS Suspend Control */
     sfr_bitfield SUS_P : 1; /* SUS Write Protection */
    /* const */ sfr_bitfield SUSSTA : 1; /* Suspend State */
     sfr_bitfield resv30 : 2; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_OCS_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CLR : 1; /* Kernel Reset Status Clear */
     sfr_bitfield resv1 : 31; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_KRSTCLR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield RST : 1; /* Kernel Reset */
     sfr_bitfield resv1 : 31; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_KRST1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield RST : 1; /* Kernel Reset */
    /* const */ sfr_bitfield RSTSTAT : 1; /* Kernel Reset Status */
     sfr_bitfield resv2 : 30; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_KRST0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 32; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_ACCEN1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN0 : 1; /* Access Enable for Master TAG ID 0 */
     sfr_bitfield EN1 : 1; /* Access Enable for Master TAG ID 1 */
     sfr_bitfield EN2 : 1; /* Access Enable for Master TAG ID 2 */
     sfr_bitfield EN3 : 1; /* Access Enable for Master TAG ID 3 */
     sfr_bitfield EN4 : 1; /* Access Enable for Master TAG ID 4 */
     sfr_bitfield EN5 : 1; /* Access Enable for Master TAG ID 5 */
     sfr_bitfield EN6 : 1; /* Access Enable for Master TAG ID 6 */
     sfr_bitfield EN7 : 1; /* Access Enable for Master TAG ID 7 */
     sfr_bitfield EN8 : 1; /* Access Enable for Master TAG ID 8 */
     sfr_bitfield EN9 : 1; /* Access Enable for Master TAG ID 9 */
     sfr_bitfield EN10 : 1; /* Access Enable for Master TAG ID 10 */
     sfr_bitfield EN11 : 1; /* Access Enable for Master TAG ID 11 */
     sfr_bitfield EN12 : 1; /* Access Enable for Master TAG ID 12 */
     sfr_bitfield EN13 : 1; /* Access Enable for Master TAG ID 13 */
     sfr_bitfield EN14 : 1; /* Access Enable for Master TAG ID 14 */
     sfr_bitfield EN15 : 1; /* Access Enable for Master TAG ID 15 */
     sfr_bitfield EN16 : 1; /* Access Enable for Master TAG ID 16 */
     sfr_bitfield EN17 : 1; /* Access Enable for Master TAG ID 17 */
     sfr_bitfield EN18 : 1; /* Access Enable for Master TAG ID 18 */
     sfr_bitfield EN19 : 1; /* Access Enable for Master TAG ID 19 */
     sfr_bitfield EN20 : 1; /* Access Enable for Master TAG ID 20 */
     sfr_bitfield EN21 : 1; /* Access Enable for Master TAG ID 21 */
     sfr_bitfield EN22 : 1; /* Access Enable for Master TAG ID 22 */
     sfr_bitfield EN23 : 1; /* Access Enable for Master TAG ID 23 */
     sfr_bitfield EN24 : 1; /* Access Enable for Master TAG ID 24 */
     sfr_bitfield EN25 : 1; /* Access Enable for Master TAG ID 25 */
     sfr_bitfield EN26 : 1; /* Access Enable for Master TAG ID 26 */
     sfr_bitfield EN27 : 1; /* Access Enable for Master TAG ID 27 */
     sfr_bitfield EN28 : 1; /* Access Enable for Master TAG ID 28 */
     sfr_bitfield EN29 : 1; /* Access Enable for Master TAG ID 29 */
     sfr_bitfield EN30 : 1; /* Access Enable for Master TAG ID 30 */
     sfr_bitfield EN31 : 1; /* Access Enable for Master TAG ID 31 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_ACCEN0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 24; /* reserved */
     sfr_bitfield IODT : 1; /* In-Order Data Transactions */
     sfr_bitfield resv25 : 7; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SMACON_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield TA : 32; /* Transaction Address */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DIEAR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield IED : 1; /* Integrity Error Detected */
    /* const */ sfr_bitfield IE_T : 1; /* Integrity Error - Tag Memory */
    /* const */ sfr_bitfield IE_C : 1; /* Integrity Error - Cache Memory */
    /* const */ sfr_bitfield IE_S : 1; /* Integrity Error - Scratchpad Memory */
    /* const */ sfr_bitfield IE_BI : 1; /* Integrity Error - Bus Interface */
    /* const */ sfr_bitfield E_INFO : 6; /* Error Information */
    /* const */ sfr_bitfield IE_UNC : 1; /* Dual Bit Error Detected */
    /* const */ sfr_bitfield IE_SP : 1; /* Safety Protection Error Detected */
    /* const */ sfr_bitfield IE_BS : 1; /* Bus Slave Access Indicator */
    /* const */ sfr_bitfield IE_DLMU : 1; /* Integrity Error - DLMU */
    /* const */ sfr_bitfield IE_LPB : 1; /* Integrity Error - Local Pflash Bank */
    /* const */ sfr_bitfield IE_MTMV : 1; /* Memory Test Mode Violation detected */
     sfr_bitfield resv17 : 15; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DIETR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield IED : 1; /* Integrity Error Detected */
    /* const */ sfr_bitfield IE_T : 1; /* Integrity Error - TAG Memory */
    /* const */ sfr_bitfield IE_C : 1; /* Integrity Error - Cache Memory */
    /* const */ sfr_bitfield IE_S : 1; /* Integrity Error - Scratchpad Memory */
    /* const */ sfr_bitfield IE_BI : 1; /* Integrity Error - Bus Interface */
    /* const */ sfr_bitfield E_INFO : 6; /* Error Information */
    /* const */ sfr_bitfield IE_UNC : 1; /* Integrity Error - Uncorrectable Error Detected */
    /* const */ sfr_bitfield IE_SP : 1; /* Safety Protection Error Detected */
    /* const */ sfr_bitfield IE_BS : 1; /* Bus Slave Access Indicator */
    /* const */ sfr_bitfield IE_ADDR : 1; /* Address Phase error detected at SRI slave interface */
    /* const */ sfr_bitfield IE_LPB : 1; /* Integrity Error - Local Pflash bank */
    /* const */ sfr_bitfield IE_MTMV : 1; /* Memory Test Mode Violation detected */
     sfr_bitfield resv17 : 15; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PIETR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ASI : 5; /* Address Space Identifier */
     sfr_bitfield resv5 : 27; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TASK_ASI_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield DAC : 16; /* Data Access Cacheability Segments FHto 0H */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PMA0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CAC : 16; /* Code Access Cacheability Segments FH-0H */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PMA1_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield PSI : 16; /* Peripheral Space Identifier Segments FH-0H */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PMA2_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 3; /* reserved */
     sfr_bitfield RM : 1; /* Rounding Mode Compatibility */
     sfr_bitfield SP : 1; /* SYSCON Safety Protection Mode Compatibility */
     sfr_bitfield resv5 : 27; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_COMPAT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PCXO : 16; /* Previous Context Pointer Offset Field */
     sfr_bitfield PCXS : 4; /* Previous Context Pointer Segment Address */
     sfr_bitfield UL : 1; /* Upper or Lower Context Tag */
     sfr_bitfield PIE : 1; /* Previous Interrupt Enable */
     sfr_bitfield PCPN : 8; /* Previous CPU Priority Number */
     sfr_bitfield resv30 : 2; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PCXI_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CDC : 7; /* Call Depth Counter */
     sfr_bitfield CDE : 1; /* Call Depth Count Enable */
     sfr_bitfield GW : 1; /* Global Address Register Write Permission */
     sfr_bitfield IS : 1; /* Interrupt Stack Control */
     sfr_bitfield IO : 2; /* Access Privilege Level Control (I/O Privilege) */
     sfr_bitfield PRS : 2; /* Protection Register Set */
     sfr_bitfield S : 1; /* Safe Task Identifier */
     sfr_bitfield PRS2 : 1; /* Protection Register Set MSB */
     sfr_bitfield resv16 : 8; /* reserved */
     sfr_bitfield USB : 8; /* User Status Bits */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PSW_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
     sfr_bitfield PC : 31; /* Program Counter */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PC_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield FCDSF : 1; /* Free Context List Depleted Sticky Flag */
     sfr_bitfield PROTEN : 1; /* Memory Protection Enable */
     sfr_bitfield TPROTEN : 1; /* Temporal Protection Enable */
     sfr_bitfield IS : 1; /* Initial State Interrupt */
     sfr_bitfield TS : 1; /* Initial State Trap */
     sfr_bitfield resv5 : 3; /* reserved */
     sfr_bitfield ESDIS : 1; /* Emulator Space Disable */
     sfr_bitfield resv9 : 7; /* reserved */
     sfr_bitfield U1_IED : 1; /* User-1 Instruction execution disable */
     sfr_bitfield U1_IOS : 1; /* User-1 Peripheral access as supervisor */
     sfr_bitfield resv18 : 6; /* reserved */
     sfr_bitfield BHALT : 1; /* Boot Halt */
     sfr_bitfield resv25 : 7; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SYSCON_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield MOD_REV : 8; /* Revision Number */
    /* const */ sfr_bitfield MOD_32B : 8; /* 32-Bit Module Enable */
    /* const */ sfr_bitfield MOD : 16; /* Module Identification Number */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CPU_ID_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield CORE_ID : 3; /* Core Identification Number */
     sfr_bitfield resv3 : 29; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CORE_ID_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield VSS : 1; /* Vector Spacing Select */
     sfr_bitfield BIV : 31; /* Base Address of Interrupt Vector Table */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_BIV_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
     sfr_bitfield BTV : 31; /* Base Address of Trap Vector Table */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_BTV_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ISP : 32; /* Interrupt Stack Pointer */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_ISP_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CCPN : 8; /* Current CPU Priority Number */
     sfr_bitfield resv8 : 7; /* reserved */
     sfr_bitfield IE : 1; /* Global Interrupt Enable Bit */
    /* const */ sfr_bitfield PIPN : 8; /* Pending Interrupt Priority Number */
     sfr_bitfield resv24 : 8; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_ICR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield FCXO : 16; /* FCX Offset Address Field */
     sfr_bitfield FCXS : 4; /* FCX Segment Address Field */
     sfr_bitfield resv20 : 12; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FCX_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield LCXO : 16; /* LCX Offset Field */
     sfr_bitfield LCXS : 4; /* LCX Segment Address */
     sfr_bitfield resv20 : 12; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_LCX_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield CID : 3; /* Customer ID */
     sfr_bitfield resv3 : 29; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CUS_ID_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield DATA : 32; /* Data Register */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_D0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ADDR : 32; /* Address Register */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_A0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 3; /* reserved */
     sfr_bitfield LOWBND : 29; /* DPRy Lower Boundary Address */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DPR0_L_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 3; /* reserved */
     sfr_bitfield UPPBND : 29; /* DPRy Upper Boundary Address */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DPR0_U_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 5; /* reserved */
     sfr_bitfield LOWBND : 27; /* CPRy Lower Boundary Address */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CPR0_L_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 5; /* reserved */
     sfr_bitfield UPPBND : 27; /* CPR0_m Upper Boundary Address */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CPR0_U_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield XE_n : 10; /* Execute Enable Range select - XE[n] */
     sfr_bitfield resv10 : 22; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CPXE_0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield RE_n : 18; /* Read Enable Range Select - RE[n] */
     sfr_bitfield resv18 : 14; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DPRE_0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield WE_n : 18; /* Write Enable Range Select - WE[n] */
     sfr_bitfield resv18 : 14; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DPWE_0_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield TEXP0 : 1; /* Timer0 Expired Flag */
    /* const */ sfr_bitfield TEXP1 : 1; /* Timer1 Expired Flag */
    /* const */ sfr_bitfield TEXP2 : 1; /* Timer1 Expired Flag */
     sfr_bitfield resv3 : 13; /* reserved */
    /* const */ sfr_bitfield TTRAP : 1; /* Temporal Protection Trap */
     sfr_bitfield resv17 : 15; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_CON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield Timer : 32; /* Temporal Protection Timer */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_TIMER0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 4; /* reserved */
     sfr_bitfield ENTRY_LVAL : 8; /* Exception Entry Timer Load value */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_ENTRY_LVAL_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield ENTRY_CVAL : 12; /* Exception Entry Timer Current Value */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_ENTRY_CVAL_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 4; /* reserved */
     sfr_bitfield EXIT_LVAL : 20; /* Exception Exit Timer Load value */
     sfr_bitfield resv24 : 8; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_EXIT_LVAL_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield EXIT_CVAL : 24; /* Exception Exit Timer Current Value */
     sfr_bitfield resv24 : 8; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_EXIT_CVAL_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EXTIM_CLASS_EN : 8; /* Exception Timer Class Enables */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_CLASS_EN_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EXIT_TIN : 8; /* Exception Exit Timer TIN */
     sfr_bitfield EXIT_CLASS : 3; /* Exception Exit Timer Class */
     sfr_bitfield resv11 : 4; /* reserved */
    /* const */ sfr_bitfield EXIT_AT : 1; /* Exception Exit Timer Alarm Triggered */
     sfr_bitfield ENTRY_TIN : 8; /* Exception Entry Timer TIN */
     sfr_bitfield ENTRY_CLASS : 3; /* Exception Entry Timer Class */
     sfr_bitfield resv27 : 4; /* reserved */
    /* const */ sfr_bitfield ENTRY_AT : 1; /* Exception Entry Timer Alarm Triggered */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_STAT_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield EXIT_FCX : 20; /* Exception Exit Timer FCX */
     sfr_bitfield resv20 : 12; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_FCX_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield TST : 1; /* Trap Status */
     sfr_bitfield TCL : 1; /* Trap Clear */
     sfr_bitfield resv2 : 6; /* reserved */
    /* const */ sfr_bitfield RM : 2; /* Captured Rounding Mode */
     sfr_bitfield resv10 : 8; /* reserved */
     sfr_bitfield FXE : 1; /* FX Trap Enable */
     sfr_bitfield FUE : 1; /* FU Trap Enable */
     sfr_bitfield FZE : 1; /* FZ Trap Enable */
     sfr_bitfield FVE : 1; /* FV Trap Enable */
     sfr_bitfield FIE : 1; /* FI Trap Enable */
     sfr_bitfield resv23 : 3; /* reserved */
    /* const */ sfr_bitfield FX : 1; /* Captured FX */
    /* const */ sfr_bitfield FU : 1; /* Captured FU */
    /* const */ sfr_bitfield FZ : 1; /* Captured FZ */
    /* const */ sfr_bitfield FV : 1; /* Captured FV */
    /* const */ sfr_bitfield FI : 1; /* Captured FI */
     sfr_bitfield resv31 : 1; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_CON_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield PC : 32; /* Captured Program Counter */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_PC_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield OPC : 8; /* Captured Opcode */
    /* const */ sfr_bitfield FMT : 1; /* Captured Instruction Format */
     sfr_bitfield resv9 : 7; /* reserved */
    /* const */ sfr_bitfield DREG : 4; /* Captured Destination Register */
     sfr_bitfield resv20 : 12; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_OPC_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield SRC1 : 32; /* Captured SRC1 Operand */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_SRC1_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield SRC2 : 32; /* Captured SRC2 Operand */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_SRC2_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield SRC3 : 32; /* Captured SRC3 Operand */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_SRC3_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EVTA : 3; /* Event Associated */
     sfr_bitfield BBM : 1; /* Break Before Make (BBM) or Break After Make (BAM) Selection */
     sfr_bitfield BOD : 1; /* Breakout Disable */
     sfr_bitfield SUSP : 1; /* CDC Suspend-Out Signal State */
     sfr_bitfield CNT : 2; /* Counter */
     sfr_bitfield resv8 : 4; /* reserved */
     sfr_bitfield TYP : 1; /* Input Selection */
     sfr_bitfield RNG : 1; /* Compare Type */
     sfr_bitfield resv14 : 1; /* reserved */
     sfr_bitfield ASI_EN : 1; /* Enable ASI Comparison */
     sfr_bitfield ASI : 5; /* Address Space Identifier */
     sfr_bitfield resv21 : 6; /* reserved */
     sfr_bitfield AST : 1; /* Address Store */
     sfr_bitfield ALD : 1; /* Address Load */
     sfr_bitfield resv29 : 3; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TR0EVT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ADDR : 32; /* Comparison Address */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TR0ADR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CM : 1; /* Counter Mode */
     sfr_bitfield CE : 1; /* Count Enable */
     sfr_bitfield M1 : 3; /* M1CNT Configuration */
     sfr_bitfield M2 : 3; /* M2CNT Configuration */
     sfr_bitfield M3 : 3; /* M3CNT Configuration */
     sfr_bitfield resv11 : 21; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CCTRL_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CountValue : 31; /* Count Value */
     sfr_bitfield SOvf : 1; /* Sticky Overflow Bit */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CCNT_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield DE : 1; /* Debug Enable */
     sfr_bitfield HALT : 2; /* CPU Halt Request / Status Field */
    /* const */ sfr_bitfield SIH : 1; /* Suspend-in Halt */
     sfr_bitfield SUSP : 1; /* Current State of the Core Suspend-Out Signal */
     sfr_bitfield resv5 : 1; /* reserved */
    /* const */ sfr_bitfield PREVSUSP : 1; /* Previous State of Core Suspend-Out Signal */
     sfr_bitfield PEVT : 1; /* Posted Event */
    /* const */ sfr_bitfield EVTSRC : 5; /* Event Source */
     sfr_bitfield resv13 : 19; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DBGSR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EVTA : 3; /* Event Associated */
     sfr_bitfield BBM : 1; /* Break Before Make (BBM) or Break After Make (BAM) Selection */
     sfr_bitfield BOD : 1; /* Breakout Disable */
     sfr_bitfield SUSP : 1; /* CDC Suspend-Out Signal State */
     sfr_bitfield CNT : 2; /* Counter */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_EXEVT_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield T0 : 1; /* Trigger-0 */
    /* const */ sfr_bitfield T1 : 1; /* Trigger-1 */
    /* const */ sfr_bitfield T2 : 1; /* Trigger-2 */
    /* const */ sfr_bitfield T3 : 1; /* Trigger-3 */
    /* const */ sfr_bitfield T4 : 1; /* Trigger-4 */
    /* const */ sfr_bitfield T5 : 1; /* Trigger-5 */
    /* const */ sfr_bitfield T6 : 1; /* Trigger-6 */
    /* const */ sfr_bitfield T7 : 1; /* Trigger-7 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TRIG_ACC_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
     sfr_bitfield DMSValue : 31; /* Debug Monitor Start Address */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DMS_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 6; /* reserved */
     sfr_bitfield DCXValue : 26; /* Debug Context Save Area Pointer */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DCX_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield DTA : 1; /* Debug Trap Active Bit */
     sfr_bitfield resv1 : 31; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DBGTCR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ADFLIP : 8; /* Address ECC Bit Flip */
     sfr_bitfield ADTYPE : 2; /* Type of error */
     sfr_bitfield resv10 : 21; /* reserved */
     sfr_bitfield AE : 1; /* Activate Error Enable */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SEGEN_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield DCACHE_SZE : 16; /* Data Cache Size */
    /* const */ sfr_bitfield DSCRATCH_SZE : 16; /* Data Scratch Size */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DCON2_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield SRE : 1; /* Scratch Range Error */
     sfr_bitfield GAE : 1; /* Global Address Error */
     sfr_bitfield LBE : 1; /* Load Bus Error */
     sfr_bitfield DRE : 1; /* Local DLMU Range Error */
     sfr_bitfield resv4 : 2; /* reserved */
     sfr_bitfield CRE : 1; /* Cache Refill Error */
     sfr_bitfield resv7 : 7; /* reserved */
     sfr_bitfield DTME : 1; /* DTAG MSIST Error */
     sfr_bitfield LOE : 1; /* Load Overlay Error */
     sfr_bitfield SDE : 1; /* Segment Difference Error */
     sfr_bitfield SCE : 1; /* Segment Crossing Error */
     sfr_bitfield CAC : 1; /* CSFR Access Error */
     sfr_bitfield MPE : 1; /* Memory Protection Error */
     sfr_bitfield CLE : 1; /* Context Location Error */
     sfr_bitfield resv21 : 3; /* reserved */
     sfr_bitfield ALN : 1; /* Alignment Error */
     sfr_bitfield resv25 : 7; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DSTR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 3; /* reserved */
     sfr_bitfield SBE : 1; /* Store Bus Error */
     sfr_bitfield resv4 : 5; /* reserved */
     sfr_bitfield CWE : 1; /* Cache Writeback Error */
     sfr_bitfield CFE : 1; /* Cache Flush Error */
     sfr_bitfield resv11 : 3; /* reserved */
     sfr_bitfield SOE : 1; /* Store Overlay Error */
     sfr_bitfield resv15 : 17; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DATR_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield ERROR_ADDRESS : 32; /* Error Address */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DEADD_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
     sfr_bitfield DCBYP : 1; /* Data Cache Bypass */
     sfr_bitfield resv2 : 30; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DCON0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield FRE : 1; /* Fetch Range Error */
     sfr_bitfield resv1 : 1; /* reserved */
     sfr_bitfield FBE : 1; /* Fetch Bus Error */
     sfr_bitfield resv3 : 9; /* reserved */
     sfr_bitfield FPE : 1; /* Fetch Peripheral Error */
     sfr_bitfield resv13 : 1; /* reserved */
     sfr_bitfield FME : 1; /* Fetch MSIST Error */
     sfr_bitfield resv15 : 17; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PSTR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PCINV : 1; /* Program Cache Invalidate */
     sfr_bitfield PBINV : 1; /* Program Buffer Invalidate */
     sfr_bitfield resv2 : 30; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PCON1_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield PCACHE_SZE : 16; /* Program Cache Size (ICACHE) in KBytes */
    /* const */ sfr_bitfield PSCRATCH_SZE : 16; /* Program Scratch Size in KBytes */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PCON2_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
     sfr_bitfield PCBYP : 1; /* Program Cache Bypass */
     sfr_bitfield resv2 : 30; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PCON0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 5; /* reserved */
     sfr_bitfield ADDR : 27; /* Region Lower Address */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNLA0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 5; /* reserved */
     sfr_bitfield ADDR : 27; /* Region Upper Address */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNUA0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN : 32; /* Write Access Enable for Master TAG ID n (n=0-31) */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNACCENA0_W_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN : 32; /* Write Access Enable for Master TAG ID n (n=32-63) */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNACCENB0_W_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN : 32; /* Read Access Enable for Master TAG ID n (n=0-31) */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNACCENA0_R_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN : 32; /* Read Access Enable for Master TAG ID n (n=32-63) */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNACCENB0_R_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN : 32; /* Access Enable for Master TAG ID n (n= 0-31) */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SFR_SPROT_ACCENA_W_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN : 32; /* Access Enable for Master TAG ID n (n= 32-63) */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SFR_SPROT_ACCENB_W_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield RST : 1; /* Kernel Reset */
    /* const */ sfr_bitfield RSTSTAT : 2; /* Kernel Reset Status */
     sfr_bitfield resv3 : 29; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_KRST0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield TAG1 : 6; /* Flash Prefetch Buffer 1 Configuration */
     sfr_bitfield resv6 : 2; /* reserved */
     sfr_bitfield TAG2 : 6; /* Flash Prefetch Buffer 2 Configuration */
     sfr_bitfield resv14 : 2; /* reserved */
     sfr_bitfield TAG3 : 6; /* Flash Prefetch Buffer 3 Configuration */
     sfr_bitfield resv22 : 2; /* reserved */
     sfr_bitfield TAG4 : 6; /* Flash Prefetch Buffer 4 Configuration */
     sfr_bitfield resv30 : 2; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FLASHCON0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield STALL : 1; /* Stall Bus Request */
     sfr_bitfield resv1 : 15; /* reserved */
     sfr_bitfield MASKUECC : 2; /* Mask PFLASH Uncorrectable ECC Bit Error */
     sfr_bitfield resv18 : 14; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FLASHCON1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield RECDIS : 2; /* Address Buffer Recording Disable */
     sfr_bitfield ECCCORDIS : 2; /* ECC Correction Disable */
     sfr_bitfield resv4 : 4; /* reserved */
     sfr_bitfield HMARGIN : 2; /* Hard Margin Selection */
     sfr_bitfield MSEL : 2; /* Margin Read Selection */
     sfr_bitfield resv12 : 4; /* reserved */
     sfr_bitfield ECCSCLR : 2; /* Clear ECC Status Register */
     sfr_bitfield resv18 : 6; /* reserved */
     sfr_bitfield SBABCLR : 2; /* Clear SBAB Record Registers */
     sfr_bitfield DBABCLR : 2; /* Clear DBAB Record Registers */
     sfr_bitfield MBABCLR : 2; /* Clear MBAB Record Registers */
     sfr_bitfield ZBABCLR : 2; /* Clear ZBAB Record Registers */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FLASHCON2_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ECCERRINJ : 1; /* ECC Error Injection */
     sfr_bitfield EDCERRINJ : 1; /* EDC Error Injection */
     sfr_bitfield SBABERRINJ : 1; /* Corrected Single Bits Address Buffer (SBAB) Error Injection */
     sfr_bitfield DBABERRINJ : 1; /* Corrected Double Bits Address Buffer (DBAB) Error Injection */
     sfr_bitfield MBABERRINJ : 1; /* Uncorrected Multi Bit Address Buffer (MBAB) Error Injection */
     sfr_bitfield ZBABERRINJ : 1; /* Uncorrected All Zeros Bits Address Buffer (ZBAB) Error Injection */
     sfr_bitfield SBERERRINJ : 1; /* Single Bit Error (SBER) Injection */
     sfr_bitfield DBERERRINJ : 1; /* Double Bit Error (DBER) Injection */
     sfr_bitfield NVMCERRINJ : 1; /* NVM Configuration (NVMCER) Injection */
     sfr_bitfield FLCONERRINJ : 1; /* Flashcon Error (FLCONER) Injection */
     sfr_bitfield resv10 : 22; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FLASHCON3_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield DDIS : 1; /* Disable direct LPB access */
     sfr_bitfield resv1 : 31; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FLASHCON4_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield SHOVEN_x : 32; /* Shadow Overlay Enable - SHOVEN[x] */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_OSEL_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 5; /* reserved */
     sfr_bitfield OBASE : 17; /* Overlay Block Base Address */
     sfr_bitfield resv22 : 2; /* reserved */
     sfr_bitfield OMEM : 4; /* Overlay Memory Select */
     sfr_bitfield resv28 : 3; /* reserved */
     sfr_bitfield OVEN : 1; /* Overlay Enabled */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_RABR0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 5; /* reserved */
     sfr_bitfield TBASE : 23; /* Target Base */
     sfr_bitfield resv28 : 4; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_OTAR0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 5; /* reserved */
     sfr_bitfield OMASK : 12; /* Overlay Address Mask */
    /* const */ sfr_bitfield ONE : 11; /* Fixed "1" Values */
     sfr_bitfield resv28 : 4; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_OMASK0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield SRPN : 8; /* Service Request Priority Number */
     sfr_bitfield resv8 : 2; /* reserved */
     sfr_bitfield SRE : 1; /* Service Request Enable */
     sfr_bitfield TOS : 3; /* Type of Service Control */
     sfr_bitfield resv14 : 2; /* reserved */
     sfr_bitfield ECC : 5; /* Error Correction Code */
     sfr_bitfield resv21 : 3; /* reserved */
    /* const */ sfr_bitfield SRR : 1; /* Service Request Flag */
     sfr_bitfield CLRR : 1; /* Request Clear Bit */
     sfr_bitfield SETR : 1; /* Request Set Bit */
    /* const */ sfr_bitfield IOV : 1; /* Interrupt Trigger Overflow Bit */
     sfr_bitfield IOVCLR : 1; /* Interrupt Trigger Overflow Clear Bit */
    /* const */ sfr_bitfield SWS : 1; /* SW Sticky Bit */
     sfr_bitfield SWSCLR : 1; /* SW Sticky Clear Bit */
     sfr_bitfield resv31 : 1; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SRC_CPU0SB_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield P0 : 1; /* Output Bit 0 */
     sfr_bitfield P1 : 1; /* Output Bit 1 */
     sfr_bitfield P2 : 1; /* Output Bit 2 */
     sfr_bitfield P3 : 1; /* Output Bit 3 */
     sfr_bitfield P4 : 1; /* Output Bit 4 */
     sfr_bitfield P5 : 1; /* Output Bit 5 */
     sfr_bitfield P6 : 1; /* Output Bit 6 */
     sfr_bitfield P7 : 1; /* Output Bit 7 */
     sfr_bitfield P8 : 1; /* Output Bit 8 */
     sfr_bitfield P9 : 1; /* Output Bit 9 */
     sfr_bitfield P10 : 1; /* Output Bit 10 */
     sfr_bitfield P11 : 1; /* Output Bit 11 */
     sfr_bitfield P12 : 1; /* Output Bit 12 */
     sfr_bitfield P13 : 1; /* Output Bit 13 */
     sfr_bitfield P14 : 1; /* Output Bit 14 */
     sfr_bitfield P15 : 1; /* Output Bit 15 */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OUT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield P0 : 1; /* Output Bit 0 */
     sfr_bitfield P1 : 1; /* Output Bit 1 */
     sfr_bitfield P2 : 1; /* Output Bit 2 */
     sfr_bitfield P3 : 1; /* Output Bit 3 */
     sfr_bitfield P4 : 1; /* Output Bit 4 */
     sfr_bitfield P5 : 1; /* Output Bit 5 */
     sfr_bitfield P6 : 1; /* Output Bit 6 */
     sfr_bitfield P7 : 1; /* Output Bit 7 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P01_OUT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield P0 : 1; /* Output Bit 0 */
     sfr_bitfield P1 : 1; /* Output Bit 1 */
     sfr_bitfield P2 : 1; /* Output Bit 2 */
     sfr_bitfield P3 : 1; /* Output Bit 3 */
     sfr_bitfield P4 : 1; /* Output Bit 4 */
     sfr_bitfield P5 : 1; /* Output Bit 5 */
     sfr_bitfield P6 : 1; /* Output Bit 6 */
     sfr_bitfield P7 : 1; /* Output Bit 7 */
     sfr_bitfield P8 : 1; /* Output Bit 8 */
     sfr_bitfield P9 : 1; /* Output Bit 9 */
     sfr_bitfield P10 : 1; /* Output Bit 10 */
     sfr_bitfield P11 : 1; /* Output Bit 11 */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P02_OUT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield P0 : 1; /* Output Bit 0 */
     sfr_bitfield P1 : 1; /* Output Bit 1 */
     sfr_bitfield P2 : 1; /* Output Bit 2 */
     sfr_bitfield P3 : 1; /* Output Bit 3 */
     sfr_bitfield resv4 : 28; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_OUT_type;
typedef volatile union
{
	struct
	{
    /* w0 */ sfr_bitfield PS0 : 1; /* Set Bit 0 */
    /* w0 */ sfr_bitfield PS1 : 1; /* Set Bit 1 */
    /* w0 */ sfr_bitfield PS2 : 1; /* Set Bit 2 */
    /* w0 */ sfr_bitfield PS3 : 1; /* Set Bit 3 */
    /* w0 */ sfr_bitfield PS4 : 1; /* Set Bit 4 */
    /* w0 */ sfr_bitfield PS5 : 1; /* Set Bit 5 */
    /* w0 */ sfr_bitfield PS6 : 1; /* Set Bit 6 */
    /* w0 */ sfr_bitfield PS7 : 1; /* Set Bit 7 */
    /* w0 */ sfr_bitfield PS8 : 1; /* Set Bit 8 */
    /* w0 */ sfr_bitfield PS9 : 1; /* Set Bit 9 */
    /* w0 */ sfr_bitfield PS10 : 1; /* Set Bit 10 */
    /* w0 */ sfr_bitfield PS11 : 1; /* Set Bit 11 */
    /* w0 */ sfr_bitfield PS12 : 1; /* Set Bit 12 */
    /* w0 */ sfr_bitfield PS13 : 1; /* Set Bit 13 */
    /* w0 */ sfr_bitfield PS14 : 1; /* Set Bit 14 */
    /* w0 */ sfr_bitfield PS15 : 1; /* Set Bit 15 */
    /* w0 */ sfr_bitfield PCL0 : 1; /* Clear Bit 0 */
    /* w0 */ sfr_bitfield PCL1 : 1; /* Clear Bit 1 */
    /* w0 */ sfr_bitfield PCL2 : 1; /* Clear Bit 2 */
    /* w0 */ sfr_bitfield PCL3 : 1; /* Clear Bit 3 */
    /* w0 */ sfr_bitfield PCL4 : 1; /* Clear Bit 4 */
    /* w0 */ sfr_bitfield PCL5 : 1; /* Clear Bit 5 */
    /* w0 */ sfr_bitfield PCL6 : 1; /* Clear Bit 6 */
    /* w0 */ sfr_bitfield PCL7 : 1; /* Clear Bit 7 */
    /* w0 */ sfr_bitfield PCL8 : 1; /* Clear Bit 8 */
    /* w0 */ sfr_bitfield PCL9 : 1; /* Clear Bit 9 */
    /* w0 */ sfr_bitfield PCL10 : 1; /* Clear Bit 10 */
    /* w0 */ sfr_bitfield PCL11 : 1; /* Clear Bit 11 */
    /* w0 */ sfr_bitfield PCL12 : 1; /* Clear Bit 12 */
    /* w0 */ sfr_bitfield PCL13 : 1; /* Clear Bit 13 */
    /* w0 */ sfr_bitfield PCL14 : 1; /* Clear Bit 14 */
    /* w0 */ sfr_bitfield PCL15 : 1; /* Clear Bit 15 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMR_type;
typedef volatile union
{
	struct
	{
    /* w0 */ sfr_bitfield PS0 : 1; /* Set Bit 0 */
    /* w0 */ sfr_bitfield PS1 : 1; /* Set Bit 1 */
    /* w0 */ sfr_bitfield PS2 : 1; /* Set Bit 2 */
    /* w0 */ sfr_bitfield PS3 : 1; /* Set Bit 3 */
    /* w0 */ sfr_bitfield PS4 : 1; /* Set Bit 4 */
    /* w0 */ sfr_bitfield PS5 : 1; /* Set Bit 5 */
    /* w0 */ sfr_bitfield PS6 : 1; /* Set Bit 6 */
    /* w0 */ sfr_bitfield PS7 : 1; /* Set Bit 7 */
     sfr_bitfield resv8 : 8; /* reserved */
    /* w0 */ sfr_bitfield PCL0 : 1; /* Clear Bit 0 */
    /* w0 */ sfr_bitfield PCL1 : 1; /* Clear Bit 1 */
    /* w0 */ sfr_bitfield PCL2 : 1; /* Clear Bit 2 */
    /* w0 */ sfr_bitfield PCL3 : 1; /* Clear Bit 3 */
    /* w0 */ sfr_bitfield PCL4 : 1; /* Clear Bit 4 */
    /* w0 */ sfr_bitfield PCL5 : 1; /* Clear Bit 5 */
    /* w0 */ sfr_bitfield PCL6 : 1; /* Clear Bit 6 */
    /* w0 */ sfr_bitfield PCL7 : 1; /* Clear Bit 7 */
     sfr_bitfield resv24 : 8; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P01_OMR_type;
typedef volatile union
{
	struct
	{
    /* w0 */ sfr_bitfield PS0 : 1; /* Set Bit 0 */
    /* w0 */ sfr_bitfield PS1 : 1; /* Set Bit 1 */
    /* w0 */ sfr_bitfield PS2 : 1; /* Set Bit 2 */
    /* w0 */ sfr_bitfield PS3 : 1; /* Set Bit 3 */
    /* w0 */ sfr_bitfield PS4 : 1; /* Set Bit 4 */
    /* w0 */ sfr_bitfield PS5 : 1; /* Set Bit 5 */
    /* w0 */ sfr_bitfield PS6 : 1; /* Set Bit 6 */
    /* w0 */ sfr_bitfield PS7 : 1; /* Set Bit 7 */
    /* w0 */ sfr_bitfield PS8 : 1; /* Set Bit 8 */
    /* w0 */ sfr_bitfield PS9 : 1; /* Set Bit 9 */
    /* w0 */ sfr_bitfield PS10 : 1; /* Set Bit 10 */
    /* w0 */ sfr_bitfield PS11 : 1; /* Set Bit 11 */
     sfr_bitfield resv12 : 4; /* reserved */
    /* w0 */ sfr_bitfield PCL0 : 1; /* Clear Bit 0 */
    /* w0 */ sfr_bitfield PCL1 : 1; /* Clear Bit 1 */
    /* w0 */ sfr_bitfield PCL2 : 1; /* Clear Bit 2 */
    /* w0 */ sfr_bitfield PCL3 : 1; /* Clear Bit 3 */
    /* w0 */ sfr_bitfield PCL4 : 1; /* Clear Bit 4 */
    /* w0 */ sfr_bitfield PCL5 : 1; /* Clear Bit 5 */
    /* w0 */ sfr_bitfield PCL6 : 1; /* Clear Bit 6 */
    /* w0 */ sfr_bitfield PCL7 : 1; /* Clear Bit 7 */
    /* w0 */ sfr_bitfield PCL8 : 1; /* Clear Bit 8 */
    /* w0 */ sfr_bitfield PCL9 : 1; /* Clear Bit 9 */
    /* w0 */ sfr_bitfield PCL10 : 1; /* Clear Bit 10 */
    /* w0 */ sfr_bitfield PCL11 : 1; /* Clear Bit 11 */
     sfr_bitfield resv28 : 4; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P02_OMR_type;
typedef volatile union
{
	struct
	{
    /* w0 */ sfr_bitfield PS0 : 1; /* Set Bit 0 */
    /* w0 */ sfr_bitfield PS1 : 1; /* Set Bit 1 */
    /* w0 */ sfr_bitfield PS2 : 1; /* Set Bit 2 */
    /* w0 */ sfr_bitfield PS3 : 1; /* Set Bit 3 */
     sfr_bitfield resv4 : 12; /* reserved */
    /* w0 */ sfr_bitfield PCL0 : 1; /* Clear Bit 0 */
    /* w0 */ sfr_bitfield PCL1 : 1; /* Clear Bit 1 */
    /* w0 */ sfr_bitfield PCL2 : 1; /* Clear Bit 2 */
    /* w0 */ sfr_bitfield PCL3 : 1; /* Clear Bit 3 */
     sfr_bitfield resv20 : 12; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_OMR_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield MODREV : 8; /* Module Revision Number */
    /* const */ sfr_bitfield MODTYPE : 8; /* Module Type */
    /* const */ sfr_bitfield MODNUMBER : 16; /* Module Number */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_ID_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 3; /* reserved */
     sfr_bitfield PC0 : 5; /* Port Control for Pin 0 */
     sfr_bitfield resv8 : 3; /* reserved */
     sfr_bitfield PC1 : 5; /* Port Control for Pin 1 */
     sfr_bitfield resv16 : 3; /* reserved */
     sfr_bitfield PC2 : 5; /* Port Control for Pin 2 */
     sfr_bitfield resv24 : 3; /* reserved */
     sfr_bitfield PC3 : 5; /* Port Control for Pin 3 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_IOCR0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 3; /* reserved */
     sfr_bitfield PC4 : 5; /* Port Control for Port 00 Pin 4 */
     sfr_bitfield resv8 : 3; /* reserved */
     sfr_bitfield PC5 : 5; /* Port Control for Port 00 Pin 5 */
     sfr_bitfield resv16 : 3; /* reserved */
     sfr_bitfield PC6 : 5; /* Port Control for Port 00 Pin 6 */
     sfr_bitfield resv24 : 3; /* reserved */
     sfr_bitfield PC7 : 5; /* Port Control for Port 00 Pin 7 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_IOCR4_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 3; /* reserved */
     sfr_bitfield PC4 : 5; /* Port Control for Port 23 Pin 4 */
     sfr_bitfield resv8 : 3; /* reserved */
     sfr_bitfield PC5 : 5; /* Port Control for Port 23 Pin 5 */
     sfr_bitfield resv16 : 3; /* reserved */
     sfr_bitfield PC6 : 5; /* Port Control for Port 23 Pin 6 */
     sfr_bitfield resv24 : 3; /* reserved */
     sfr_bitfield PC7 : 5; /* Port Control for Port 23 Pin 7 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P23_IOCR4_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 3; /* reserved */
     sfr_bitfield PC8 : 5; /* Port Control for Port 00 Pin 8 */
     sfr_bitfield resv8 : 3; /* reserved */
     sfr_bitfield PC9 : 5; /* Port Control for Port 00 Pin 9 */
     sfr_bitfield resv16 : 3; /* reserved */
     sfr_bitfield PC10 : 5; /* Port Control for Port 00 Pin 10 */
     sfr_bitfield resv24 : 3; /* reserved */
     sfr_bitfield PC11 : 5; /* Port Control for Port 00 Pin 11 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_IOCR8_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 3; /* reserved */
     sfr_bitfield PC12 : 5; /* Port Control for Port 00 Pin 12 */
     sfr_bitfield resv8 : 3; /* reserved */
     sfr_bitfield PC13 : 5; /* Port Control for Port 00 Pin 13 */
     sfr_bitfield resv16 : 3; /* reserved */
     sfr_bitfield PC14 : 5; /* Port Control for Port 00 Pin 14 */
     sfr_bitfield resv24 : 3; /* reserved */
     sfr_bitfield PC15 : 5; /* Port Control for Port 00 Pin 15 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_IOCR12_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield P0 : 1; /* Input Bit 0 */
    /* const */ sfr_bitfield P1 : 1; /* Input Bit 1 */
    /* const */ sfr_bitfield P2 : 1; /* Input Bit 2 */
    /* const */ sfr_bitfield P3 : 1; /* Input Bit 3 */
    /* const */ sfr_bitfield P4 : 1; /* Input Bit 4 */
    /* const */ sfr_bitfield P5 : 1; /* Input Bit 5 */
    /* const */ sfr_bitfield P6 : 1; /* Input Bit 6 */
    /* const */ sfr_bitfield P7 : 1; /* Input Bit 7 */
    /* const */ sfr_bitfield P8 : 1; /* Input Bit 8 */
    /* const */ sfr_bitfield P9 : 1; /* Input Bit 9 */
    /* const */ sfr_bitfield P10 : 1; /* Input Bit 10 */
    /* const */ sfr_bitfield P11 : 1; /* Input Bit 11 */
    /* const */ sfr_bitfield P12 : 1; /* Input Bit 12 */
    /* const */ sfr_bitfield P13 : 1; /* Input Bit 13 */
    /* const */ sfr_bitfield P14 : 1; /* Input Bit 14 */
    /* const */ sfr_bitfield P15 : 1; /* Input Bit 15 */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_IN_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield P0 : 1; /* Input Bit 0 */
    /* const */ sfr_bitfield P1 : 1; /* Input Bit 1 */
    /* const */ sfr_bitfield P2 : 1; /* Input Bit 2 */
    /* const */ sfr_bitfield P3 : 1; /* Input Bit 3 */
    /* const */ sfr_bitfield P4 : 1; /* Input Bit 4 */
    /* const */ sfr_bitfield P5 : 1; /* Input Bit 5 */
    /* const */ sfr_bitfield P6 : 1; /* Input Bit 6 */
    /* const */ sfr_bitfield P7 : 1; /* Input Bit 7 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P01_IN_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield P0 : 1; /* Input Bit 0 */
    /* const */ sfr_bitfield P1 : 1; /* Input Bit 1 */
    /* const */ sfr_bitfield P2 : 1; /* Input Bit 2 */
    /* const */ sfr_bitfield P3 : 1; /* Input Bit 3 */
    /* const */ sfr_bitfield P4 : 1; /* Input Bit 4 */
    /* const */ sfr_bitfield P5 : 1; /* Input Bit 5 */
    /* const */ sfr_bitfield P6 : 1; /* Input Bit 6 */
    /* const */ sfr_bitfield P7 : 1; /* Input Bit 7 */
    /* const */ sfr_bitfield P8 : 1; /* Input Bit 8 */
    /* const */ sfr_bitfield P9 : 1; /* Input Bit 9 */
    /* const */ sfr_bitfield P10 : 1; /* Input Bit 10 */
    /* const */ sfr_bitfield P11 : 1; /* Input Bit 11 */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P02_IN_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield P0 : 1; /* Input Bit 0 */
    /* const */ sfr_bitfield P1 : 1; /* Input Bit 1 */
    /* const */ sfr_bitfield P2 : 1; /* Input Bit 2 */
    /* const */ sfr_bitfield P3 : 1; /* Input Bit 3 */
     sfr_bitfield resv4 : 28; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_IN_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PD0 : 2; /* Pad Driver Mode for Pin 0 */
     sfr_bitfield PL0 : 2; /* Pad Level Selection for Pin 0 */
     sfr_bitfield PD1 : 2; /* Pad Driver Mode for Pin 1 */
     sfr_bitfield PL1 : 2; /* Pad Level Selection for Pin 1 */
     sfr_bitfield PD2 : 2; /* Pad Driver Mode for Pin 2 */
     sfr_bitfield PL2 : 2; /* Pad Level Selection for Pin 2 */
     sfr_bitfield PD3 : 2; /* Pad Driver Mode for Pin 3 */
     sfr_bitfield PL3 : 2; /* Pad Level Selection for Pin 3 */
     sfr_bitfield PD4 : 2; /* Pad Driver Mode for Pin 4 */
     sfr_bitfield PL4 : 2; /* Pad Level Selection for Pin 4 */
     sfr_bitfield PD5 : 2; /* Pad Driver Mode for Pin 5 */
     sfr_bitfield PL5 : 2; /* Pad Level Selection for Pin 5 */
     sfr_bitfield PD6 : 2; /* Pad Driver Mode for Pin 6 */
     sfr_bitfield PL6 : 2; /* Pad Level Selection for Pin 6 */
     sfr_bitfield PD7 : 2; /* Pad Driver Mode for Pin 7 */
     sfr_bitfield PL7 : 2; /* Pad Level Selection for Pin 7 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_PDR0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PD0 : 2; /* Pad Driver Mode for Pin 0 */
     sfr_bitfield PL0 : 2; /* Pad Level Selection for Pin 0 */
     sfr_bitfield PD1 : 2; /* Pad Driver Mode for Pin 1 */
     sfr_bitfield PL1 : 2; /* Pad Level Selection for Pin 1 */
     sfr_bitfield PD2 : 2; /* Pad Driver Mode for Pin 2 */
     sfr_bitfield PL2 : 2; /* Pad Level Selection for Pin 2 */
     sfr_bitfield PD3 : 2; /* Pad Driver Mode for Pin 3 */
     sfr_bitfield PL3 : 2; /* Pad Level Selection for Pin 3 */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_PDR0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PD8 : 2; /* Pad Driver Mode for Pin 8 */
     sfr_bitfield PL8 : 2; /* Pad Level Selection for Pin 8 */
     sfr_bitfield PD9 : 2; /* Pad Driver Mode for Pin 9 */
     sfr_bitfield PL9 : 2; /* Pad Level Selection for Pin 9 */
     sfr_bitfield PD10 : 2; /* Pad Driver Mode for Pin 10 */
     sfr_bitfield PL10 : 2; /* Pad Level Selection for Pin 10 */
     sfr_bitfield PD11 : 2; /* Pad Driver Mode for Pin 11 */
     sfr_bitfield PL11 : 2; /* Pad Level Selection for Pin 11 */
     sfr_bitfield PD12 : 2; /* Pad Driver Mode for Pin 12 */
     sfr_bitfield PL12 : 2; /* Pad Level Selection for Pin 12 */
     sfr_bitfield PD13 : 2; /* Pad Driver Mode for Pin 13 */
     sfr_bitfield PL13 : 2; /* Pad Level Selection for Pin 13 */
     sfr_bitfield PD14 : 2; /* Pad Driver Mode for Pin 14 */
     sfr_bitfield PL14 : 2; /* Pad Level Selection for Pin 14 */
     sfr_bitfield PD15 : 2; /* Pad Driver Mode for Pin 15 */
     sfr_bitfield PL15 : 2; /* Pad Level Selection for Pin 15 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_PDR1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PD8 : 2; /* Pad Driver Mode for Pin 8 */
     sfr_bitfield PL8 : 2; /* Pad Level Selection for Pin 8 */
     sfr_bitfield PD9 : 2; /* Pad Driver Mode for Pin 9 */
     sfr_bitfield PL9 : 2; /* Pad Level Selection for Pin 9 */
     sfr_bitfield PD10 : 2; /* Pad Driver Mode for Pin 10 */
     sfr_bitfield PL10 : 2; /* Pad Level Selection for Pin 10 */
     sfr_bitfield PD11 : 2; /* Pad Driver Mode for Pin 11 */
     sfr_bitfield PL11 : 2; /* Pad Level Selection for Pin 11 */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P02_PDR1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN0 : 1; /* Emergency Stop Enable for Pin 0 */
     sfr_bitfield EN1 : 1; /* Emergency Stop Enable for Pin 1 */
     sfr_bitfield EN2 : 1; /* Emergency Stop Enable for Pin 2 */
     sfr_bitfield EN3 : 1; /* Emergency Stop Enable for Pin 3 */
     sfr_bitfield EN4 : 1; /* Emergency Stop Enable for Pin 4 */
     sfr_bitfield EN5 : 1; /* Emergency Stop Enable for Pin 5 */
     sfr_bitfield EN6 : 1; /* Emergency Stop Enable for Pin 6 */
     sfr_bitfield EN7 : 1; /* Emergency Stop Enable for Pin 7 */
     sfr_bitfield EN8 : 1; /* Emergency Stop Enable for Pin 8 */
     sfr_bitfield EN9 : 1; /* Emergency Stop Enable for Pin 9 */
     sfr_bitfield EN10 : 1; /* Emergency Stop Enable for Pin 10 */
     sfr_bitfield EN11 : 1; /* Emergency Stop Enable for Pin 11 */
     sfr_bitfield EN12 : 1; /* Emergency Stop Enable for Pin 12 */
     sfr_bitfield EN13 : 1; /* Emergency Stop Enable for Pin 13 */
     sfr_bitfield EN14 : 1; /* Emergency Stop Enable for Pin 14 */
     sfr_bitfield EN15 : 1; /* Emergency Stop Enable for Pin 15 */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_ESR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN0 : 1; /* Emergency Stop Enable for Pin 0 */
     sfr_bitfield EN1 : 1; /* Emergency Stop Enable for Pin 1 */
     sfr_bitfield EN2 : 1; /* Emergency Stop Enable for Pin 2 */
     sfr_bitfield EN3 : 1; /* Emergency Stop Enable for Pin 3 */
     sfr_bitfield EN4 : 1; /* Emergency Stop Enable for Pin 4 */
     sfr_bitfield EN5 : 1; /* Emergency Stop Enable for Pin 5 */
     sfr_bitfield EN6 : 1; /* Emergency Stop Enable for Pin 6 */
     sfr_bitfield EN7 : 1; /* Emergency Stop Enable for Pin 7 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P01_ESR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN0 : 1; /* Emergency Stop Enable for Pin 0 */
     sfr_bitfield EN1 : 1; /* Emergency Stop Enable for Pin 1 */
     sfr_bitfield EN2 : 1; /* Emergency Stop Enable for Pin 2 */
     sfr_bitfield EN3 : 1; /* Emergency Stop Enable for Pin 3 */
     sfr_bitfield EN4 : 1; /* Emergency Stop Enable for Pin 4 */
     sfr_bitfield EN5 : 1; /* Emergency Stop Enable for Pin 5 */
     sfr_bitfield EN6 : 1; /* Emergency Stop Enable for Pin 6 */
     sfr_bitfield EN7 : 1; /* Emergency Stop Enable for Pin 7 */
     sfr_bitfield EN8 : 1; /* Emergency Stop Enable for Pin 8 */
     sfr_bitfield EN9 : 1; /* Emergency Stop Enable for Pin 9 */
     sfr_bitfield EN10 : 1; /* Emergency Stop Enable for Pin 10 */
     sfr_bitfield EN11 : 1; /* Emergency Stop Enable for Pin 11 */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P02_ESR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN0 : 1; /* Emergency Stop Enable for Pin 0 */
     sfr_bitfield EN1 : 1; /* Emergency Stop Enable for Pin 1 */
     sfr_bitfield EN2 : 1; /* Emergency Stop Enable for Pin 2 */
     sfr_bitfield EN3 : 1; /* Emergency Stop Enable for Pin 3 */
     sfr_bitfield resv4 : 28; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_ESR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN0 : 1; /* Emergency Stop Enable for Pin 0 */
     sfr_bitfield EN1 : 1; /* Emergency Stop Enable for Pin 1 */
     sfr_bitfield resv2 : 1; /* reserved */
     sfr_bitfield EN3 : 1; /* Emergency Stop Enable for Pin 3 */
     sfr_bitfield EN4 : 1; /* Emergency Stop Enable for Pin 4 */
     sfr_bitfield EN5 : 1; /* Emergency Stop Enable for Pin 5 */
     sfr_bitfield EN6 : 1; /* Emergency Stop Enable for Pin 6 */
     sfr_bitfield EN7 : 1; /* Emergency Stop Enable for Pin 7 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P21_ESR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN0 : 1; /* Emergency Stop Enable for Pin 0 */
     sfr_bitfield EN1 : 1; /* Emergency Stop Enable for Pin 1 */
     sfr_bitfield EN2 : 1; /* Emergency Stop Enable for Pin 2 */
     sfr_bitfield EN3 : 1; /* Emergency Stop Enable for Pin 3 */
     sfr_bitfield EN4 : 1; /* Emergency Stop Enable for Pin 4 */
     sfr_bitfield EN5 : 1; /* Emergency Stop Enable for Pin 5 */
     sfr_bitfield EN6 : 1; /* Emergency Stop Enable for Pin 6 */
     sfr_bitfield EN7 : 1; /* Emergency Stop Enable for Pin 7 */
     sfr_bitfield resv8 : 1; /* reserved */
     sfr_bitfield EN9 : 1; /* Emergency Stop Enable for Pin 9 */
     sfr_bitfield EN10 : 1; /* Emergency Stop Enable for Pin 10 */
     sfr_bitfield EN11 : 1; /* Emergency Stop Enable for Pin 11 */
     sfr_bitfield EN12 : 1; /* Emergency Stop Enable for Pin 12 */
     sfr_bitfield EN13 : 1; /* Emergency Stop Enable for Pin 13 */
     sfr_bitfield EN14 : 1; /* Emergency Stop Enable for Pin 14 */
     sfr_bitfield EN15 : 1; /* Emergency Stop Enable for Pin 15 */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P33_ESR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PDIS0 : 1; /* Pin Function Decision Control for Pin 0 */
     sfr_bitfield PDIS1 : 1; /* Pin Function Decision Control for Pin 1 */
     sfr_bitfield PDIS2 : 1; /* Pin Function Decision Control for Pin 2 */
     sfr_bitfield PDIS3 : 1; /* Pin Function Decision Control for Pin 3 */
     sfr_bitfield PDIS4 : 1; /* Pin Function Decision Control for Pin 4 */
     sfr_bitfield PDIS5 : 1; /* Pin Function Decision Control for Pin 5 */
     sfr_bitfield PDIS6 : 1; /* Pin Function Decision Control for Pin 6 */
     sfr_bitfield PDIS7 : 1; /* Pin Function Decision Control for Pin 7 */
     sfr_bitfield PDIS8 : 1; /* Pin Function Decision Control for Pin 8 */
     sfr_bitfield PDIS9 : 1; /* Pin Function Decision Control for Pin 9 */
     sfr_bitfield PDIS10 : 1; /* Pin Function Decision Control for Pin 10 */
     sfr_bitfield PDIS11 : 1; /* Pin Function Decision Control for Pin 11 */
     sfr_bitfield PDIS12 : 1; /* Pin Function Decision Control for Pin 12 */
     sfr_bitfield PDIS13 : 1; /* Pin Function Decision Control for Pin 13 */
     sfr_bitfield PDIS14 : 1; /* Pin Function Decision Control for Pin 14 */
     sfr_bitfield PDIS15 : 1; /* Pin Function Decision Control for Pin 15 */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_PDISC_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PDIS0 : 1; /* Pin Function Decision Control for Pin 0 */
     sfr_bitfield PDIS1 : 1; /* Pin Function Decision Control for Pin 1 */
     sfr_bitfield PDIS2 : 1; /* Pin Function Decision Control for Pin 2 */
     sfr_bitfield PDIS3 : 1; /* Pin Function Decision Control for Pin 3 */
     sfr_bitfield PDIS4 : 1; /* Pin Function Decision Control for Pin 4 */
     sfr_bitfield PDIS5 : 1; /* Pin Function Decision Control for Pin 5 */
     sfr_bitfield PDIS6 : 1; /* Pin Function Decision Control for Pin 6 */
     sfr_bitfield PDIS7 : 1; /* Pin Function Decision Control for Pin 7 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P01_PDISC_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PDIS0 : 1; /* Pin Function Decision Control for Pin 0 */
     sfr_bitfield PDIS1 : 1; /* Pin Function Decision Control for Pin 1 */
     sfr_bitfield PDIS2 : 1; /* Pin Function Decision Control for Pin 2 */
     sfr_bitfield PDIS3 : 1; /* Pin Function Decision Control for Pin 3 */
     sfr_bitfield PDIS4 : 1; /* Pin Function Decision Control for Pin 4 */
     sfr_bitfield PDIS5 : 1; /* Pin Function Decision Control for Pin 5 */
     sfr_bitfield PDIS6 : 1; /* Pin Function Decision Control for Pin 6 */
     sfr_bitfield PDIS7 : 1; /* Pin Function Decision Control for Pin 7 */
     sfr_bitfield PDIS8 : 1; /* Pin Function Decision Control for Pin 8 */
     sfr_bitfield PDIS9 : 1; /* Pin Function Decision Control for Pin 9 */
     sfr_bitfield PDIS10 : 1; /* Pin Function Decision Control for Pin 10 */
     sfr_bitfield PDIS11 : 1; /* Pin Function Decision Control for Pin 11 */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P02_PDISC_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PDIS0 : 1; /* Pin Function Decision Control for Pin 0 */
     sfr_bitfield PDIS1 : 1; /* Pin Function Decision Control for Pin 1 */
     sfr_bitfield PDIS2 : 1; /* Pin Function Decision Control for Pin 2 */
     sfr_bitfield PDIS3 : 1; /* Pin Function Decision Control for Pin 3 */
     sfr_bitfield resv4 : 28; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_PDISC_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 10; /* reserved */
     sfr_bitfield SEL10 : 1; /* Output Select for Pin 10 */
     sfr_bitfield SEL11 : 1; /* Output Select for Pin 11 */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_PCSR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield SEL0 : 1; /* Output Select for Pin 0 */
     sfr_bitfield SEL1 : 1; /* Output Select for Pin 1 */
     sfr_bitfield SEL2 : 1; /* Output Select for Pin 2 */
     sfr_bitfield SEL3 : 1; /* Output Select for Pin 3 */
     sfr_bitfield SEL4 : 1; /* Output Select for Pin 4 */
     sfr_bitfield resv5 : 1; /* reserved */
     sfr_bitfield SEL6 : 1; /* Output Select for Pin 6 */
     sfr_bitfield resv7 : 25; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P11_PCSR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield SEL0 : 1; /* Output Select for Pin 0 */
     sfr_bitfield SEL1 : 1; /* Output Select for Pin 1 */
     sfr_bitfield SEL2 : 1; /* Output Select for Pin 2 */
     sfr_bitfield SEL3 : 1; /* Output Select for Pin 3 */
     sfr_bitfield SEL4 : 1; /* Output Select for Pin 4 */
     sfr_bitfield SEL5 : 1; /* Output Select for Pin 5 */
     sfr_bitfield SEL6 : 1; /* Output Select for Pin 6 */
     sfr_bitfield SEL7 : 1; /* Output Select for Pin 7 */
     sfr_bitfield SEL8 : 1; /* Output Select for Pin 8 */
     sfr_bitfield SEL9 : 1; /* Output Select for Pin 9 */
     sfr_bitfield SEL10 : 1; /* Output Select for Pin 10 */
     sfr_bitfield SEL11 : 1; /* Output Select for Pin 11 */
     sfr_bitfield SEL12 : 1; /* Output Select for Pin 12 */
     sfr_bitfield SEL13 : 1; /* Output Select for Pin 13 */
     sfr_bitfield SEL14 : 1; /* Output Select for Pin 14 */
     sfr_bitfield SEL15 : 1; /* Output Select for Pin 15 */
     sfr_bitfield resv16 : 15; /* reserved */
    /* const */ sfr_bitfield LCK : 1; /* Lock Status */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P33_PCSR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
     sfr_bitfield SEL1 : 1; /* Output Select for Pin 1 */
     sfr_bitfield resv2 : 29; /* reserved */
    /* const */ sfr_bitfield LCK : 1; /* Lock Status */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P34_PCSR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
     sfr_bitfield SEL1 : 1; /* Output Select for Pin 1 */
     sfr_bitfield SEL2 : 1; /* Output Select for Pin 2 */
     sfr_bitfield SEL3 : 1; /* Output Select for Pin 3 */
     sfr_bitfield resv4 : 1; /* reserved */
     sfr_bitfield SEL5 : 1; /* Output Select for Pin 5 */
     sfr_bitfield resv6 : 4; /* reserved */
     sfr_bitfield SEL10 : 1; /* Output Select for Pin 10 */
     sfr_bitfield SEL11 : 1; /* Output Select for Pin 11 */
     sfr_bitfield SEL12 : 1; /* Output Select for Pin 12 */
     sfr_bitfield resv13 : 19; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P40_PCSR_type;
typedef volatile union
{
	struct
	{
    /* w0 */ sfr_bitfield PS0 : 1; /* Set Bit 0 */
    /* w0 */ sfr_bitfield PS1 : 1; /* Set Bit 1 */
    /* w0 */ sfr_bitfield PS2 : 1; /* Set Bit 2 */
    /* w0 */ sfr_bitfield PS3 : 1; /* Set Bit 3 */
     sfr_bitfield resv4 : 28; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMSR0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 4; /* reserved */
    /* w0 */ sfr_bitfield PS4 : 1; /* Set Bit 4 */
    /* w0 */ sfr_bitfield PS5 : 1; /* Set Bit 5 */
    /* w0 */ sfr_bitfield PS6 : 1; /* Set Bit 6 */
    /* w0 */ sfr_bitfield PS7 : 1; /* Set Bit 7 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMSR4_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 8; /* reserved */
    /* w0 */ sfr_bitfield PS8 : 1; /* Set Bit 8 */
    /* w0 */ sfr_bitfield PS9 : 1; /* Set Bit 9 */
    /* w0 */ sfr_bitfield PS10 : 1; /* Set Bit 10 */
    /* w0 */ sfr_bitfield PS11 : 1; /* Set Bit 11 */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMSR8_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 12; /* reserved */
    /* w0 */ sfr_bitfield PS12 : 1; /* Set Bit 12 */
    /* w0 */ sfr_bitfield PS13 : 1; /* Set Bit 13 */
    /* w0 */ sfr_bitfield PS14 : 1; /* Set Bit 14 */
    /* w0 */ sfr_bitfield PS15 : 1; /* Set Bit 15 */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMSR12_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 16; /* reserved */
    /* w0 */ sfr_bitfield PCL0 : 1; /* Clear Bit 0 */
    /* w0 */ sfr_bitfield PCL1 : 1; /* Clear Bit 1 */
    /* w0 */ sfr_bitfield PCL2 : 1; /* Clear Bit 2 */
    /* w0 */ sfr_bitfield PCL3 : 1; /* Clear Bit 3 */
     sfr_bitfield resv20 : 12; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMCR0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 20; /* reserved */
    /* w0 */ sfr_bitfield PCL4 : 1; /* Clear Bit 4 */
    /* w0 */ sfr_bitfield PCL5 : 1; /* Clear Bit 5 */
    /* w0 */ sfr_bitfield PCL6 : 1; /* Clear Bit 6 */
    /* w0 */ sfr_bitfield PCL7 : 1; /* Clear Bit 7 */
     sfr_bitfield resv24 : 8; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMCR4_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 24; /* reserved */
    /* w0 */ sfr_bitfield PCL8 : 1; /* Clear Bit 8 */
    /* w0 */ sfr_bitfield PCL9 : 1; /* Clear Bit 9 */
    /* w0 */ sfr_bitfield PCL10 : 1; /* Clear Bit 10 */
    /* w0 */ sfr_bitfield PCL11 : 1; /* Clear Bit 11 */
     sfr_bitfield resv28 : 4; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMCR8_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 28; /* reserved */
    /* w0 */ sfr_bitfield PCL12 : 1; /* Clear Bit 12 */
    /* w0 */ sfr_bitfield PCL13 : 1; /* Clear Bit 13 */
    /* w0 */ sfr_bitfield PCL14 : 1; /* Clear Bit 14 */
    /* w0 */ sfr_bitfield PCL15 : 1; /* Clear Bit 15 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMCR12_type;
typedef volatile union
{
	struct
	{
    /* w0 */ sfr_bitfield PS0 : 1; /* Set Bit 0 */
    /* w0 */ sfr_bitfield PS1 : 1; /* Set Bit 1 */
    /* w0 */ sfr_bitfield PS2 : 1; /* Set Bit 2 */
    /* w0 */ sfr_bitfield PS3 : 1; /* Set Bit 3 */
    /* w0 */ sfr_bitfield PS4 : 1; /* Set Bit 4 */
    /* w0 */ sfr_bitfield PS5 : 1; /* Set Bit 5 */
    /* w0 */ sfr_bitfield PS6 : 1; /* Set Bit 6 */
    /* w0 */ sfr_bitfield PS7 : 1; /* Set Bit 7 */
    /* w0 */ sfr_bitfield PS8 : 1; /* Set Bit 8 */
    /* w0 */ sfr_bitfield PS9 : 1; /* Set Bit 9 */
    /* w0 */ sfr_bitfield PS10 : 1; /* Set Bit 10 */
    /* w0 */ sfr_bitfield PS11 : 1; /* Set Bit 11 */
    /* w0 */ sfr_bitfield PS12 : 1; /* Set Bit 12 */
    /* w0 */ sfr_bitfield PS13 : 1; /* Set Bit 13 */
    /* w0 */ sfr_bitfield PS14 : 1; /* Set Bit 14 */
    /* w0 */ sfr_bitfield PS15 : 1; /* Set Bit 15 */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMSR_type;
typedef volatile union
{
	struct
	{
    /* w0 */ sfr_bitfield PS0 : 1; /* Set Bit 0 */
    /* w0 */ sfr_bitfield PS1 : 1; /* Set Bit 1 */
    /* w0 */ sfr_bitfield PS2 : 1; /* Set Bit 2 */
    /* w0 */ sfr_bitfield PS3 : 1; /* Set Bit 3 */
    /* w0 */ sfr_bitfield PS4 : 1; /* Set Bit 4 */
    /* w0 */ sfr_bitfield PS5 : 1; /* Set Bit 5 */
    /* w0 */ sfr_bitfield PS6 : 1; /* Set Bit 6 */
    /* w0 */ sfr_bitfield PS7 : 1; /* Set Bit 7 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P01_OMSR_type;
typedef volatile union
{
	struct
	{
    /* w0 */ sfr_bitfield PS0 : 1; /* Set Bit 0 */
    /* w0 */ sfr_bitfield PS1 : 1; /* Set Bit 1 */
    /* w0 */ sfr_bitfield PS2 : 1; /* Set Bit 2 */
    /* w0 */ sfr_bitfield PS3 : 1; /* Set Bit 3 */
    /* w0 */ sfr_bitfield PS4 : 1; /* Set Bit 4 */
    /* w0 */ sfr_bitfield PS5 : 1; /* Set Bit 5 */
    /* w0 */ sfr_bitfield PS6 : 1; /* Set Bit 6 */
    /* w0 */ sfr_bitfield PS7 : 1; /* Set Bit 7 */
    /* w0 */ sfr_bitfield PS8 : 1; /* Set Bit 8 */
    /* w0 */ sfr_bitfield PS9 : 1; /* Set Bit 9 */
    /* w0 */ sfr_bitfield PS10 : 1; /* Set Bit 10 */
    /* w0 */ sfr_bitfield PS11 : 1; /* Set Bit 11 */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P02_OMSR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 16; /* reserved */
    /* w0 */ sfr_bitfield PCL0 : 1; /* Clear Bit 0 */
    /* w0 */ sfr_bitfield PCL1 : 1; /* Clear Bit 1 */
    /* w0 */ sfr_bitfield PCL2 : 1; /* Clear Bit 2 */
    /* w0 */ sfr_bitfield PCL3 : 1; /* Clear Bit 3 */
    /* w0 */ sfr_bitfield PCL4 : 1; /* Clear Bit 4 */
    /* w0 */ sfr_bitfield PCL5 : 1; /* Clear Bit 5 */
    /* w0 */ sfr_bitfield PCL6 : 1; /* Clear Bit 6 */
    /* w0 */ sfr_bitfield PCL7 : 1; /* Clear Bit 7 */
    /* w0 */ sfr_bitfield PCL8 : 1; /* Clear Bit 8 */
    /* w0 */ sfr_bitfield PCL9 : 1; /* Clear Bit 9 */
    /* w0 */ sfr_bitfield PCL10 : 1; /* Clear Bit 10 */
    /* w0 */ sfr_bitfield PCL11 : 1; /* Clear Bit 11 */
    /* w0 */ sfr_bitfield PCL12 : 1; /* Clear Bit 12 */
    /* w0 */ sfr_bitfield PCL13 : 1; /* Clear Bit 13 */
    /* w0 */ sfr_bitfield PCL14 : 1; /* Clear Bit 14 */
    /* w0 */ sfr_bitfield PCL15 : 1; /* Clear Bit 15 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMCR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 16; /* reserved */
    /* w0 */ sfr_bitfield PCL0 : 1; /* Clear Bit 0 */
    /* w0 */ sfr_bitfield PCL1 : 1; /* Clear Bit 1 */
    /* w0 */ sfr_bitfield PCL2 : 1; /* Clear Bit 2 */
    /* w0 */ sfr_bitfield PCL3 : 1; /* Clear Bit 3 */
    /* w0 */ sfr_bitfield PCL4 : 1; /* Clear Bit 4 */
    /* w0 */ sfr_bitfield PCL5 : 1; /* Clear Bit 5 */
    /* w0 */ sfr_bitfield PCL6 : 1; /* Clear Bit 6 */
    /* w0 */ sfr_bitfield PCL7 : 1; /* Clear Bit 7 */
     sfr_bitfield resv24 : 8; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P01_OMCR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 16; /* reserved */
    /* w0 */ sfr_bitfield PCL0 : 1; /* Clear Bit 0 */
    /* w0 */ sfr_bitfield PCL1 : 1; /* Clear Bit 1 */
    /* w0 */ sfr_bitfield PCL2 : 1; /* Clear Bit 2 */
    /* w0 */ sfr_bitfield PCL3 : 1; /* Clear Bit 3 */
    /* w0 */ sfr_bitfield PCL4 : 1; /* Clear Bit 4 */
    /* w0 */ sfr_bitfield PCL5 : 1; /* Clear Bit 5 */
    /* w0 */ sfr_bitfield PCL6 : 1; /* Clear Bit 6 */
    /* w0 */ sfr_bitfield PCL7 : 1; /* Clear Bit 7 */
    /* w0 */ sfr_bitfield PCL8 : 1; /* Clear Bit 8 */
    /* w0 */ sfr_bitfield PCL9 : 1; /* Clear Bit 9 */
    /* w0 */ sfr_bitfield PCL10 : 1; /* Clear Bit 10 */
    /* w0 */ sfr_bitfield PCL11 : 1; /* Clear Bit 11 */
     sfr_bitfield resv28 : 4; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P02_OMCR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 7; /* reserved */
     sfr_bitfield PS : 1; /* Pad Supply Selection */
     sfr_bitfield TEN_CTRL : 1; /* LVDS TX_EN controller */
     sfr_bitfield TX_EN : 1; /* Enable Transmit LVDS */
     sfr_bitfield VDIFFADJ : 2; /* LVDS Output Amplitude Tuning */
     sfr_bitfield VOSDYN : 1; /* Tune Bit of VOS Control Loop Static/Dynamic */
     sfr_bitfield VOSEXT : 1; /* Tune Bit of VOS Control Loop Internal/External */
     sfr_bitfield TX_PD : 1; /* LVDS Power Down */
     sfr_bitfield TX_PWDPD : 1; /* Enable TX Power down pull down. */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P13_LPCR0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield REN_CTRL : 1; /* LVDS RX_EN controller */
     sfr_bitfield RX_EN : 1; /* Enable Receive LVDS */
     sfr_bitfield TERM : 1; /* Select Receiver Termination Mode */
     sfr_bitfield LRXTERM : 3; /* LVDS RX Poly-resistor configuration value */
     sfr_bitfield LVDSM : 1; /* LVDS-M Mode */
     sfr_bitfield PS : 1; /* Pad Supply Selection */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P14_LPCR5_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CCTRIG0 : 1; /* Capture Compare Trigger 0 */
     sfr_bitfield resv1 : 1; /* reserved */
     sfr_bitfield RAMINTM : 2; /* RAM Integrity Modify */
     sfr_bitfield SETLUDIS : 1; /* Set Latch Update Disable */
     sfr_bitfield resv5 : 3; /* reserved */
     sfr_bitfield DDC : 1; /* Disable DXCPL */
     sfr_bitfield resv9 : 23; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SYSCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield POL : 1; /* Input Polarity */
     sfr_bitfield MODE : 1; /* Mode Selection */
     sfr_bitfield ENON : 1; /* Enable ON */
     sfr_bitfield PSEL : 1; /* PORT Select */
     sfr_bitfield resv4 : 12; /* reserved */
    /* const */ sfr_bitfield EMSF : 1; /* Emergency Stop Flag */
    /* const */ sfr_bitfield SEMSF : 1; /* SMU Emergency Stop Flag */
     sfr_bitfield resv18 : 14; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EMSR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 24; /* reserved */
     sfr_bitfield EMSFM : 2; /* Emergency Stop Flag Modification */
     sfr_bitfield SEMSFM : 2; /* SMU Emergency Stop Flag Modification */
     sfr_bitfield resv28 : 4; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EMSSW_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 16; /* reserved */
    /* const */ sfr_bitfield LS0 : 1; /* Lockstep Mode Status */
     sfr_bitfield resv17 : 14; /* reserved */
     sfr_bitfield LSEN0 : 1; /* Lockstep Enable */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LCLCON0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 16; /* reserved */
    /* const */ sfr_bitfield LS1 : 1; /* Lockstep Mode Status */
     sfr_bitfield resv17 : 14; /* reserved */
     sfr_bitfield LSEN1 : 1; /* Lockstep Enable */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LCLCON1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield LCLT0 : 1; /* LCL0 Lockstep Test */
     sfr_bitfield LCLT1 : 1; /* LCL1 Lockstep Test */
     sfr_bitfield LCLT2 : 1; /* LCL2 Lockstep Test */
     sfr_bitfield resv3 : 13; /* reserved */
     sfr_bitfield PLCLT0 : 1; /* PFI0 Lockstep Test */
     sfr_bitfield PLCLT1 : 1; /* PFI1 Lockstep Test */
     sfr_bitfield PLCLT2 : 1; /* PFI2 Lockstep Test */
     sfr_bitfield resv19 : 13; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LCLTEST_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield CHREV : 6; /* Chip Revision Number */
    /* const */ sfr_bitfield CHTEC : 2; /* Chip Family */
     sfr_bitfield CHPK : 4; /* Chip Package */
     sfr_bitfield CHID : 4; /* Chip Product */
    /* const */ sfr_bitfield EEA : 1; /* Emulation or ADAS Extension Available */
     sfr_bitfield UCODE : 7; /* microcode Version */
     sfr_bitfield FSIZE : 4; /* Program Flash Size */
     sfr_bitfield VART : 3; /* Variant */
     sfr_bitfield SEC : 1; /* Security Device Available */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CHIPID_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield DEPT : 5; /* Department Identification Number */
    /* const */ sfr_bitfield MANUF : 11; /* Manufacturer Identification Number */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_MANID_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ADDRCFG : 2; /* Address Configuration */
     sfr_bitfield Spare : 14; /* Spare address configuration registers */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SWAPCTRL_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield LBISTREQ : 1; /* LBIST Request */
     sfr_bitfield LBISTRES : 1; /* LBIST-Reset- LBISTRES */
     sfr_bitfield PATTERNS : 18; /* LBIST Pattern Number */
     sfr_bitfield resv20 : 8; /* reserved */
    /* const */ sfr_bitfield LBISTDONE : 1; /* LBIST Execution Indicator */
     sfr_bitfield resv29 : 1; /* reserved */
     sfr_bitfield LBISTERRINJ : 1; /* LBIST / Test-Mode Alarm Error Injection */
     sfr_bitfield LBISTREQRED : 1; /* LBIST Request Redundancy */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LBISTCTRL0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield SEED : 19; /* LBIST Seed */
     sfr_bitfield resv19 : 5; /* reserved */
     sfr_bitfield SPLITSH : 3; /* LBIST Split-Shift Selection */
     sfr_bitfield BODY : 1; /* Body Application Indicator */
     sfr_bitfield LBISTFREQU : 4; /* LBIST Frequency Selection */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LBISTCTRL1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield LENGTH : 12; /* LBIST Maximum Scan-Chain Length */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LBISTCTRL2_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield SIGNATURE : 32; /* LBIST Signature */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LBISTCTRL3_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield MEM : 32; /* Memory */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_STMEM1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield OVEN0 : 1; /* Overlay Enable 0 */
     sfr_bitfield OVEN1 : 1; /* Overlay Enable 1 (If product has CPU1) */
     sfr_bitfield OVEN2 : 1; /* Overlay Enable 2 (If product has CPU2) */
     sfr_bitfield resv3 : 29; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_OVCENABLE_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CSEL0 : 1; /* CPU Select 0 */
     sfr_bitfield CSEL1 : 1; /* CPU Select 1 (If product has CPU1) */
     sfr_bitfield CSEL2 : 1; /* CPU Select 2 (If product has CPU2) */
     sfr_bitfield resv3 : 13; /* reserved */
     sfr_bitfield OVSTRT : 1; /* Overlay Start */
     sfr_bitfield OVSTP : 1; /* Overlay Stop */
     sfr_bitfield DCINVAL : 1; /* Data Cache Invalidate */
     sfr_bitfield resv19 : 5; /* reserved */
     sfr_bitfield OVCONF : 1; /* Overlay Configured */
     sfr_bitfield POVCONF : 1; /* Write Protection for OVCONF */
     sfr_bitfield resv26 : 6; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_OVCCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield FILRQ0A : 1; /* Filter Enable for REQ0A */
     sfr_bitfield FILRQ5A : 1; /* Filter Enable for REQ5A */
     sfr_bitfield FILRQ2A : 1; /* Filter Enable for REQ2A */
     sfr_bitfield FILRQ3A : 1; /* Filter Enable for REQ3A */
     sfr_bitfield FILRQ0C : 1; /* Filter Enable for REQ0C */
     sfr_bitfield FILRQ1C : 1; /* Filter Enable for REQ1C */
     sfr_bitfield FILRQ3C : 1; /* Filter Enable for REQ3C */
     sfr_bitfield FILRQ2C : 1; /* Filter Enable for REQ2C */
     sfr_bitfield FILRQ4A : 1; /* Filter Enable for REQ4A */
     sfr_bitfield FILRQ6A : 1; /* Filter Enable for REQ6A */
     sfr_bitfield FILRQ1A : 1; /* Filter Enable for REQ1A */
     sfr_bitfield FILRQ7A : 1; /* Filter Enable for REQ7A */
     sfr_bitfield FILRQ6D : 1; /* Filter Enable for REQ6D */
     sfr_bitfield FILRQ4D : 1; /* Filter Enable for REQ4D */
     sfr_bitfield FILRQ2B : 1; /* Filter Enable for REQ2B */
     sfr_bitfield FILRQ3B : 1; /* Filter Enable for REQ3B */
     sfr_bitfield FILRQ7C : 1; /* Filter Enable for REQ7C */
     sfr_bitfield resv17 : 7; /* reserved */
     sfr_bitfield FILTDIV : 4; /* Digital Glitch Filter Clock Predivider */
     sfr_bitfield DEPTH : 4; /* Digital Glitch Filter Depth */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EIFILT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 4; /* reserved */
     sfr_bitfield EXIS0 : 3; /* External Input Selection 0 */
     sfr_bitfield resv7 : 1; /* reserved */
     sfr_bitfield FEN0 : 1; /* Falling Edge Enable 0 */
     sfr_bitfield REN0 : 1; /* Rising Edge Enable 0 */
     sfr_bitfield LDEN0 : 1; /* Level Detection Enable 0 */
     sfr_bitfield EIEN0 : 1; /* External Input Enable 0 */
     sfr_bitfield INP0 : 3; /* Input Node Pointer */
     sfr_bitfield resv15 : 5; /* reserved */
     sfr_bitfield EXIS1 : 3; /* External Input Selection 1 */
     sfr_bitfield resv23 : 1; /* reserved */
     sfr_bitfield FEN1 : 1; /* Falling Edge Enable 1 */
     sfr_bitfield REN1 : 1; /* Rising Edge Enable 1 */
     sfr_bitfield LDEN1 : 1; /* Level Detection Enable 1 */
     sfr_bitfield EIEN1 : 1; /* External Input Enable 1 */
     sfr_bitfield INP1 : 3; /* Input Node Pointer */
     sfr_bitfield resv31 : 1; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EICR0_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield INTF0 : 1; /* External Event Flag of Channel 0 */
    /* const */ sfr_bitfield INTF1 : 1; /* External Event Flag of Channel 1 */
    /* const */ sfr_bitfield INTF2 : 1; /* External Event Flag of Channel 2 */
    /* const */ sfr_bitfield INTF3 : 1; /* External Event Flag of Channel 3 */
    /* const */ sfr_bitfield INTF4 : 1; /* External Event Flag of Channel 4 */
    /* const */ sfr_bitfield INTF5 : 1; /* External Event Flag of Channel 5 */
    /* const */ sfr_bitfield INTF6 : 1; /* External Event Flag of Channel 6 */
    /* const */ sfr_bitfield INTF7 : 1; /* External Event Flag of Channel 7 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EIFR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield FS0 : 1; /* Set Flag INTFx for Channel 0 */
     sfr_bitfield FS1 : 1; /* Set Flag INTFx for Channel 1 */
     sfr_bitfield FS2 : 1; /* Set Flag INTFx for Channel 2 */
     sfr_bitfield FS3 : 1; /* Set Flag INTFx for Channel 3 */
     sfr_bitfield FS4 : 1; /* Set Flag INTFx for Channel 4 */
     sfr_bitfield FS5 : 1; /* Set Flag INTFx for Channel 5 */
     sfr_bitfield FS6 : 1; /* Set Flag INTFx for Channel 6 */
     sfr_bitfield FS7 : 1; /* Set Flag INTFx for Channel 7 */
     sfr_bitfield resv8 : 8; /* reserved */
     sfr_bitfield FC0 : 1; /* Clear Flag INTFx for Channel 0 */
     sfr_bitfield FC1 : 1; /* Clear Flag INTFx for Channel 1 */
     sfr_bitfield FC2 : 1; /* Clear Flag INTFx for Channel 2 */
     sfr_bitfield FC3 : 1; /* Clear Flag INTFx for Channel 3 */
     sfr_bitfield FC4 : 1; /* Clear Flag INTFx for Channel 4 */
     sfr_bitfield FC5 : 1; /* Clear Flag INTFx for Channel 5 */
     sfr_bitfield FC6 : 1; /* Clear Flag INTFx for Channel 6 */
     sfr_bitfield FC7 : 1; /* Clear Flag INTFx for Channel 7 */
     sfr_bitfield resv24 : 8; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_FMR_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield PDR0 : 1; /* Pattern Detection Result of Channel 0 */
    /* const */ sfr_bitfield PDR1 : 1; /* Pattern Detection Result of Channel 1 */
    /* const */ sfr_bitfield PDR2 : 1; /* Pattern Detection Result of Channel 2 */
    /* const */ sfr_bitfield PDR3 : 1; /* Pattern Detection Result of Channel 3 */
    /* const */ sfr_bitfield PDR4 : 1; /* Pattern Detection Result of Channel 4 */
    /* const */ sfr_bitfield PDR5 : 1; /* Pattern Detection Result of Channel 5 */
    /* const */ sfr_bitfield PDR6 : 1; /* Pattern Detection Result of Channel 6 */
    /* const */ sfr_bitfield PDR7 : 1; /* Pattern Detection Result of Channel 7 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PDRR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield IPEN00 : 1; /* Flag Pattern Enable for Channel 0 0 */
     sfr_bitfield IPEN01 : 1; /* Flag Pattern Enable for Channel 0 1 */
     sfr_bitfield IPEN02 : 1; /* Flag Pattern Enable for Channel 0 2 */
     sfr_bitfield IPEN03 : 1; /* Flag Pattern Enable for Channel 0 3 */
     sfr_bitfield IPEN04 : 1; /* Flag Pattern Enable for Channel 0 4 */
     sfr_bitfield IPEN05 : 1; /* Flag Pattern Enable for Channel 0 5 */
     sfr_bitfield IPEN06 : 1; /* Flag Pattern Enable for Channel 0 6 */
     sfr_bitfield IPEN07 : 1; /* Flag Pattern Enable for Channel 0 7 */
     sfr_bitfield resv8 : 5; /* reserved */
     sfr_bitfield GEEN0 : 1; /* Generate Event Enable 0 */
     sfr_bitfield IGP0 : 2; /* Interrupt Gating Pattern 0 */
     sfr_bitfield IPEN10 : 1; /* Interrupt Pattern Enable for Channel 1 0 */
     sfr_bitfield IPEN11 : 1; /* Interrupt Pattern Enable for Channel 1 1 */
     sfr_bitfield IPEN12 : 1; /* Interrupt Pattern Enable for Channel 1 2 */
     sfr_bitfield IPEN13 : 1; /* Interrupt Pattern Enable for Channel 1 3 */
     sfr_bitfield IPEN14 : 1; /* Interrupt Pattern Enable for Channel 1 4 */
     sfr_bitfield IPEN15 : 1; /* Interrupt Pattern Enable for Channel 1 5 */
     sfr_bitfield IPEN16 : 1; /* Interrupt Pattern Enable for Channel 1 6 */
     sfr_bitfield IPEN17 : 1; /* Interrupt Pattern Enable for Channel 1 7 */
     sfr_bitfield resv24 : 5; /* reserved */
     sfr_bitfield GEEN1 : 1; /* Generate Event Enable 1 */
     sfr_bitfield IGP1 : 2; /* Interrupt Gating Pattern 1 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_IGCR0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ENDINIT : 1; /* End-of-Initialization Control Bit */
     sfr_bitfield LCK : 1; /* Lock Bit to Control Access to WDTxCON0 */
     sfr_bitfield PW : 14; /* User-Definable Password Field for Access to WDTxCON0 */
     sfr_bitfield REL : 16; /* Reload Value for the WDT (also Time Check Value) */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_WDTCPU0CON0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 2; /* reserved */
     sfr_bitfield IR0 : 1; /* Input Frequency Request Control - IR1,IR0 */
     sfr_bitfield DR : 1; /* Disable Request Control Bit */
     sfr_bitfield resv4 : 1; /* reserved */
     sfr_bitfield IR1 : 1; /* Input Frequency Request Control */
     sfr_bitfield UR : 1; /* Unlock Restriction Request Control Bit */
     sfr_bitfield PAR : 1; /* Password Auto-sequence Request Bit */
     sfr_bitfield TCR : 1; /* Counter Check Request Bit */
     sfr_bitfield TCTR : 7; /* Timer Check Tolerance Request */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_WDTCPU0CON1_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield AE : 1; /* Watchdog Access Error Status Flag */
    /* const */ sfr_bitfield OE : 1; /* Watchdog Overflow Error Status Flag */
    /* const */ sfr_bitfield IS0 : 1; /* Watchdog Input Clock Status - IS1,IS0 */
    /* const */ sfr_bitfield DS : 1; /* Watchdog Enable/Disable Status Flag */
    /* const */ sfr_bitfield TO : 1; /* Watchdog Time-Out Mode Flag */
    /* const */ sfr_bitfield IS1 : 1; /* Watchdog Input Clock Status */
    /* const */ sfr_bitfield US : 1; /* SMU Unlock Restriction Status Flag */
    /* const */ sfr_bitfield PAS : 1; /* Password Auto-sequence Status Flag */
    /* const */ sfr_bitfield TCS : 1; /* Timer Check Status Flag */
    /* const */ sfr_bitfield TCT : 7; /* Timer Check Tolerance */
    /* const */ sfr_bitfield TIM : 16; /* Timer Value */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_WDTCPU0SR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
     sfr_bitfield ENDINIT : 1; /* End-of-Initialization Control Bit */
     sfr_bitfield EPW : 14; /* User-Definable ENDINIT Password Field */
    /* const */ sfr_bitfield REL : 16; /* Reload Value for the ENDINIT Timeout Counter */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EICON0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 2; /* reserved */
     sfr_bitfield IR0 : 1; /* Input Frequency Request Control - IR1,IR0 */
     sfr_bitfield DR : 1; /* Disable Request Control Bit */
     sfr_bitfield resv4 : 1; /* reserved */
     sfr_bitfield IR1 : 1; /* Input Frequency Request Control */
     sfr_bitfield resv6 : 26; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EICON1_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield AE : 1; /* EICON0 Access Error Status Flag */
    /* const */ sfr_bitfield OE : 1; /* EI Timeout Overflow Error Status Flag */
    /* const */ sfr_bitfield IS0 : 1; /* EI Timeout Input Clock Status - IS1,IS0 */
    /* const */ sfr_bitfield DS : 1; /* EI Timeout Enable/Disable Status Flag */
    /* const */ sfr_bitfield TO : 1; /* EI Time-Out Mode Flag */
    /* const */ sfr_bitfield IS1 : 1; /* EI Timeout Input Clock Status */
     sfr_bitfield resv6 : 10; /* reserved */
    /* const */ sfr_bitfield TIM : 16; /* Timer Value */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EISR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CLRIRF : 1; /* Clear Internal Reset Flag */
     sfr_bitfield resv1 : 1; /* reserved */
     sfr_bitfield IR0 : 1; /* Input Frequency Request Control - IR1,IR0 */
     sfr_bitfield DR : 1; /* Disable Request Control Bit */
     sfr_bitfield resv4 : 1; /* reserved */
     sfr_bitfield IR1 : 1; /* Input Frequency Request Control */
     sfr_bitfield UR : 1; /* Unlock Restriction Request Control Bit */
     sfr_bitfield PAR : 1; /* Password Auto-sequence Request Bit */
     sfr_bitfield TCR : 1; /* Counter Check Request Bit */
     sfr_bitfield TCTR : 7; /* Timer Check Tolerance Request */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_WDTSCON1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
     sfr_bitfield ENDINIT : 1; /* End-of-Initialization Control Bit */
     sfr_bitfield EPW : 14; /* User-Definable Safety ENDINIT Password Field */
    /* const */ sfr_bitfield REL : 16; /* Reload Value for the Safety ENDINIT Timeout Counter */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SEICON0_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield AE : 1; /* SEICON0 Access Error Status Flag */
    /* const */ sfr_bitfield OE : 1; /* SEI Timeout Overflow Error Status Flag */
    /* const */ sfr_bitfield IS0 : 1; /* SEI Timeout Input Clock Status */
    /* const */ sfr_bitfield DS : 1; /* SEI Enable/Disable Status Flag */
    /* const */ sfr_bitfield TO : 1; /* SEI Time-Out Mode Flag */
    /* const */ sfr_bitfield IS1 : 1; /* SEI Timeout Input Clock Status - IS0, IS1 */
     sfr_bitfield resv6 : 10; /* reserved */
    /* const */ sfr_bitfield TIM : 16; /* Timer Value */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SEISR_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield ESR0 : 1; /* Reset Request Trigger Reset Status for ESR0 */
    /* const */ sfr_bitfield ESR1 : 1; /* Reset Request Trigger Reset Status for ESR1 */
     sfr_bitfield resv2 : 1; /* reserved */
    /* const */ sfr_bitfield SMU : 1; /* Reset Request Trigger Reset Status for SMU */
    /* const */ sfr_bitfield SW : 1; /* Reset Request Trigger Reset Status for SW */
    /* const */ sfr_bitfield STM0 : 1; /* Reset Request Trigger Reset Status for STM0 Compare Match */
    /* const */ sfr_bitfield STM1 : 1; /* Reset Request Trigger Reset Status for STM1 Compare Match (If Product has STM1) */
    /* const */ sfr_bitfield STM2 : 1; /* Reset Request Trigger Reset Status for STM2 Compare Match (If Product has STM2) */
     sfr_bitfield resv8 : 8; /* reserved */
    /* const */ sfr_bitfield PORST : 1; /* Reset Request Trigger Reset Status for PORST */
     sfr_bitfield resv17 : 1; /* reserved */
    /* const */ sfr_bitfield CB0 : 1; /* Reset Request Trigger Reset Status for Cerberus System Reset */
    /* const */ sfr_bitfield CB1 : 1; /* Reset Request Trigger Reset Status for Cerberus Debug Reset */
    /* const */ sfr_bitfield CB3 : 1; /* Reset Request Trigger Reset Status for Cerberus Application Reset */
     sfr_bitfield resv21 : 2; /* reserved */
    /* const */ sfr_bitfield EVRC : 1; /* Reset Request Trigger Reset Status for EVRC */
    /* const */ sfr_bitfield EVR33 : 1; /* Reset Request Trigger Reset Status for EVR33 */
    /* const */ sfr_bitfield SWD : 1; /* Reset Request Trigger Reset Status for Supply Watchdog (SWD) */
    /* const */ sfr_bitfield HSMS : 1; /* Reset Request Trigger Reset Status for HSM System Reset (HSM S) */
    /* const */ sfr_bitfield HSMA : 1; /* Reset Request Trigger Reset Status for HSM Application Reset (HSM A) */
    /* const */ sfr_bitfield STBYR : 1; /* Reset Request Trigger Reset Status for Standby Regulator Watchdog (STBYR) */
    /* const */ sfr_bitfield LBPORST : 1; /* LBIST termination due to PORST */
    /* const */ sfr_bitfield LBTERM : 1; /* LBIST was properly terminated */
     sfr_bitfield resv31 : 1; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_RSTSTAT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ESR0 : 2; /* ESR0 Reset Request Trigger Reset Configuration */
     sfr_bitfield ESR1 : 2; /* ESR1 Reset Request Trigger Reset Configuration */
     sfr_bitfield resv4 : 2; /* reserved */
     sfr_bitfield SMU : 2; /* SMU Reset Request Trigger Reset Configuration */
     sfr_bitfield SW : 2; /* SW Reset Request Trigger Reset Configuration */
     sfr_bitfield STM0 : 2; /* STM0 Reset Request Trigger Reset Configuration */
     sfr_bitfield STM1 : 2; /* STM1 Reset Request Trigger Reset Configuration (If Product has STM1) */
     sfr_bitfield STM2 : 2; /* STM2 Reset Request Trigger Reset Configuration (If Product has STM2) */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_RSTCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield STM0DIS : 1; /* STM0 Disable Reset */
     sfr_bitfield STM1DIS : 1; /* STM1 Disable Reset */
     sfr_bitfield STM2DIS : 1; /* STM2 Disable Reset */
     sfr_bitfield resv3 : 29; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_ARSTDIS_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
     sfr_bitfield SWRSTREQ : 1; /* Software Reset Request */
     sfr_bitfield resv2 : 30; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SWRSTCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield FRTO : 1; /* Force Reset Timeout */
     sfr_bitfield CLRC : 1; /* Clear Cold Reset Status */
     sfr_bitfield resv2 : 5; /* reserved */
    /* const */ sfr_bitfield CSSx : 6; /* CPU x Shutdown State Reached */
     sfr_bitfield resv13 : 3; /* reserved */
     sfr_bitfield USRINFO : 16; /* User Information */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_RSTCON2_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 7; /* reserved */
     sfr_bitfield EDCON : 2; /* Edge Detection Control */
     sfr_bitfield resv9 : 23; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_ESRCFG0_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield ARI : 1; /* Application Reset Indicator */
     sfr_bitfield ARC : 1; /* Application Reset Indicator Clear */
     sfr_bitfield resv2 : 30; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_ESROCFG_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PD0 : 2; /* Pad Driver Mode for ESR Pins 0 */
     sfr_bitfield PL0 : 2; /* Pad Level Selection for ESR Pins 0 */
     sfr_bitfield PD1 : 2; /* Pad Driver Mode for ESR Pins 1 */
     sfr_bitfield PL1 : 2; /* Pad Level Selection for ESR Pins 1 */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PDR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 4; /* reserved */
     sfr_bitfield PC0 : 4; /* Control for ESR0 Pin */
     sfr_bitfield resv8 : 4; /* reserved */
     sfr_bitfield PC1 : 4; /* Control for ESR1 Pin */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_IOCR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield P0 : 1; /* Output Bit 0 */
     sfr_bitfield P1 : 1; /* Output Bit 1 */
     sfr_bitfield resv2 : 30; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_OUT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PS0 : 1; /* ESRx Pin Set Bit 0 */
     sfr_bitfield PS1 : 1; /* ESRx Pin Set Bit 1 */
     sfr_bitfield resv2 : 14; /* reserved */
     sfr_bitfield PCL0 : 1; /* ESRx Pin Clear Bit 0 */
     sfr_bitfield PCL1 : 1; /* ESRx Pin Clear Bit 1 */
     sfr_bitfield resv18 : 14; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_OMR_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield P0 : 1; /* Input Bit 0 */
    /* const */ sfr_bitfield P1 : 1; /* Input Bit 1 */
     sfr_bitfield resv2 : 30; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_IN_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield HWCFG : 8; /* Hardware Configuration Setting */
    /* const */ sfr_bitfield FTM : 7; /* Firmware Test Setting */
    /* const */ sfr_bitfield MODE : 1; /* MODE */
    /* const */ sfr_bitfield FCBAE : 1; /* Flash Config. Sector Access Enable */
    /* const */ sfr_bitfield LUDIS : 1; /* Latch Update Disable */
     sfr_bitfield resv18 : 1; /* reserved */
    /* const */ sfr_bitfield TRSTL : 1; /* TRSTL Status */
    /* const */ sfr_bitfield SPDEN : 1; /* Single Pin DAP Mode Enable */
     sfr_bitfield resv21 : 3; /* reserved */
    /* const */ sfr_bitfield RAMINT : 1; /* RAM Content Security Integrity */
     sfr_bitfield resv25 : 7; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_STSTAT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 13; /* reserved */
     sfr_bitfield SFCBAE : 1; /* Set Flash Config. Sector Access Enable */
     sfr_bitfield CFCBAE : 1; /* Clear Flash Config. Sector Access Enable */
     sfr_bitfield STP : 1; /* Start-up Protection Setting */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_STCON_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield ESR0T : 1; /* ESR0 Trap Request Flag */
    /* const */ sfr_bitfield ESR1T : 1; /* ESR1 Trap Request Flag */
    /* const */ sfr_bitfield TRAP2 : 1; /* Trap Bit 2 Request Flag */
    /* const */ sfr_bitfield SMUT : 1; /* SMU Alarm Trap Request Flag */
     sfr_bitfield resv4 : 28; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_TRAPSTAT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ESR0T : 1; /* Set Trap Request Flag ESR0T */
     sfr_bitfield ESR1T : 1; /* Set Trap Request Flag ESR1T */
     sfr_bitfield TRAP2 : 1; /* Set Trap Request Flag TRAP2 */
     sfr_bitfield SMUT : 1; /* Set Trap Request Flag SMUT */
     sfr_bitfield resv4 : 28; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_TRAPSET_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ESR0T : 1; /* Clear Trap Request Flag ESR0T */
     sfr_bitfield ESR1T : 1; /* Clear Trap Request Flag ESR1T */
     sfr_bitfield TRAP2 : 1; /* Clear Trap Request Flag TRAP2 */
     sfr_bitfield SMUT : 1; /* Clear Trap Request Flag SMUT */
     sfr_bitfield resv4 : 28; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_TRAPCLR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CPU0ESR0T : 1; /* Disable Trap Request ESR0T on CPU0 */
     sfr_bitfield CPU0ESR1T : 1; /* Disable Trap Request ESR1T on CPU0 */
     sfr_bitfield CPU0TRAP2T : 1; /* Disable Trap Request TRAP2T on CPU0 */
     sfr_bitfield CPU0SMUT : 1; /* Disable Trap Request SMUT on CPU0 */
     sfr_bitfield resv4 : 4; /* reserved */
     sfr_bitfield CPU1ESR0T : 1; /* Disable Trap Request ESR0T on CPU1 (If product has CPU1) */
     sfr_bitfield CPU1ESR1T : 1; /* Disable Trap Request ESR1T on CPU1 (If product has CPU1) */
     sfr_bitfield CPU1TRAP2T : 1; /* Disable Trap Request TRAP2T on CPU1 (If product has CPU1) */
     sfr_bitfield CPU1SMUT : 1; /* Disable Trap Request SMUT on CPU1 (If product has CPU1) */
     sfr_bitfield resv12 : 4; /* reserved */
     sfr_bitfield CPU2ESR0T : 1; /* Disable Trap Request ESR0T on CPU2 (If product has CPU2) */
     sfr_bitfield CPU2ESR1T : 1; /* Disable Trap Request ESR1T on CPU2 (If product has CPU2) */
     sfr_bitfield CPU2TRAP2T : 1; /* Disable Trap Request TRAP2T on CPU2 (If product has CPU2) */
     sfr_bitfield CPU2SMUT : 1; /* Disable Trap Request SMUT on CPU2 (If product has CPU2) */
     sfr_bitfield resv20 : 12; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_TRAPDIS0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PDIS0 : 1; /* Pad Disable for ESR Pin 0 */
     sfr_bitfield PDIS1 : 1; /* Pad Disable for ESR Pin 1 */
     sfr_bitfield resv2 : 30; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PDISC_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
    /* const */ sfr_bitfield PLLLV : 1; /* Oscillator for PLL Valid Low Status Bit */
     sfr_bitfield OSCRES : 1; /* Oscillator Watchdog Reset */
     sfr_bitfield GAINSEL : 2; /* Oscillator Gain Selection */
     sfr_bitfield MODE : 2; /* Oscillator Mode */
     sfr_bitfield SHBY : 1; /* Shaper Bypass */
    /* const */ sfr_bitfield PLLHV : 1; /* Oscillator for PLL Valid High Status Bit */
     sfr_bitfield HYSEN : 1; /* Hysteresis Enable */
     sfr_bitfield HYSCTL : 2; /* Hysteresis Control */
     sfr_bitfield AMPCTL : 2; /* Amplitude Control */
     sfr_bitfield resv14 : 2; /* reserved */
     sfr_bitfield OSCVAL : 5; /* OSC Frequency Value */
     sfr_bitfield resv21 : 2; /* reserved */
     sfr_bitfield APREN : 1; /* Amplitude Regulation Enable */
     sfr_bitfield CAP0EN : 1; /* Capacitance 0 Enable */
     sfr_bitfield CAP1EN : 1; /* Capacitance 1 Enable */
     sfr_bitfield CAP2EN : 1; /* Capacitance 2 Enable */
     sfr_bitfield CAP3EN : 1; /* Capacitance 3 Enable */
     sfr_bitfield resv28 : 4; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_OSCCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
    /* const */ sfr_bitfield PWDSTAT : 1; /* System PLL Power-saving Mode Status */
    /* const */ sfr_bitfield LOCK : 1; /* System PLL Lock Status */
     sfr_bitfield resv3 : 2; /* reserved */
    /* const */ sfr_bitfield K2RDY : 1; /* K2 Divider Ready Status */
     sfr_bitfield resv6 : 1; /* reserved */
    /* const */ sfr_bitfield MODRUN : 1; /* Modulation Run */
     sfr_bitfield resv8 : 24; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SYSPLLSTAT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 2; /* reserved */
     sfr_bitfield MODEN : 1; /* Modulation Enable */
     sfr_bitfield resv3 : 6; /* reserved */
     sfr_bitfield NDIV : 7; /* N-Divider Value */
     sfr_bitfield PLLPWD : 1; /* System PLL Power Saving Mode */
     sfr_bitfield resv17 : 1; /* reserved */
     sfr_bitfield RESLD : 1; /* Restart DCO Lock Detection */
     sfr_bitfield resv19 : 5; /* reserved */
     sfr_bitfield PDIV : 3; /* P-Divider Value */
     sfr_bitfield resv27 : 3; /* reserved */
     sfr_bitfield INSEL : 2; /* Input Selection */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SYSPLLCON0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield K2DIV : 3; /* K2-Divider Value */
     sfr_bitfield resv3 : 29; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SYSPLLCON1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield MODCFG : 16; /* Modulation Configuration */
     sfr_bitfield resv16 : 16; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SYSPLLCON2_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 1; /* reserved */
    /* const */ sfr_bitfield PWDSTAT : 1; /* Peripheral PLL Power-saving Mode Status */
    /* const */ sfr_bitfield LOCK : 1; /* Peripheral PLL Lock Status */
     sfr_bitfield resv3 : 1; /* reserved */
    /* const */ sfr_bitfield K3RDY : 1; /* K3 Divider Ready Status */
    /* const */ sfr_bitfield K2RDY : 1; /* K2 Divider Ready Status */
     sfr_bitfield resv6 : 26; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PERPLLSTAT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield DIVBY : 1; /* Divider Bypass */
     sfr_bitfield resv1 : 8; /* reserved */
     sfr_bitfield NDIV : 7; /* N-Divider Value */
     sfr_bitfield PLLPWD : 1; /* Peripheral PLL Power Saving Mode */
     sfr_bitfield resv17 : 1; /* reserved */
     sfr_bitfield RESLD : 1; /* Restart DCO Lock Detection */
     sfr_bitfield resv19 : 5; /* reserved */
     sfr_bitfield PDIV : 3; /* P-Divider Value */
     sfr_bitfield resv27 : 5; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PERPLLCON0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield K2DIV : 3; /* K2-Divider Value */
     sfr_bitfield resv3 : 5; /* reserved */
     sfr_bitfield K3DIV : 3; /* K3-Divider Value */
     sfr_bitfield resv11 : 21; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PERPLLCON1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield STMDIV : 4; /* STM Divider Reload Value */
     sfr_bitfield GTMDIV : 4; /* GTM Divider Reload Value */
     sfr_bitfield SRIDIV : 4; /* SRI Divider Reload Value */
     sfr_bitfield LPDIV : 3; /* Low Power Divider Reload Value */
     sfr_bitfield resv15 : 1; /* reserved */
     sfr_bitfield SPBDIV : 4; /* SPB Divider Reload Value */
     sfr_bitfield BBBDIV : 4; /* BBB Divider Reload Value */
     sfr_bitfield FSIDIV : 2; /* FSI Divider Reload Value */
     sfr_bitfield FSI2DIV : 2; /* FSI2 Divider Reload Value */
     sfr_bitfield CLKSEL : 2; /* Clock Selection for Source */
     sfr_bitfield UP : 1; /* Update Request */
    /* const */ sfr_bitfield LCK : 1; /* Lock Status */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield MCANDIV : 4; /* MCAN Divider Reload Value */
     sfr_bitfield CLKSELMCAN : 2; /* Clock Selection for MCAN */
     sfr_bitfield resv6 : 1; /* reserved */
     sfr_bitfield PLL1DIVDIS : 1; /* Divider Disable for fPLL1 */
     sfr_bitfield I2CDIV : 4; /* I2C Divider Reload Value */
     sfr_bitfield resv12 : 4; /* reserved */
     sfr_bitfield MSCDIV : 4; /* MSC Divider Reload Value */
     sfr_bitfield CLKSELMSC : 2; /* Clock Selection for MSC */
     sfr_bitfield resv22 : 2; /* reserved */
     sfr_bitfield QSPIDIV : 4; /* QSPI Divider Reload Value */
     sfr_bitfield CLKSELQSPI : 2; /* Clock Selection for QSPI */
     sfr_bitfield resv30 : 1; /* reserved */
    /* const */ sfr_bitfield LCK : 1; /* Lock Status */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield STEP : 10; /* Step Value */
     sfr_bitfield resv10 : 4; /* reserved */
     sfr_bitfield DM : 2; /* Divider Mode */
    /* const */ sfr_bitfield RESULT : 10; /* Result Value */
     sfr_bitfield resv26 : 5; /* reserved */
     sfr_bitfield DISCLK : 1; /* Disable Clock */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_FDR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield EN0 : 1; /* External Clock Enable for EXTCLK0 */
     sfr_bitfield resv1 : 1; /* reserved */
     sfr_bitfield SEL0 : 4; /* External Clock Select for EXTCLK0 */
     sfr_bitfield resv6 : 10; /* reserved */
     sfr_bitfield EN1 : 1; /* External Clock Enable for EXTCLK1 */
     sfr_bitfield NSEL : 1; /* Negation Selection */
     sfr_bitfield SEL1 : 4; /* External Clock Select for EXTCLK1 */
     sfr_bitfield resv22 : 2; /* reserved */
     sfr_bitfield DIV1 : 8; /* External Clock Divider for EXTCLK1 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EXTCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield ASCLINFDIV : 4; /* ASCLIN Fast Divider Reload Value */
     sfr_bitfield resv4 : 4; /* reserved */
     sfr_bitfield ASCLINSDIV : 4; /* ASCLIN Slow Divider Reload Value */
     sfr_bitfield CLKSELASCLINS : 2; /* Clock Selection for ASCLINS */
     sfr_bitfield resv14 : 11; /* reserved */
     sfr_bitfield ERAYPERON : 1; /* Power Safe SwitchOff for ERAY Clock */
     sfr_bitfield resv26 : 5; /* reserved */
    /* const */ sfr_bitfield LCK : 1; /* Lock Status */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON2_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield PLL0MONEN : 1; /* PLL0 Clock Monitor Enable */
     sfr_bitfield PLL1MONEN : 1; /* PLL1 Clock Monitor Enable */
     sfr_bitfield PLL2MONEN : 1; /* PLL2 Clock Monitor Enable */
     sfr_bitfield SPBMONEN : 1; /* SPB Clock Monitor Enable */
     sfr_bitfield BACKMONEN : 1; /* Backup Clock Monitor Enable */
     sfr_bitfield resv5 : 3; /* reserved */
     sfr_bitfield PLL0MONTST : 1; /* PLL0 Clock Monitor Test */
     sfr_bitfield PLL1MONTST : 1; /* PLL1 Clock Monitor Test */
     sfr_bitfield PLL2MONTST : 1; /* PLL2 Clock Monitor Test */
     sfr_bitfield SPBMONTST : 1; /* SPB Clock Monitor Test */
     sfr_bitfield BACKMONTST : 1; /* Backup Clock Monitor Test */
     sfr_bitfield resv13 : 17; /* reserved */
     sfr_bitfield UP : 1; /* Update Request */
    /* const */ sfr_bitfield LCK : 1; /* Lock Status */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON3_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield LOTHR : 12; /* Backup Clock Monitor Lower Threshold */
     sfr_bitfield UPTHR : 12; /* Backup Clock Monitor Upper Threshold */
     sfr_bitfield MONEN : 1; /* Backup Clock Monitor Enable */
     sfr_bitfield MONTST : 1; /* Backup Clock Monitor Test */
     sfr_bitfield resv26 : 4; /* reserved */
     sfr_bitfield UP : 1; /* Update Request */
    /* const */ sfr_bitfield LCK : 1; /* Lock Status */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON4_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield GETHDIV : 4; /* GETH Divider Reload Value */
     sfr_bitfield MCANHDIV : 4; /* MCANH Divider Reload Value */
     sfr_bitfield resv8 : 22; /* reserved */
     sfr_bitfield UP : 1; /* Update Request */
    /* const */ sfr_bitfield LCK : 1; /* Lock Status */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON5_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CPU0DIV : 6; /* CPU0 Divider Reload Value */
     sfr_bitfield resv6 : 26; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON6_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CPU1DIV : 6; /* CPU1 Divider Reload Value */
     sfr_bitfield resv6 : 26; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON7_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CPU2DIV : 6; /* CPU2 Divider Reload Value */
     sfr_bitfield resv6 : 26; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON8_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield REQSLP : 2; /* Idle Mode and Sleep Mode Request */
     sfr_bitfield resv2 : 6; /* reserved */
    /* const */ sfr_bitfield PMST : 3; /* Power management Status */
     sfr_bitfield resv11 : 21; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMCSR0_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield CPU0 : 1; /* CPU0 Status */
    /* const */ sfr_bitfield CPU1 : 1; /* CPU1 Status */
    /* const */ sfr_bitfield CPU2 : 1; /* CPU2 Status */
    /* const */ sfr_bitfield CPU3 : 1; /* CPU3 Status */
    /* const */ sfr_bitfield CPU4 : 1; /* CPU4 Status */
    /* const */ sfr_bitfield CPU5 : 1; /* CPU5 Status */
     sfr_bitfield resv6 : 10; /* reserved */
    /* const */ sfr_bitfield CPU0LS : 1; /* CPU0LS Status */
    /* const */ sfr_bitfield CPU1LS : 1; /* CPU1LS Status */
    /* const */ sfr_bitfield CPU2LS : 1; /* CPU2LS Status */
    /* const */ sfr_bitfield CPU3LS : 1; /* CPU3LS Status */
     sfr_bitfield resv20 : 12; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMSTAT0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield resv0 : 8; /* reserved */
     sfr_bitfield CPUIDLSEL : 3; /* CPU selection for Idle mode */
     sfr_bitfield resv11 : 1; /* reserved */
     sfr_bitfield IRADIS : 1; /* Idle-Request-Acknowledge Sequence Disable */
     sfr_bitfield resv13 : 11; /* reserved */
     sfr_bitfield CPUSEL : 3; /* CPU selection for Sleep and Standby mode */
     sfr_bitfield STBYEVEN : 1; /* Standby Entry Event configuration enable */
     sfr_bitfield STBYEV : 3; /* Standby Entry Event Configuration */
     sfr_bitfield resv31 : 1; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMSWCR1_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield RESULT : 12; /* Result of the DTSC Measurement */
     sfr_bitfield resv12 : 20; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_DTSCSTAT_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield LOWER : 12; /* DTSC Lower Limit */
     sfr_bitfield resv12 : 1; /* reserved */
    /* const */ sfr_bitfield BGPOK : 1; /* DTSC Bandgap OK */
     sfr_bitfield EN : 1; /* DTSC Enable */
     sfr_bitfield LLU : 1; /* DTSC Lower Limit Underflow */
     sfr_bitfield UPPER : 12; /* DTSC Upper Limit */
     sfr_bitfield INTEN : 1; /* DTSC Interrupt Enable */
     sfr_bitfield resv29 : 1; /* reserved */
     sfr_bitfield INT : 1; /* DTSC Interrupt status flag */
     sfr_bitfield UOF : 1; /* DTSC Upper Limit Overflow */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_DTSCLIM_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield LJTEN : 1; /* Load Jump Timer Enable */
     sfr_bitfield LJTOVEN : 1; /* Load Jump Timer Overflow Enable */
     sfr_bitfield LJTOVIEN : 1; /* Load Jump Timer Overflow Interrupt Enable */
     sfr_bitfield LJTSTRT : 1; /* Load Jump Timer Start */
     sfr_bitfield LJTSTP : 1; /* Load Jump Timer Stop */
     sfr_bitfield LJTCLR : 1; /* Load Jump Timer Clear */
     sfr_bitfield resv6 : 6; /* reserved */
     sfr_bitfield SDSTEP : 4; /* Droop Voltage Step(vdroop_step_i) */
     sfr_bitfield VDTEN : 1; /* Voltage Droop Timer Enable */
     sfr_bitfield VDTOVEN : 1; /* Voltage Droop Timer Overflow Enable */
     sfr_bitfield VDTOVIEN : 1; /* Voltage Droop Timer Overflow Interrupt Enable */
     sfr_bitfield VDTSTRT : 1; /* Voltage Droop Timer Start */
     sfr_bitfield VDTSTP : 1; /* Voltage Droop Timer Stop */
     sfr_bitfield VDTCLR : 1; /* Voltage Droop Timer Clear */
     sfr_bitfield resv22 : 7; /* reserved */
     sfr_bitfield LPSLPEN : 1; /* EVRC Low Power Mode activation on a Sleep Request */
     sfr_bitfield resv30 : 2; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMTRCSR0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield LJTCV : 16; /* Load Jump Timer Compare Setpoint Value */
     sfr_bitfield VDTCV : 10; /* Voltage Droop Timer Compare Setpoint Value */
     sfr_bitfield resv26 : 6; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMTRCSR1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield LDJMPREQ : 2; /* Load Jump Request */
     sfr_bitfield resv2 : 2; /* reserved */
    /* const */ sfr_bitfield LJTRUN : 2; /* Load Jump Timer Run Status */
     sfr_bitfield resv6 : 2; /* reserved */
    /* const */ sfr_bitfield LJTOV : 1; /* Load Jump Timer Overflow Status */
     sfr_bitfield resv9 : 3; /* reserved */
     sfr_bitfield LJTOVCLR : 1; /* Load Jump Timer Overflow Status Clear */
     sfr_bitfield resv13 : 3; /* reserved */
    /* const */ sfr_bitfield LJTCNT : 16; /* Load Jump Timer Value */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMTRCSR2_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield VDROOPREQ : 2; /* Voltage Droop Request */
     sfr_bitfield resv2 : 2; /* reserved */
    /* const */ sfr_bitfield VDTRUN : 2; /* Voltage Droop Timer Run Status */
     sfr_bitfield resv6 : 2; /* reserved */
    /* const */ sfr_bitfield VDTOV : 1; /* Voltage Droop Timer Overflow Status */
     sfr_bitfield resv9 : 3; /* reserved */
     sfr_bitfield VDTOVCLR : 1; /* Voltage Droop Timer Overflow Status Clear */
     sfr_bitfield resv13 : 3; /* reserved */
    /* const */ sfr_bitfield VDTCNT : 10; /* Voltage Droop Timer Value */
     sfr_bitfield resv26 : 6; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMTRCSR3_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield MODREV : 8; /* Module Revision Number */
    /* const */ sfr_bitfield MODTYPE : 8; /* Module Type */
    /* const */ sfr_bitfield MODNUM : 16; /* Module Number Value */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_ID_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield STM_31_0 : 32; /* System Timer Bits [31:0] - STM[31:0] */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM0_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield STM_35_4 : 32; /* System Timer Bits [35:4] - STM[35:4] */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM1_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield STM_39_8 : 32; /* System Timer Bits [39:8] - STM[39:8] */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM2_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield STM_43_12 : 32; /* System Timer Bits [43:12] - STM[43:12] */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM3_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield STM_47_16 : 32; /* System Timer Bits [47:16] - STM[47:16] */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM4_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield STM_51_20 : 32; /* System Timer Bits [51:20] - STM[51:20] */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM5_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield STM_63_32 : 32; /* System Timer Bits [63:32] - STM[63:32] */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM6_type;
typedef volatile union
{
	struct
	{
    /* const */ sfr_bitfield STMCAP_63_32 : 32; /* Captured System Timer Bits [63:32] - STMCAP[63:32] */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_CAP_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CMPVAL : 32; /* Compare Value of Compare Register 0 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_CMP0_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CMPVAL : 32; /* Compare Value of Compare Register 1 */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_CMP1_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield MSIZE0 : 5; /* Compare Register Size for CMP0 */
     sfr_bitfield resv5 : 3; /* reserved */
     sfr_bitfield MSTART0 : 5; /* Start Bit Location for CMP0 */
     sfr_bitfield resv13 : 3; /* reserved */
     sfr_bitfield MSIZE1 : 5; /* Compare Register Size for CMP1 */
     sfr_bitfield resv21 : 3; /* reserved */
     sfr_bitfield MSTART1 : 5; /* Start Bit Location for CMP1 */
     sfr_bitfield resv29 : 3; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_CMCON_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CMP0EN : 1; /* Compare Register CMP0 Interrupt Enable Control */
    /* const */ sfr_bitfield CMP0IR : 1; /* Compare Register CMP0 Interrupt Request Flag */
     sfr_bitfield CMP0OS : 1; /* Compare Register CMP0 Interrupt Output Selection */
     sfr_bitfield resv3 : 1; /* reserved */
     sfr_bitfield CMP1EN : 1; /* Compare Register CMP1 Interrupt Enable Control */
    /* const */ sfr_bitfield CMP1IR : 1; /* Compare Register CMP1 Interrupt Request Flag */
     sfr_bitfield CMP1OS : 1; /* Compare Register CMP1 Interrupt Output Selection */
     sfr_bitfield resv7 : 25; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_ICR_type;
typedef volatile union
{
	struct
	{
     sfr_bitfield CMP0IRR : 1; /* Reset Compare Register CMP0 Interrupt Flag */
     sfr_bitfield CMP0IRS : 1; /* Set Compare Register CMP0 Interrupt Flag */
     sfr_bitfield CMP1IRR : 1; /* Reset Compare Register CMP1 Interrupt Flag */
     sfr_bitfield CMP1IRS : 1; /* Set Compare Register CMP1 Interrupt Flag */
     sfr_bitfield resv4 : 28; /* reserved */
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_ISCR_type;
#define ASCLIN0_CLC	(*( ASCLIN0_CLC_type *) 0xF0000600U)	/* Clock Control Register */
#define ASCLIN1_CLC	(*( ASCLIN0_CLC_type *) 0xF0000700U)	/* Clock Control Register */
#define ASCLIN2_CLC	(*( ASCLIN0_CLC_type *) 0xF0000800U)	/* Clock Control Register */
#define ASCLIN3_CLC	(*( ASCLIN0_CLC_type *) 0xF0000900U)	/* Clock Control Register */
#define ASCLIN4_CLC	(*( ASCLIN0_CLC_type *) 0xF0000A00U)	/* Clock Control Register */
#define ASCLIN5_CLC	(*( ASCLIN0_CLC_type *) 0xF0000B00U)	/* Clock Control Register */
#define ASCLIN6_CLC	(*( ASCLIN0_CLC_type *) 0xF0000C00U)	/* Clock Control Register */
#define ASCLIN7_CLC	(*( ASCLIN0_CLC_type *) 0xF0000D00U)	/* Clock Control Register */
#define ASCLIN8_CLC	(*( ASCLIN0_CLC_type *) 0xF0000E00U)	/* Clock Control Register */
#define ASCLIN9_CLC	(*( ASCLIN0_CLC_type *) 0xF0000F00U)	/* Clock Control Register */
#define ASCLIN10_CLC	(*( ASCLIN0_CLC_type *) 0xF02C0A00U)	/* Clock Control Register */
#define ASCLIN11_CLC	(*( ASCLIN0_CLC_type *) 0xF02C0B00U)	/* Clock Control Register */
#define ASCLIN0_IOCR	(*( ASCLIN0_IOCR_type *) 0xF0000604U)	/* Input and Output Control Register */
#define ASCLIN1_IOCR	(*( ASCLIN0_IOCR_type *) 0xF0000704U)	/* Input and Output Control Register */
#define ASCLIN2_IOCR	(*( ASCLIN0_IOCR_type *) 0xF0000804U)	/* Input and Output Control Register */
#define ASCLIN3_IOCR	(*( ASCLIN0_IOCR_type *) 0xF0000904U)	/* Input and Output Control Register */
#define ASCLIN4_IOCR	(*( ASCLIN0_IOCR_type *) 0xF0000A04U)	/* Input and Output Control Register */
#define ASCLIN5_IOCR	(*( ASCLIN0_IOCR_type *) 0xF0000B04U)	/* Input and Output Control Register */
#define ASCLIN6_IOCR	(*( ASCLIN0_IOCR_type *) 0xF0000C04U)	/* Input and Output Control Register */
#define ASCLIN7_IOCR	(*( ASCLIN0_IOCR_type *) 0xF0000D04U)	/* Input and Output Control Register */
#define ASCLIN8_IOCR	(*( ASCLIN0_IOCR_type *) 0xF0000E04U)	/* Input and Output Control Register */
#define ASCLIN9_IOCR	(*( ASCLIN0_IOCR_type *) 0xF0000F04U)	/* Input and Output Control Register */
#define ASCLIN10_IOCR	(*( ASCLIN0_IOCR_type *) 0xF02C0A04U)	/* Input and Output Control Register */
#define ASCLIN11_IOCR	(*( ASCLIN0_IOCR_type *) 0xF02C0B04U)	/* Input and Output Control Register */
#define ASCLIN0_ID	(*( ASCLIN0_ID_type *) 0xF0000608U)	/* Module Identification Register */
#define ASCLIN1_ID	(*( ASCLIN0_ID_type *) 0xF0000708U)	/* Module Identification Register */
#define ASCLIN2_ID	(*( ASCLIN0_ID_type *) 0xF0000808U)	/* Module Identification Register */
#define ASCLIN3_ID	(*( ASCLIN0_ID_type *) 0xF0000908U)	/* Module Identification Register */
#define ASCLIN4_ID	(*( ASCLIN0_ID_type *) 0xF0000A08U)	/* Module Identification Register */
#define ASCLIN5_ID	(*( ASCLIN0_ID_type *) 0xF0000B08U)	/* Module Identification Register */
#define ASCLIN6_ID	(*( ASCLIN0_ID_type *) 0xF0000C08U)	/* Module Identification Register */
#define ASCLIN7_ID	(*( ASCLIN0_ID_type *) 0xF0000D08U)	/* Module Identification Register */
#define ASCLIN8_ID	(*( ASCLIN0_ID_type *) 0xF0000E08U)	/* Module Identification Register */
#define ASCLIN9_ID	(*( ASCLIN0_ID_type *) 0xF0000F08U)	/* Module Identification Register */
#define ASCLIN10_ID	(*( ASCLIN0_ID_type *) 0xF02C0A08U)	/* Module Identification Register */
#define ASCLIN11_ID	(*( ASCLIN0_ID_type *) 0xF02C0B08U)	/* Module Identification Register */
#define ASCLIN0_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF000060CU)	/* TX FIFO Configuration Register */
#define ASCLIN1_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF000070CU)	/* TX FIFO Configuration Register */
#define ASCLIN2_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF000080CU)	/* TX FIFO Configuration Register */
#define ASCLIN3_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF000090CU)	/* TX FIFO Configuration Register */
#define ASCLIN4_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF0000A0CU)	/* TX FIFO Configuration Register */
#define ASCLIN5_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF0000B0CU)	/* TX FIFO Configuration Register */
#define ASCLIN6_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF0000C0CU)	/* TX FIFO Configuration Register */
#define ASCLIN7_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF0000D0CU)	/* TX FIFO Configuration Register */
#define ASCLIN8_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF0000E0CU)	/* TX FIFO Configuration Register */
#define ASCLIN9_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF0000F0CU)	/* TX FIFO Configuration Register */
#define ASCLIN10_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF02C0A0CU)	/* TX FIFO Configuration Register */
#define ASCLIN11_TXFIFOCON	(*( ASCLIN0_TXFIFOCON_type *) 0xF02C0B0CU)	/* TX FIFO Configuration Register */
#define ASCLIN0_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF0000610U)	/* RX FIFO Configuration Register */
#define ASCLIN1_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF0000710U)	/* RX FIFO Configuration Register */
#define ASCLIN2_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF0000810U)	/* RX FIFO Configuration Register */
#define ASCLIN3_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF0000910U)	/* RX FIFO Configuration Register */
#define ASCLIN4_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF0000A10U)	/* RX FIFO Configuration Register */
#define ASCLIN5_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF0000B10U)	/* RX FIFO Configuration Register */
#define ASCLIN6_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF0000C10U)	/* RX FIFO Configuration Register */
#define ASCLIN7_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF0000D10U)	/* RX FIFO Configuration Register */
#define ASCLIN8_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF0000E10U)	/* RX FIFO Configuration Register */
#define ASCLIN9_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF0000F10U)	/* RX FIFO Configuration Register */
#define ASCLIN10_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF02C0A10U)	/* RX FIFO Configuration Register */
#define ASCLIN11_RXFIFOCON	(*( ASCLIN0_RXFIFOCON_type *) 0xF02C0B10U)	/* RX FIFO Configuration Register */
#define ASCLIN0_BITCON	(*( ASCLIN0_BITCON_type *) 0xF0000614U)	/* Bit Configuration Register */
#define ASCLIN1_BITCON	(*( ASCLIN0_BITCON_type *) 0xF0000714U)	/* Bit Configuration Register */
#define ASCLIN2_BITCON	(*( ASCLIN0_BITCON_type *) 0xF0000814U)	/* Bit Configuration Register */
#define ASCLIN3_BITCON	(*( ASCLIN0_BITCON_type *) 0xF0000914U)	/* Bit Configuration Register */
#define ASCLIN4_BITCON	(*( ASCLIN0_BITCON_type *) 0xF0000A14U)	/* Bit Configuration Register */
#define ASCLIN5_BITCON	(*( ASCLIN0_BITCON_type *) 0xF0000B14U)	/* Bit Configuration Register */
#define ASCLIN6_BITCON	(*( ASCLIN0_BITCON_type *) 0xF0000C14U)	/* Bit Configuration Register */
#define ASCLIN7_BITCON	(*( ASCLIN0_BITCON_type *) 0xF0000D14U)	/* Bit Configuration Register */
#define ASCLIN8_BITCON	(*( ASCLIN0_BITCON_type *) 0xF0000E14U)	/* Bit Configuration Register */
#define ASCLIN9_BITCON	(*( ASCLIN0_BITCON_type *) 0xF0000F14U)	/* Bit Configuration Register */
#define ASCLIN10_BITCON	(*( ASCLIN0_BITCON_type *) 0xF02C0A14U)	/* Bit Configuration Register */
#define ASCLIN11_BITCON	(*( ASCLIN0_BITCON_type *) 0xF02C0B14U)	/* Bit Configuration Register */
#define ASCLIN0_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF0000618U)	/* Frame Control Register */
#define ASCLIN1_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF0000718U)	/* Frame Control Register */
#define ASCLIN2_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF0000818U)	/* Frame Control Register */
#define ASCLIN3_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF0000918U)	/* Frame Control Register */
#define ASCLIN4_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF0000A18U)	/* Frame Control Register */
#define ASCLIN5_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF0000B18U)	/* Frame Control Register */
#define ASCLIN6_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF0000C18U)	/* Frame Control Register */
#define ASCLIN7_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF0000D18U)	/* Frame Control Register */
#define ASCLIN8_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF0000E18U)	/* Frame Control Register */
#define ASCLIN9_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF0000F18U)	/* Frame Control Register */
#define ASCLIN10_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF02C0A18U)	/* Frame Control Register */
#define ASCLIN11_FRAMECON	(*( ASCLIN0_FRAMECON_type *) 0xF02C0B18U)	/* Frame Control Register */
#define ASCLIN0_DATCON	(*( ASCLIN0_DATCON_type *) 0xF000061CU)	/* Data Configuration Register */
#define ASCLIN1_DATCON	(*( ASCLIN0_DATCON_type *) 0xF000071CU)	/* Data Configuration Register */
#define ASCLIN2_DATCON	(*( ASCLIN0_DATCON_type *) 0xF000081CU)	/* Data Configuration Register */
#define ASCLIN3_DATCON	(*( ASCLIN0_DATCON_type *) 0xF000091CU)	/* Data Configuration Register */
#define ASCLIN4_DATCON	(*( ASCLIN0_DATCON_type *) 0xF0000A1CU)	/* Data Configuration Register */
#define ASCLIN5_DATCON	(*( ASCLIN0_DATCON_type *) 0xF0000B1CU)	/* Data Configuration Register */
#define ASCLIN6_DATCON	(*( ASCLIN0_DATCON_type *) 0xF0000C1CU)	/* Data Configuration Register */
#define ASCLIN7_DATCON	(*( ASCLIN0_DATCON_type *) 0xF0000D1CU)	/* Data Configuration Register */
#define ASCLIN8_DATCON	(*( ASCLIN0_DATCON_type *) 0xF0000E1CU)	/* Data Configuration Register */
#define ASCLIN9_DATCON	(*( ASCLIN0_DATCON_type *) 0xF0000F1CU)	/* Data Configuration Register */
#define ASCLIN10_DATCON	(*( ASCLIN0_DATCON_type *) 0xF02C0A1CU)	/* Data Configuration Register */
#define ASCLIN11_DATCON	(*( ASCLIN0_DATCON_type *) 0xF02C0B1CU)	/* Data Configuration Register */
#define ASCLIN0_BRG	(*( ASCLIN0_BRG_type *) 0xF0000620U)	/* Baud Rate Generation Register */
#define ASCLIN1_BRG	(*( ASCLIN0_BRG_type *) 0xF0000720U)	/* Baud Rate Generation Register */
#define ASCLIN2_BRG	(*( ASCLIN0_BRG_type *) 0xF0000820U)	/* Baud Rate Generation Register */
#define ASCLIN3_BRG	(*( ASCLIN0_BRG_type *) 0xF0000920U)	/* Baud Rate Generation Register */
#define ASCLIN4_BRG	(*( ASCLIN0_BRG_type *) 0xF0000A20U)	/* Baud Rate Generation Register */
#define ASCLIN5_BRG	(*( ASCLIN0_BRG_type *) 0xF0000B20U)	/* Baud Rate Generation Register */
#define ASCLIN6_BRG	(*( ASCLIN0_BRG_type *) 0xF0000C20U)	/* Baud Rate Generation Register */
#define ASCLIN7_BRG	(*( ASCLIN0_BRG_type *) 0xF0000D20U)	/* Baud Rate Generation Register */
#define ASCLIN8_BRG	(*( ASCLIN0_BRG_type *) 0xF0000E20U)	/* Baud Rate Generation Register */
#define ASCLIN9_BRG	(*( ASCLIN0_BRG_type *) 0xF0000F20U)	/* Baud Rate Generation Register */
#define ASCLIN10_BRG	(*( ASCLIN0_BRG_type *) 0xF02C0A20U)	/* Baud Rate Generation Register */
#define ASCLIN11_BRG	(*( ASCLIN0_BRG_type *) 0xF02C0B20U)	/* Baud Rate Generation Register */
#define ASCLIN0_BRD	(*( ASCLIN0_BRD_type *) 0xF0000624U)	/* Baud Rate Detection Register */
#define ASCLIN1_BRD	(*( ASCLIN0_BRD_type *) 0xF0000724U)	/* Baud Rate Detection Register */
#define ASCLIN2_BRD	(*( ASCLIN0_BRD_type *) 0xF0000824U)	/* Baud Rate Detection Register */
#define ASCLIN3_BRD	(*( ASCLIN0_BRD_type *) 0xF0000924U)	/* Baud Rate Detection Register */
#define ASCLIN4_BRD	(*( ASCLIN0_BRD_type *) 0xF0000A24U)	/* Baud Rate Detection Register */
#define ASCLIN5_BRD	(*( ASCLIN0_BRD_type *) 0xF0000B24U)	/* Baud Rate Detection Register */
#define ASCLIN6_BRD	(*( ASCLIN0_BRD_type *) 0xF0000C24U)	/* Baud Rate Detection Register */
#define ASCLIN7_BRD	(*( ASCLIN0_BRD_type *) 0xF0000D24U)	/* Baud Rate Detection Register */
#define ASCLIN8_BRD	(*( ASCLIN0_BRD_type *) 0xF0000E24U)	/* Baud Rate Detection Register */
#define ASCLIN9_BRD	(*( ASCLIN0_BRD_type *) 0xF0000F24U)	/* Baud Rate Detection Register */
#define ASCLIN10_BRD	(*( ASCLIN0_BRD_type *) 0xF02C0A24U)	/* Baud Rate Detection Register */
#define ASCLIN11_BRD	(*( ASCLIN0_BRD_type *) 0xF02C0B24U)	/* Baud Rate Detection Register */
#define ASCLIN0_LINCON	(*( ASCLIN0_LINCON_type *) 0xF0000628U)	/* LIN Control Register */
#define ASCLIN1_LINCON	(*( ASCLIN0_LINCON_type *) 0xF0000728U)	/* LIN Control Register */
#define ASCLIN2_LINCON	(*( ASCLIN0_LINCON_type *) 0xF0000828U)	/* LIN Control Register */
#define ASCLIN3_LINCON	(*( ASCLIN0_LINCON_type *) 0xF0000928U)	/* LIN Control Register */
#define ASCLIN4_LINCON	(*( ASCLIN0_LINCON_type *) 0xF0000A28U)	/* LIN Control Register */
#define ASCLIN5_LINCON	(*( ASCLIN0_LINCON_type *) 0xF0000B28U)	/* LIN Control Register */
#define ASCLIN6_LINCON	(*( ASCLIN0_LINCON_type *) 0xF0000C28U)	/* LIN Control Register */
#define ASCLIN7_LINCON	(*( ASCLIN0_LINCON_type *) 0xF0000D28U)	/* LIN Control Register */
#define ASCLIN8_LINCON	(*( ASCLIN0_LINCON_type *) 0xF0000E28U)	/* LIN Control Register */
#define ASCLIN9_LINCON	(*( ASCLIN0_LINCON_type *) 0xF0000F28U)	/* LIN Control Register */
#define ASCLIN10_LINCON	(*( ASCLIN0_LINCON_type *) 0xF02C0A28U)	/* LIN Control Register */
#define ASCLIN11_LINCON	(*( ASCLIN0_LINCON_type *) 0xF02C0B28U)	/* LIN Control Register */
#define ASCLIN0_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF000062CU)	/* LIN Break Timer Register */
#define ASCLIN1_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF000072CU)	/* LIN Break Timer Register */
#define ASCLIN2_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF000082CU)	/* LIN Break Timer Register */
#define ASCLIN3_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF000092CU)	/* LIN Break Timer Register */
#define ASCLIN4_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF0000A2CU)	/* LIN Break Timer Register */
#define ASCLIN5_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF0000B2CU)	/* LIN Break Timer Register */
#define ASCLIN6_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF0000C2CU)	/* LIN Break Timer Register */
#define ASCLIN7_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF0000D2CU)	/* LIN Break Timer Register */
#define ASCLIN8_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF0000E2CU)	/* LIN Break Timer Register */
#define ASCLIN9_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF0000F2CU)	/* LIN Break Timer Register */
#define ASCLIN10_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF02C0A2CU)	/* LIN Break Timer Register */
#define ASCLIN11_LINBTIMER	(*( ASCLIN0_LINBTIMER_type *) 0xF02C0B2CU)	/* LIN Break Timer Register */
#define ASCLIN0_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF0000630U)	/* LIN Header Timer Register */
#define ASCLIN1_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF0000730U)	/* LIN Header Timer Register */
#define ASCLIN2_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF0000830U)	/* LIN Header Timer Register */
#define ASCLIN3_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF0000930U)	/* LIN Header Timer Register */
#define ASCLIN4_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF0000A30U)	/* LIN Header Timer Register */
#define ASCLIN5_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF0000B30U)	/* LIN Header Timer Register */
#define ASCLIN6_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF0000C30U)	/* LIN Header Timer Register */
#define ASCLIN7_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF0000D30U)	/* LIN Header Timer Register */
#define ASCLIN8_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF0000E30U)	/* LIN Header Timer Register */
#define ASCLIN9_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF0000F30U)	/* LIN Header Timer Register */
#define ASCLIN10_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF02C0A30U)	/* LIN Header Timer Register */
#define ASCLIN11_LINHTIMER	(*( ASCLIN0_LINHTIMER_type *) 0xF02C0B30U)	/* LIN Header Timer Register */
#define ASCLIN0_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF0000634U)	/* Flags Register */
#define ASCLIN1_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF0000734U)	/* Flags Register */
#define ASCLIN2_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF0000834U)	/* Flags Register */
#define ASCLIN3_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF0000934U)	/* Flags Register */
#define ASCLIN4_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF0000A34U)	/* Flags Register */
#define ASCLIN5_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF0000B34U)	/* Flags Register */
#define ASCLIN6_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF0000C34U)	/* Flags Register */
#define ASCLIN7_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF0000D34U)	/* Flags Register */
#define ASCLIN8_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF0000E34U)	/* Flags Register */
#define ASCLIN9_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF0000F34U)	/* Flags Register */
#define ASCLIN10_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF02C0A34U)	/* Flags Register */
#define ASCLIN11_FLAGS	(*( ASCLIN0_FLAGS_type *) 0xF02C0B34U)	/* Flags Register */
#define ASCLIN0_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF0000638U)	/* Flags Set Register */
#define ASCLIN1_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF0000738U)	/* Flags Set Register */
#define ASCLIN2_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF0000838U)	/* Flags Set Register */
#define ASCLIN3_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF0000938U)	/* Flags Set Register */
#define ASCLIN4_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF0000A38U)	/* Flags Set Register */
#define ASCLIN5_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF0000B38U)	/* Flags Set Register */
#define ASCLIN6_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF0000C38U)	/* Flags Set Register */
#define ASCLIN7_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF0000D38U)	/* Flags Set Register */
#define ASCLIN8_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF0000E38U)	/* Flags Set Register */
#define ASCLIN9_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF0000F38U)	/* Flags Set Register */
#define ASCLIN10_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF02C0A38U)	/* Flags Set Register */
#define ASCLIN11_FLAGSSET	(*( ASCLIN0_FLAGSSET_type *) 0xF02C0B38U)	/* Flags Set Register */
#define ASCLIN0_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF000063CU)	/* Flags Clear Register */
#define ASCLIN1_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF000073CU)	/* Flags Clear Register */
#define ASCLIN2_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF000083CU)	/* Flags Clear Register */
#define ASCLIN3_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF000093CU)	/* Flags Clear Register */
#define ASCLIN4_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF0000A3CU)	/* Flags Clear Register */
#define ASCLIN5_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF0000B3CU)	/* Flags Clear Register */
#define ASCLIN6_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF0000C3CU)	/* Flags Clear Register */
#define ASCLIN7_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF0000D3CU)	/* Flags Clear Register */
#define ASCLIN8_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF0000E3CU)	/* Flags Clear Register */
#define ASCLIN9_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF0000F3CU)	/* Flags Clear Register */
#define ASCLIN10_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF02C0A3CU)	/* Flags Clear Register */
#define ASCLIN11_FLAGSCLEAR	(*( ASCLIN0_FLAGSCLEAR_type *) 0xF02C0B3CU)	/* Flags Clear Register */
#define ASCLIN0_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF0000640U)	/* Flags Enable Register */
#define ASCLIN1_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF0000740U)	/* Flags Enable Register */
#define ASCLIN2_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF0000840U)	/* Flags Enable Register */
#define ASCLIN3_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF0000940U)	/* Flags Enable Register */
#define ASCLIN4_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF0000A40U)	/* Flags Enable Register */
#define ASCLIN5_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF0000B40U)	/* Flags Enable Register */
#define ASCLIN6_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF0000C40U)	/* Flags Enable Register */
#define ASCLIN7_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF0000D40U)	/* Flags Enable Register */
#define ASCLIN8_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF0000E40U)	/* Flags Enable Register */
#define ASCLIN9_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF0000F40U)	/* Flags Enable Register */
#define ASCLIN10_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF02C0A40U)	/* Flags Enable Register */
#define ASCLIN11_FLAGSENABLE	(*( ASCLIN0_FLAGSENABLE_type *) 0xF02C0B40U)	/* Flags Enable Register */
#define ASCLIN0_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000644U)	/* Transmit Data Register */
#define ASCLIN1_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000744U)	/* Transmit Data Register */
#define ASCLIN2_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000844U)	/* Transmit Data Register */
#define ASCLIN3_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000944U)	/* Transmit Data Register */
#define ASCLIN4_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000A44U)	/* Transmit Data Register */
#define ASCLIN5_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000B44U)	/* Transmit Data Register */
#define ASCLIN6_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000C44U)	/* Transmit Data Register */
#define ASCLIN7_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000D44U)	/* Transmit Data Register */
#define ASCLIN8_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000E44U)	/* Transmit Data Register */
#define ASCLIN9_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000F44U)	/* Transmit Data Register */
#define ASCLIN10_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF02C0A44U)	/* Transmit Data Register */
#define ASCLIN11_TXDATA	(*( ASCLIN0_TXDATA_type *) 0xF02C0B44U)	/* Transmit Data Register */
#define ASCLIN0_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000648U)	/* Receive Data Register */
#define ASCLIN1_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000748U)	/* Receive Data Register */
#define ASCLIN2_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000848U)	/* Receive Data Register */
#define ASCLIN3_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000948U)	/* Receive Data Register */
#define ASCLIN4_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000A48U)	/* Receive Data Register */
#define ASCLIN5_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000B48U)	/* Receive Data Register */
#define ASCLIN6_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000C48U)	/* Receive Data Register */
#define ASCLIN7_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000D48U)	/* Receive Data Register */
#define ASCLIN8_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000E48U)	/* Receive Data Register */
#define ASCLIN9_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF0000F48U)	/* Receive Data Register */
#define ASCLIN10_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF02C0A48U)	/* Receive Data Register */
#define ASCLIN11_RXDATA	(*( ASCLIN0_TXDATA_type *) 0xF02C0B48U)	/* Receive Data Register */
#define ASCLIN0_CSR	(*( ASCLIN0_CSR_type *) 0xF000064CU)	/* Clock Selection Register */
#define ASCLIN1_CSR	(*( ASCLIN0_CSR_type *) 0xF000074CU)	/* Clock Selection Register */
#define ASCLIN2_CSR	(*( ASCLIN0_CSR_type *) 0xF000084CU)	/* Clock Selection Register */
#define ASCLIN3_CSR	(*( ASCLIN0_CSR_type *) 0xF000094CU)	/* Clock Selection Register */
#define ASCLIN4_CSR	(*( ASCLIN0_CSR_type *) 0xF0000A4CU)	/* Clock Selection Register */
#define ASCLIN5_CSR	(*( ASCLIN0_CSR_type *) 0xF0000B4CU)	/* Clock Selection Register */
#define ASCLIN6_CSR	(*( ASCLIN0_CSR_type *) 0xF0000C4CU)	/* Clock Selection Register */
#define ASCLIN7_CSR	(*( ASCLIN0_CSR_type *) 0xF0000D4CU)	/* Clock Selection Register */
#define ASCLIN8_CSR	(*( ASCLIN0_CSR_type *) 0xF0000E4CU)	/* Clock Selection Register */
#define ASCLIN9_CSR	(*( ASCLIN0_CSR_type *) 0xF0000F4CU)	/* Clock Selection Register */
#define ASCLIN10_CSR	(*( ASCLIN0_CSR_type *) 0xF02C0A4CU)	/* Clock Selection Register */
#define ASCLIN11_CSR	(*( ASCLIN0_CSR_type *) 0xF02C0B4CU)	/* Clock Selection Register */
#define ASCLIN0_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF0000650U)	/* Receive Data Debug Register */
#define ASCLIN1_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF0000750U)	/* Receive Data Debug Register */
#define ASCLIN2_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF0000850U)	/* Receive Data Debug Register */
#define ASCLIN3_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF0000950U)	/* Receive Data Debug Register */
#define ASCLIN4_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF0000A50U)	/* Receive Data Debug Register */
#define ASCLIN5_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF0000B50U)	/* Receive Data Debug Register */
#define ASCLIN6_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF0000C50U)	/* Receive Data Debug Register */
#define ASCLIN7_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF0000D50U)	/* Receive Data Debug Register */
#define ASCLIN8_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF0000E50U)	/* Receive Data Debug Register */
#define ASCLIN9_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF0000F50U)	/* Receive Data Debug Register */
#define ASCLIN10_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF02C0A50U)	/* Receive Data Debug Register */
#define ASCLIN11_RXDATAD	(*( ASCLIN0_TXDATA_type *) 0xF02C0B50U)	/* Receive Data Debug Register */
#define ASCLIN0_OCS	(*( ASCLIN0_OCS_type *) 0xF00006E8U)	/* OCDS Control and Status */
#define ASCLIN1_OCS	(*( ASCLIN0_OCS_type *) 0xF00007E8U)	/* OCDS Control and Status */
#define ASCLIN2_OCS	(*( ASCLIN0_OCS_type *) 0xF00008E8U)	/* OCDS Control and Status */
#define ASCLIN3_OCS	(*( ASCLIN0_OCS_type *) 0xF00009E8U)	/* OCDS Control and Status */
#define ASCLIN4_OCS	(*( ASCLIN0_OCS_type *) 0xF0000AE8U)	/* OCDS Control and Status */
#define ASCLIN5_OCS	(*( ASCLIN0_OCS_type *) 0xF0000BE8U)	/* OCDS Control and Status */
#define ASCLIN6_OCS	(*( ASCLIN0_OCS_type *) 0xF0000CE8U)	/* OCDS Control and Status */
#define ASCLIN7_OCS	(*( ASCLIN0_OCS_type *) 0xF0000DE8U)	/* OCDS Control and Status */
#define ASCLIN8_OCS	(*( ASCLIN0_OCS_type *) 0xF0000EE8U)	/* OCDS Control and Status */
#define ASCLIN9_OCS	(*( ASCLIN0_OCS_type *) 0xF0000FE8U)	/* OCDS Control and Status */
#define ASCLIN10_OCS	(*( ASCLIN0_OCS_type *) 0xF02C0AE8U)	/* OCDS Control and Status */
#define ASCLIN11_OCS	(*( ASCLIN0_OCS_type *) 0xF02C0BE8U)	/* OCDS Control and Status */
#define ASCLIN0_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF00006ECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN1_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF00007ECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN2_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF00008ECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN3_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF00009ECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN4_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF0000AECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN5_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF0000BECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN6_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF0000CECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN7_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF0000DECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN8_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF0000EECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN9_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF0000FECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN10_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF02C0AECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN11_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF02C0BECU)	/* Kernel Reset Status Clear Register */
#define ASCLIN0_KRST1	(*( ASCLIN0_KRST1_type *) 0xF00006F0U)	/* Kernel Reset Register 1 */
#define ASCLIN1_KRST1	(*( ASCLIN0_KRST1_type *) 0xF00007F0U)	/* Kernel Reset Register 1 */
#define ASCLIN2_KRST1	(*( ASCLIN0_KRST1_type *) 0xF00008F0U)	/* Kernel Reset Register 1 */
#define ASCLIN3_KRST1	(*( ASCLIN0_KRST1_type *) 0xF00009F0U)	/* Kernel Reset Register 1 */
#define ASCLIN4_KRST1	(*( ASCLIN0_KRST1_type *) 0xF0000AF0U)	/* Kernel Reset Register 1 */
#define ASCLIN5_KRST1	(*( ASCLIN0_KRST1_type *) 0xF0000BF0U)	/* Kernel Reset Register 1 */
#define ASCLIN6_KRST1	(*( ASCLIN0_KRST1_type *) 0xF0000CF0U)	/* Kernel Reset Register 1 */
#define ASCLIN7_KRST1	(*( ASCLIN0_KRST1_type *) 0xF0000DF0U)	/* Kernel Reset Register 1 */
#define ASCLIN8_KRST1	(*( ASCLIN0_KRST1_type *) 0xF0000EF0U)	/* Kernel Reset Register 1 */
#define ASCLIN9_KRST1	(*( ASCLIN0_KRST1_type *) 0xF0000FF0U)	/* Kernel Reset Register 1 */
#define ASCLIN10_KRST1	(*( ASCLIN0_KRST1_type *) 0xF02C0AF0U)	/* Kernel Reset Register 1 */
#define ASCLIN11_KRST1	(*( ASCLIN0_KRST1_type *) 0xF02C0BF0U)	/* Kernel Reset Register 1 */
#define ASCLIN0_KRST0	(*( ASCLIN0_KRST0_type *) 0xF00006F4U)	/* Kernel Reset Register 0 */
#define ASCLIN1_KRST0	(*( ASCLIN0_KRST0_type *) 0xF00007F4U)	/* Kernel Reset Register 0 */
#define ASCLIN2_KRST0	(*( ASCLIN0_KRST0_type *) 0xF00008F4U)	/* Kernel Reset Register 0 */
#define ASCLIN3_KRST0	(*( ASCLIN0_KRST0_type *) 0xF00009F4U)	/* Kernel Reset Register 0 */
#define ASCLIN4_KRST0	(*( ASCLIN0_KRST0_type *) 0xF0000AF4U)	/* Kernel Reset Register 0 */
#define ASCLIN5_KRST0	(*( ASCLIN0_KRST0_type *) 0xF0000BF4U)	/* Kernel Reset Register 0 */
#define ASCLIN6_KRST0	(*( ASCLIN0_KRST0_type *) 0xF0000CF4U)	/* Kernel Reset Register 0 */
#define ASCLIN7_KRST0	(*( ASCLIN0_KRST0_type *) 0xF0000DF4U)	/* Kernel Reset Register 0 */
#define ASCLIN8_KRST0	(*( ASCLIN0_KRST0_type *) 0xF0000EF4U)	/* Kernel Reset Register 0 */
#define ASCLIN9_KRST0	(*( ASCLIN0_KRST0_type *) 0xF0000FF4U)	/* Kernel Reset Register 0 */
#define ASCLIN10_KRST0	(*( ASCLIN0_KRST0_type *) 0xF02C0AF4U)	/* Kernel Reset Register 0 */
#define ASCLIN11_KRST0	(*( ASCLIN0_KRST0_type *) 0xF02C0BF4U)	/* Kernel Reset Register 0 */
#define ASCLIN0_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF00006F8U)	/* Access Enable Register 1 */
#define ASCLIN1_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF00007F8U)	/* Access Enable Register 1 */
#define ASCLIN2_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF00008F8U)	/* Access Enable Register 1 */
#define ASCLIN3_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF00009F8U)	/* Access Enable Register 1 */
#define ASCLIN4_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF0000AF8U)	/* Access Enable Register 1 */
#define ASCLIN5_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF0000BF8U)	/* Access Enable Register 1 */
#define ASCLIN6_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF0000CF8U)	/* Access Enable Register 1 */
#define ASCLIN7_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF0000DF8U)	/* Access Enable Register 1 */
#define ASCLIN8_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF0000EF8U)	/* Access Enable Register 1 */
#define ASCLIN9_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF0000FF8U)	/* Access Enable Register 1 */
#define ASCLIN10_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF02C0AF8U)	/* Access Enable Register 1 */
#define ASCLIN11_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF02C0BF8U)	/* Access Enable Register 1 */
#define ASCLIN0_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF00006FCU)	/* Access Enable Register 0 */
#define ASCLIN1_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF00007FCU)	/* Access Enable Register 0 */
#define ASCLIN2_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF00008FCU)	/* Access Enable Register 0 */
#define ASCLIN3_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF00009FCU)	/* Access Enable Register 0 */
#define ASCLIN4_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF0000AFCU)	/* Access Enable Register 0 */
#define ASCLIN5_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF0000BFCU)	/* Access Enable Register 0 */
#define ASCLIN6_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF0000CFCU)	/* Access Enable Register 0 */
#define ASCLIN7_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF0000DFCU)	/* Access Enable Register 0 */
#define ASCLIN8_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF0000EFCU)	/* Access Enable Register 0 */
#define ASCLIN9_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF0000FFCU)	/* Access Enable Register 0 */
#define ASCLIN10_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF02C0AFCU)	/* Access Enable Register 0 */
#define ASCLIN11_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF02C0BFCU)	/* Access Enable Register 0 */
#define CPU0_SMACON	(*( CPU0_SMACON_type *) 0xF881900CU)	/* CPUx SIST Mode Access Control Register */
#define CPU1_SMACON	(*( CPU0_SMACON_type *) 0xF883900CU)	/* CPUx SIST Mode Access Control Register */
#define CPU2_SMACON	(*( CPU0_SMACON_type *) 0xF885900CU)	/* CPUx SIST Mode Access Control Register */
#define CPU0_DIEAR	(*( CPU0_DIEAR_type *) 0xF8819020U)	/* CPUx Data Integrity Error Address Register */
#define CPU1_DIEAR	(*( CPU0_DIEAR_type *) 0xF8839020U)	/* CPUx Data Integrity Error Address Register */
#define CPU2_DIEAR	(*( CPU0_DIEAR_type *) 0xF8859020U)	/* CPUx Data Integrity Error Address Register */
#define CPU0_DIETR	(*( CPU0_DIETR_type *) 0xF8819024U)	/* CPUx Data Integrity Error Trap Register */
#define CPU1_DIETR	(*( CPU0_DIETR_type *) 0xF8839024U)	/* CPUx Data Integrity Error Trap Register */
#define CPU2_DIETR	(*( CPU0_DIETR_type *) 0xF8859024U)	/* CPUx Data Integrity Error Trap Register */
#define CPU0_PIEAR	(*( CPU0_DIEAR_type *) 0xF8819210U)	/* CPUx Program Integrity Error Address Register */
#define CPU1_PIEAR	(*( CPU0_DIEAR_type *) 0xF8839210U)	/* CPUx Program Integrity Error Address Register */
#define CPU2_PIEAR	(*( CPU0_DIEAR_type *) 0xF8859210U)	/* CPUx Program Integrity Error Address Register */
#define CPU0_PIETR	(*( CPU0_PIETR_type *) 0xF8819214U)	/* CPUx Program Integrity Error Trap Register */
#define CPU1_PIETR	(*( CPU0_PIETR_type *) 0xF8839214U)	/* CPUx Program Integrity Error Trap Register */
#define CPU2_PIETR	(*( CPU0_PIETR_type *) 0xF8859214U)	/* CPUx Program Integrity Error Trap Register */
#define CPU0_TASK_ASI	(*( CPU0_TASK_ASI_type *) 0xF8818004U)	/* CPUx Task Address Space Identifier Register */
#define CPU1_TASK_ASI	(*( CPU0_TASK_ASI_type *) 0xF8838004U)	/* CPUx Task Address Space Identifier Register */
#define CPU2_TASK_ASI	(*( CPU0_TASK_ASI_type *) 0xF8858004U)	/* CPUx Task Address Space Identifier Register */
#define CPU0_PMA0	(*( CPU0_PMA0_type *) 0xF8818100U)	/* CPUx Data Access CacheabilityRegister */
#define CPU1_PMA0	(*( CPU0_PMA0_type *) 0xF8838100U)	/* CPUx Data Access CacheabilityRegister */
#define CPU2_PMA0	(*( CPU0_PMA0_type *) 0xF8858100U)	/* CPUx Data Access CacheabilityRegister */
#define CPU0_PMA1	(*( CPU0_PMA1_type *) 0xF8818104U)	/* CPUx Code Access CacheabilityRegister */
#define CPU1_PMA1	(*( CPU0_PMA1_type *) 0xF8838104U)	/* CPUx Code Access CacheabilityRegister */
#define CPU2_PMA1	(*( CPU0_PMA1_type *) 0xF8858104U)	/* CPUx Code Access CacheabilityRegister */
#define CPU0_PMA2	(*( CPU0_PMA2_type *) 0xF8818108U)	/* CPUx Peripheral Space Identifier register */
#define CPU1_PMA2	(*( CPU0_PMA2_type *) 0xF8838108U)	/* CPUx Peripheral Space Identifier register */
#define CPU2_PMA2	(*( CPU0_PMA2_type *) 0xF8858108U)	/* CPUx Peripheral Space Identifier register */
#define CPU0_COMPAT	(*( CPU0_COMPAT_type *) 0xF8819400U)	/* CPUx Compatibility Control Register */
#define CPU1_COMPAT	(*( CPU0_COMPAT_type *) 0xF8839400U)	/* CPUx Compatibility Control Register */
#define CPU2_COMPAT	(*( CPU0_COMPAT_type *) 0xF8859400U)	/* CPUx Compatibility Control Register */
#define CPU0_PCXI	(*( CPU0_PCXI_type *) 0xF881FE00U)	/* CPUx Previous Context Information Register */
#define CPU1_PCXI	(*( CPU0_PCXI_type *) 0xF883FE00U)	/* CPUx Previous Context Information Register */
#define CPU2_PCXI	(*( CPU0_PCXI_type *) 0xF885FE00U)	/* CPUx Previous Context Information Register */
#define CPU0_PSW	(*( CPU0_PSW_type *) 0xF881FE04U)	/* CPUx Program Status Word */
#define CPU1_PSW	(*( CPU0_PSW_type *) 0xF883FE04U)	/* CPUx Program Status Word */
#define CPU2_PSW	(*( CPU0_PSW_type *) 0xF885FE04U)	/* CPUx Program Status Word */
#define CPU0_PC	(*( CPU0_PC_type *) 0xF881FE08U)	/* CPUx Program Counter */
#define CPU1_PC	(*( CPU0_PC_type *) 0xF883FE08U)	/* CPUx Program Counter */
#define CPU2_PC	(*( CPU0_PC_type *) 0xF885FE08U)	/* CPUx Program Counter */
#define CPU0_SYSCON	(*( CPU0_SYSCON_type *) 0xF881FE14U)	/* CPUx System Configuration Register */
#define CPU1_SYSCON	(*( CPU0_SYSCON_type *) 0xF883FE14U)	/* CPUx System Configuration Register */
#define CPU2_SYSCON	(*( CPU0_SYSCON_type *) 0xF885FE14U)	/* CPUx System Configuration Register */
#define CPU0_CPU_ID	(*( CPU0_CPU_ID_type *) 0xF881FE18U)	/* CPUx Identification Register TC1.6.2P */
#define CPU1_CPU_ID	(*( CPU0_CPU_ID_type *) 0xF883FE18U)	/* CPUx Identification Register TC1.6.2P */
#define CPU2_CPU_ID	(*( CPU0_CPU_ID_type *) 0xF885FE18U)	/* CPUx Identification Register TC1.6.2P */
#define CPU0_CORE_ID	(*( CPU0_CORE_ID_type *) 0xF881FE1CU)	/* CPUx Core Identification Register */
#define CPU1_CORE_ID	(*( CPU0_CORE_ID_type *) 0xF883FE1CU)	/* CPUx Core Identification Register */
#define CPU2_CORE_ID	(*( CPU0_CORE_ID_type *) 0xF885FE1CU)	/* CPUx Core Identification Register */
#define CPU0_BIV	(*( CPU0_BIV_type *) 0xF881FE20U)	/* CPUx Base Interrupt Vector Table Pointer */
#define CPU1_BIV	(*( CPU0_BIV_type *) 0xF883FE20U)	/* CPUx Base Interrupt Vector Table Pointer */
#define CPU2_BIV	(*( CPU0_BIV_type *) 0xF885FE20U)	/* CPUx Base Interrupt Vector Table Pointer */
#define CPU0_BTV	(*( CPU0_BTV_type *) 0xF881FE24U)	/* CPUx Base Trap Vector Table Pointer */
#define CPU1_BTV	(*( CPU0_BTV_type *) 0xF883FE24U)	/* CPUx Base Trap Vector Table Pointer */
#define CPU2_BTV	(*( CPU0_BTV_type *) 0xF885FE24U)	/* CPUx Base Trap Vector Table Pointer */
#define CPU0_ISP	(*( CPU0_ISP_type *) 0xF881FE28U)	/* CPUx Interrupt Stack Pointer */
#define CPU1_ISP	(*( CPU0_ISP_type *) 0xF883FE28U)	/* CPUx Interrupt Stack Pointer */
#define CPU2_ISP	(*( CPU0_ISP_type *) 0xF885FE28U)	/* CPUx Interrupt Stack Pointer */
#define CPU0_ICR	(*( CPU0_ICR_type *) 0xF881FE2CU)	/* CPUx Interrupt Control Register */
#define CPU1_ICR	(*( CPU0_ICR_type *) 0xF883FE2CU)	/* CPUx Interrupt Control Register */
#define CPU2_ICR	(*( CPU0_ICR_type *) 0xF885FE2CU)	/* CPUx Interrupt Control Register */
#define CPU0_FCX	(*( CPU0_FCX_type *) 0xF881FE38U)	/* CPUx Free CSA List Head Pointer */
#define CPU1_FCX	(*( CPU0_FCX_type *) 0xF883FE38U)	/* CPUx Free CSA List Head Pointer */
#define CPU2_FCX	(*( CPU0_FCX_type *) 0xF885FE38U)	/* CPUx Free CSA List Head Pointer */
#define CPU0_LCX	(*( CPU0_LCX_type *) 0xF881FE3CU)	/* CPUx Free CSA List Limit Pointer */
#define CPU1_LCX	(*( CPU0_LCX_type *) 0xF883FE3CU)	/* CPUx Free CSA List Limit Pointer */
#define CPU2_LCX	(*( CPU0_LCX_type *) 0xF885FE3CU)	/* CPUx Free CSA List Limit Pointer */
#define CPU0_CUS_ID	(*( CPU0_CUS_ID_type *) 0xF881FE50U)	/* CPUx Customer ID register */
#define CPU1_CUS_ID	(*( CPU0_CUS_ID_type *) 0xF883FE50U)	/* CPUx Customer ID register */
#define CPU2_CUS_ID	(*( CPU0_CUS_ID_type *) 0xF885FE50U)	/* CPUx Customer ID register */
#define CPU0_D0	(*( CPU0_D0_type *) 0xF881FF00U)	/* CPUx Data General Purpose Register 0 */
#define CPU0_D1	(*( CPU0_D0_type *) 0xF881FF04U)	/* CPUx Data General Purpose Register 1 */
#define CPU0_D2	(*( CPU0_D0_type *) 0xF881FF08U)	/* CPUx Data General Purpose Register 2 */
#define CPU0_D3	(*( CPU0_D0_type *) 0xF881FF0CU)	/* CPUx Data General Purpose Register 3 */
#define CPU0_D4	(*( CPU0_D0_type *) 0xF881FF10U)	/* CPUx Data General Purpose Register 4 */
#define CPU0_D5	(*( CPU0_D0_type *) 0xF881FF14U)	/* CPUx Data General Purpose Register 5 */
#define CPU0_D6	(*( CPU0_D0_type *) 0xF881FF18U)	/* CPUx Data General Purpose Register 6 */
#define CPU0_D7	(*( CPU0_D0_type *) 0xF881FF1CU)	/* CPUx Data General Purpose Register 7 */
#define CPU0_D8	(*( CPU0_D0_type *) 0xF881FF20U)	/* CPUx Data General Purpose Register 8 */
#define CPU0_D9	(*( CPU0_D0_type *) 0xF881FF24U)	/* CPUx Data General Purpose Register 9 */
#define CPU0_D10	(*( CPU0_D0_type *) 0xF881FF28U)	/* CPUx Data General Purpose Register 10 */
#define CPU0_D11	(*( CPU0_D0_type *) 0xF881FF2CU)	/* CPUx Data General Purpose Register 11 */
#define CPU0_D12	(*( CPU0_D0_type *) 0xF881FF30U)	/* CPUx Data General Purpose Register 12 */
#define CPU0_D13	(*( CPU0_D0_type *) 0xF881FF34U)	/* CPUx Data General Purpose Register 13 */
#define CPU0_D14	(*( CPU0_D0_type *) 0xF881FF38U)	/* CPUx Data General Purpose Register 14 */
#define CPU0_D15	(*( CPU0_D0_type *) 0xF881FF3CU)	/* CPUx Data General Purpose Register 15 */
#define CPU1_D0	(*( CPU0_D0_type *) 0xF883FF00U)	/* CPUx Data General Purpose Register 0 */
#define CPU1_D1	(*( CPU0_D0_type *) 0xF883FF04U)	/* CPUx Data General Purpose Register 1 */
#define CPU1_D2	(*( CPU0_D0_type *) 0xF883FF08U)	/* CPUx Data General Purpose Register 2 */
#define CPU1_D3	(*( CPU0_D0_type *) 0xF883FF0CU)	/* CPUx Data General Purpose Register 3 */
#define CPU1_D4	(*( CPU0_D0_type *) 0xF883FF10U)	/* CPUx Data General Purpose Register 4 */
#define CPU1_D5	(*( CPU0_D0_type *) 0xF883FF14U)	/* CPUx Data General Purpose Register 5 */
#define CPU1_D6	(*( CPU0_D0_type *) 0xF883FF18U)	/* CPUx Data General Purpose Register 6 */
#define CPU1_D7	(*( CPU0_D0_type *) 0xF883FF1CU)	/* CPUx Data General Purpose Register 7 */
#define CPU1_D8	(*( CPU0_D0_type *) 0xF883FF20U)	/* CPUx Data General Purpose Register 8 */
#define CPU1_D9	(*( CPU0_D0_type *) 0xF883FF24U)	/* CPUx Data General Purpose Register 9 */
#define CPU1_D10	(*( CPU0_D0_type *) 0xF883FF28U)	/* CPUx Data General Purpose Register 10 */
#define CPU1_D11	(*( CPU0_D0_type *) 0xF883FF2CU)	/* CPUx Data General Purpose Register 11 */
#define CPU1_D12	(*( CPU0_D0_type *) 0xF883FF30U)	/* CPUx Data General Purpose Register 12 */
#define CPU1_D13	(*( CPU0_D0_type *) 0xF883FF34U)	/* CPUx Data General Purpose Register 13 */
#define CPU1_D14	(*( CPU0_D0_type *) 0xF883FF38U)	/* CPUx Data General Purpose Register 14 */
#define CPU1_D15	(*( CPU0_D0_type *) 0xF883FF3CU)	/* CPUx Data General Purpose Register 15 */
#define CPU2_D0	(*( CPU0_D0_type *) 0xF885FF00U)	/* CPUx Data General Purpose Register 0 */
#define CPU2_D1	(*( CPU0_D0_type *) 0xF885FF04U)	/* CPUx Data General Purpose Register 1 */
#define CPU2_D2	(*( CPU0_D0_type *) 0xF885FF08U)	/* CPUx Data General Purpose Register 2 */
#define CPU2_D3	(*( CPU0_D0_type *) 0xF885FF0CU)	/* CPUx Data General Purpose Register 3 */
#define CPU2_D4	(*( CPU0_D0_type *) 0xF885FF10U)	/* CPUx Data General Purpose Register 4 */
#define CPU2_D5	(*( CPU0_D0_type *) 0xF885FF14U)	/* CPUx Data General Purpose Register 5 */
#define CPU2_D6	(*( CPU0_D0_type *) 0xF885FF18U)	/* CPUx Data General Purpose Register 6 */
#define CPU2_D7	(*( CPU0_D0_type *) 0xF885FF1CU)	/* CPUx Data General Purpose Register 7 */
#define CPU2_D8	(*( CPU0_D0_type *) 0xF885FF20U)	/* CPUx Data General Purpose Register 8 */
#define CPU2_D9	(*( CPU0_D0_type *) 0xF885FF24U)	/* CPUx Data General Purpose Register 9 */
#define CPU2_D10	(*( CPU0_D0_type *) 0xF885FF28U)	/* CPUx Data General Purpose Register 10 */
#define CPU2_D11	(*( CPU0_D0_type *) 0xF885FF2CU)	/* CPUx Data General Purpose Register 11 */
#define CPU2_D12	(*( CPU0_D0_type *) 0xF885FF30U)	/* CPUx Data General Purpose Register 12 */
#define CPU2_D13	(*( CPU0_D0_type *) 0xF885FF34U)	/* CPUx Data General Purpose Register 13 */
#define CPU2_D14	(*( CPU0_D0_type *) 0xF885FF38U)	/* CPUx Data General Purpose Register 14 */
#define CPU2_D15	(*( CPU0_D0_type *) 0xF885FF3CU)	/* CPUx Data General Purpose Register 15 */
#define CPU0_A0	(*( CPU0_A0_type *) 0xF881FF80U)	/* CPUx Address General Purpose Register 0 */
#define CPU0_A1	(*( CPU0_A0_type *) 0xF881FF84U)	/* CPUx Address General Purpose Register 1 */
#define CPU0_A2	(*( CPU0_A0_type *) 0xF881FF88U)	/* CPUx Address General Purpose Register 2 */
#define CPU0_A3	(*( CPU0_A0_type *) 0xF881FF8CU)	/* CPUx Address General Purpose Register 3 */
#define CPU0_A4	(*( CPU0_A0_type *) 0xF881FF90U)	/* CPUx Address General Purpose Register 4 */
#define CPU0_A5	(*( CPU0_A0_type *) 0xF881FF94U)	/* CPUx Address General Purpose Register 5 */
#define CPU0_A6	(*( CPU0_A0_type *) 0xF881FF98U)	/* CPUx Address General Purpose Register 6 */
#define CPU0_A7	(*( CPU0_A0_type *) 0xF881FF9CU)	/* CPUx Address General Purpose Register 7 */
#define CPU0_A8	(*( CPU0_A0_type *) 0xF881FFA0U)	/* CPUx Address General Purpose Register 8 */
#define CPU0_A9	(*( CPU0_A0_type *) 0xF881FFA4U)	/* CPUx Address General Purpose Register 9 */
#define CPU0_A10	(*( CPU0_A0_type *) 0xF881FFA8U)	/* CPUx Address General Purpose Register 10 */
#define CPU0_A11	(*( CPU0_A0_type *) 0xF881FFACU)	/* CPUx Address General Purpose Register 11 */
#define CPU0_A12	(*( CPU0_A0_type *) 0xF881FFB0U)	/* CPUx Address General Purpose Register 12 */
#define CPU0_A13	(*( CPU0_A0_type *) 0xF881FFB4U)	/* CPUx Address General Purpose Register 13 */
#define CPU0_A14	(*( CPU0_A0_type *) 0xF881FFB8U)	/* CPUx Address General Purpose Register 14 */
#define CPU0_A15	(*( CPU0_A0_type *) 0xF881FFBCU)	/* CPUx Address General Purpose Register 15 */
#define CPU1_A0	(*( CPU0_A0_type *) 0xF883FF80U)	/* CPUx Address General Purpose Register 0 */
#define CPU1_A1	(*( CPU0_A0_type *) 0xF883FF84U)	/* CPUx Address General Purpose Register 1 */
#define CPU1_A2	(*( CPU0_A0_type *) 0xF883FF88U)	/* CPUx Address General Purpose Register 2 */
#define CPU1_A3	(*( CPU0_A0_type *) 0xF883FF8CU)	/* CPUx Address General Purpose Register 3 */
#define CPU1_A4	(*( CPU0_A0_type *) 0xF883FF90U)	/* CPUx Address General Purpose Register 4 */
#define CPU1_A5	(*( CPU0_A0_type *) 0xF883FF94U)	/* CPUx Address General Purpose Register 5 */
#define CPU1_A6	(*( CPU0_A0_type *) 0xF883FF98U)	/* CPUx Address General Purpose Register 6 */
#define CPU1_A7	(*( CPU0_A0_type *) 0xF883FF9CU)	/* CPUx Address General Purpose Register 7 */
#define CPU1_A8	(*( CPU0_A0_type *) 0xF883FFA0U)	/* CPUx Address General Purpose Register 8 */
#define CPU1_A9	(*( CPU0_A0_type *) 0xF883FFA4U)	/* CPUx Address General Purpose Register 9 */
#define CPU1_A10	(*( CPU0_A0_type *) 0xF883FFA8U)	/* CPUx Address General Purpose Register 10 */
#define CPU1_A11	(*( CPU0_A0_type *) 0xF883FFACU)	/* CPUx Address General Purpose Register 11 */
#define CPU1_A12	(*( CPU0_A0_type *) 0xF883FFB0U)	/* CPUx Address General Purpose Register 12 */
#define CPU1_A13	(*( CPU0_A0_type *) 0xF883FFB4U)	/* CPUx Address General Purpose Register 13 */
#define CPU1_A14	(*( CPU0_A0_type *) 0xF883FFB8U)	/* CPUx Address General Purpose Register 14 */
#define CPU1_A15	(*( CPU0_A0_type *) 0xF883FFBCU)	/* CPUx Address General Purpose Register 15 */
#define CPU2_A0	(*( CPU0_A0_type *) 0xF885FF80U)	/* CPUx Address General Purpose Register 0 */
#define CPU2_A1	(*( CPU0_A0_type *) 0xF885FF84U)	/* CPUx Address General Purpose Register 1 */
#define CPU2_A2	(*( CPU0_A0_type *) 0xF885FF88U)	/* CPUx Address General Purpose Register 2 */
#define CPU2_A3	(*( CPU0_A0_type *) 0xF885FF8CU)	/* CPUx Address General Purpose Register 3 */
#define CPU2_A4	(*( CPU0_A0_type *) 0xF885FF90U)	/* CPUx Address General Purpose Register 4 */
#define CPU2_A5	(*( CPU0_A0_type *) 0xF885FF94U)	/* CPUx Address General Purpose Register 5 */
#define CPU2_A6	(*( CPU0_A0_type *) 0xF885FF98U)	/* CPUx Address General Purpose Register 6 */
#define CPU2_A7	(*( CPU0_A0_type *) 0xF885FF9CU)	/* CPUx Address General Purpose Register 7 */
#define CPU2_A8	(*( CPU0_A0_type *) 0xF885FFA0U)	/* CPUx Address General Purpose Register 8 */
#define CPU2_A9	(*( CPU0_A0_type *) 0xF885FFA4U)	/* CPUx Address General Purpose Register 9 */
#define CPU2_A10	(*( CPU0_A0_type *) 0xF885FFA8U)	/* CPUx Address General Purpose Register 10 */
#define CPU2_A11	(*( CPU0_A0_type *) 0xF885FFACU)	/* CPUx Address General Purpose Register 11 */
#define CPU2_A12	(*( CPU0_A0_type *) 0xF885FFB0U)	/* CPUx Address General Purpose Register 12 */
#define CPU2_A13	(*( CPU0_A0_type *) 0xF885FFB4U)	/* CPUx Address General Purpose Register 13 */
#define CPU2_A14	(*( CPU0_A0_type *) 0xF885FFB8U)	/* CPUx Address General Purpose Register 14 */
#define CPU2_A15	(*( CPU0_A0_type *) 0xF885FFBCU)	/* CPUx Address General Purpose Register 15 */
#define CPU0_DPR0_L	(*( CPU0_DPR0_L_type *) 0xF881C000U)	/* CPUx Data Protection Range 0, Lower Bound Register */
#define CPU0_DPR1_L	(*( CPU0_DPR0_L_type *) 0xF881C008U)	/* CPUx Data Protection Range 1, Lower Bound Register */
#define CPU0_DPR2_L	(*( CPU0_DPR0_L_type *) 0xF881C010U)	/* CPUx Data Protection Range 2, Lower Bound Register */
#define CPU0_DPR3_L	(*( CPU0_DPR0_L_type *) 0xF881C018U)	/* CPUx Data Protection Range 3, Lower Bound Register */
#define CPU0_DPR4_L	(*( CPU0_DPR0_L_type *) 0xF881C020U)	/* CPUx Data Protection Range 4, Lower Bound Register */
#define CPU0_DPR5_L	(*( CPU0_DPR0_L_type *) 0xF881C028U)	/* CPUx Data Protection Range 5, Lower Bound Register */
#define CPU0_DPR6_L	(*( CPU0_DPR0_L_type *) 0xF881C030U)	/* CPUx Data Protection Range 6, Lower Bound Register */
#define CPU0_DPR7_L	(*( CPU0_DPR0_L_type *) 0xF881C038U)	/* CPUx Data Protection Range 7, Lower Bound Register */
#define CPU0_DPR8_L	(*( CPU0_DPR0_L_type *) 0xF881C040U)	/* CPUx Data Protection Range 8, Lower Bound Register */
#define CPU0_DPR9_L	(*( CPU0_DPR0_L_type *) 0xF881C048U)	/* CPUx Data Protection Range 9, Lower Bound Register */
#define CPU0_DPR10_L	(*( CPU0_DPR0_L_type *) 0xF881C050U)	/* CPUx Data Protection Range 10, Lower Bound Register */
#define CPU0_DPR11_L	(*( CPU0_DPR0_L_type *) 0xF881C058U)	/* CPUx Data Protection Range 11, Lower Bound Register */
#define CPU0_DPR12_L	(*( CPU0_DPR0_L_type *) 0xF881C060U)	/* CPUx Data Protection Range 12, Lower Bound Register */
#define CPU0_DPR13_L	(*( CPU0_DPR0_L_type *) 0xF881C068U)	/* CPUx Data Protection Range 13, Lower Bound Register */
#define CPU0_DPR14_L	(*( CPU0_DPR0_L_type *) 0xF881C070U)	/* CPUx Data Protection Range 14, Lower Bound Register */
#define CPU0_DPR15_L	(*( CPU0_DPR0_L_type *) 0xF881C078U)	/* CPUx Data Protection Range 15, Lower Bound Register */
#define CPU0_DPR16_L	(*( CPU0_DPR0_L_type *) 0xF881C080U)	/* CPUx Data Protection Range 16, Lower Bound Register */
#define CPU0_DPR17_L	(*( CPU0_DPR0_L_type *) 0xF881C088U)	/* CPUx Data Protection Range 17, Lower Bound Register */
#define CPU1_DPR0_L	(*( CPU0_DPR0_L_type *) 0xF883C000U)	/* CPUx Data Protection Range 0, Lower Bound Register */
#define CPU1_DPR1_L	(*( CPU0_DPR0_L_type *) 0xF883C008U)	/* CPUx Data Protection Range 1, Lower Bound Register */
#define CPU1_DPR2_L	(*( CPU0_DPR0_L_type *) 0xF883C010U)	/* CPUx Data Protection Range 2, Lower Bound Register */
#define CPU1_DPR3_L	(*( CPU0_DPR0_L_type *) 0xF883C018U)	/* CPUx Data Protection Range 3, Lower Bound Register */
#define CPU1_DPR4_L	(*( CPU0_DPR0_L_type *) 0xF883C020U)	/* CPUx Data Protection Range 4, Lower Bound Register */
#define CPU1_DPR5_L	(*( CPU0_DPR0_L_type *) 0xF883C028U)	/* CPUx Data Protection Range 5, Lower Bound Register */
#define CPU1_DPR6_L	(*( CPU0_DPR0_L_type *) 0xF883C030U)	/* CPUx Data Protection Range 6, Lower Bound Register */
#define CPU1_DPR7_L	(*( CPU0_DPR0_L_type *) 0xF883C038U)	/* CPUx Data Protection Range 7, Lower Bound Register */
#define CPU1_DPR8_L	(*( CPU0_DPR0_L_type *) 0xF883C040U)	/* CPUx Data Protection Range 8, Lower Bound Register */
#define CPU1_DPR9_L	(*( CPU0_DPR0_L_type *) 0xF883C048U)	/* CPUx Data Protection Range 9, Lower Bound Register */
#define CPU1_DPR10_L	(*( CPU0_DPR0_L_type *) 0xF883C050U)	/* CPUx Data Protection Range 10, Lower Bound Register */
#define CPU1_DPR11_L	(*( CPU0_DPR0_L_type *) 0xF883C058U)	/* CPUx Data Protection Range 11, Lower Bound Register */
#define CPU1_DPR12_L	(*( CPU0_DPR0_L_type *) 0xF883C060U)	/* CPUx Data Protection Range 12, Lower Bound Register */
#define CPU1_DPR13_L	(*( CPU0_DPR0_L_type *) 0xF883C068U)	/* CPUx Data Protection Range 13, Lower Bound Register */
#define CPU1_DPR14_L	(*( CPU0_DPR0_L_type *) 0xF883C070U)	/* CPUx Data Protection Range 14, Lower Bound Register */
#define CPU1_DPR15_L	(*( CPU0_DPR0_L_type *) 0xF883C078U)	/* CPUx Data Protection Range 15, Lower Bound Register */
#define CPU1_DPR16_L	(*( CPU0_DPR0_L_type *) 0xF883C080U)	/* CPUx Data Protection Range 16, Lower Bound Register */
#define CPU1_DPR17_L	(*( CPU0_DPR0_L_type *) 0xF883C088U)	/* CPUx Data Protection Range 17, Lower Bound Register */
#define CPU2_DPR0_L	(*( CPU0_DPR0_L_type *) 0xF885C000U)	/* CPUx Data Protection Range 0, Lower Bound Register */
#define CPU2_DPR1_L	(*( CPU0_DPR0_L_type *) 0xF885C008U)	/* CPUx Data Protection Range 1, Lower Bound Register */
#define CPU2_DPR2_L	(*( CPU0_DPR0_L_type *) 0xF885C010U)	/* CPUx Data Protection Range 2, Lower Bound Register */
#define CPU2_DPR3_L	(*( CPU0_DPR0_L_type *) 0xF885C018U)	/* CPUx Data Protection Range 3, Lower Bound Register */
#define CPU2_DPR4_L	(*( CPU0_DPR0_L_type *) 0xF885C020U)	/* CPUx Data Protection Range 4, Lower Bound Register */
#define CPU2_DPR5_L	(*( CPU0_DPR0_L_type *) 0xF885C028U)	/* CPUx Data Protection Range 5, Lower Bound Register */
#define CPU2_DPR6_L	(*( CPU0_DPR0_L_type *) 0xF885C030U)	/* CPUx Data Protection Range 6, Lower Bound Register */
#define CPU2_DPR7_L	(*( CPU0_DPR0_L_type *) 0xF885C038U)	/* CPUx Data Protection Range 7, Lower Bound Register */
#define CPU2_DPR8_L	(*( CPU0_DPR0_L_type *) 0xF885C040U)	/* CPUx Data Protection Range 8, Lower Bound Register */
#define CPU2_DPR9_L	(*( CPU0_DPR0_L_type *) 0xF885C048U)	/* CPUx Data Protection Range 9, Lower Bound Register */
#define CPU2_DPR10_L	(*( CPU0_DPR0_L_type *) 0xF885C050U)	/* CPUx Data Protection Range 10, Lower Bound Register */
#define CPU2_DPR11_L	(*( CPU0_DPR0_L_type *) 0xF885C058U)	/* CPUx Data Protection Range 11, Lower Bound Register */
#define CPU2_DPR12_L	(*( CPU0_DPR0_L_type *) 0xF885C060U)	/* CPUx Data Protection Range 12, Lower Bound Register */
#define CPU2_DPR13_L	(*( CPU0_DPR0_L_type *) 0xF885C068U)	/* CPUx Data Protection Range 13, Lower Bound Register */
#define CPU2_DPR14_L	(*( CPU0_DPR0_L_type *) 0xF885C070U)	/* CPUx Data Protection Range 14, Lower Bound Register */
#define CPU2_DPR15_L	(*( CPU0_DPR0_L_type *) 0xF885C078U)	/* CPUx Data Protection Range 15, Lower Bound Register */
#define CPU2_DPR16_L	(*( CPU0_DPR0_L_type *) 0xF885C080U)	/* CPUx Data Protection Range 16, Lower Bound Register */
#define CPU2_DPR17_L	(*( CPU0_DPR0_L_type *) 0xF885C088U)	/* CPUx Data Protection Range 17, Lower Bound Register */
#define CPU0_DPR0_U	(*( CPU0_DPR0_U_type *) 0xF881C004U)	/* CPUx Data Protection Range 0, Upper Bound Register */
#define CPU0_DPR1_U	(*( CPU0_DPR0_U_type *) 0xF881C00CU)	/* CPUx Data Protection Range 1, Upper Bound Register */
#define CPU0_DPR2_U	(*( CPU0_DPR0_U_type *) 0xF881C014U)	/* CPUx Data Protection Range 2, Upper Bound Register */
#define CPU0_DPR3_U	(*( CPU0_DPR0_U_type *) 0xF881C01CU)	/* CPUx Data Protection Range 3, Upper Bound Register */
#define CPU0_DPR4_U	(*( CPU0_DPR0_U_type *) 0xF881C024U)	/* CPUx Data Protection Range 4, Upper Bound Register */
#define CPU0_DPR5_U	(*( CPU0_DPR0_U_type *) 0xF881C02CU)	/* CPUx Data Protection Range 5, Upper Bound Register */
#define CPU0_DPR6_U	(*( CPU0_DPR0_U_type *) 0xF881C034U)	/* CPUx Data Protection Range 6, Upper Bound Register */
#define CPU0_DPR7_U	(*( CPU0_DPR0_U_type *) 0xF881C03CU)	/* CPUx Data Protection Range 7, Upper Bound Register */
#define CPU0_DPR8_U	(*( CPU0_DPR0_U_type *) 0xF881C044U)	/* CPUx Data Protection Range 8, Upper Bound Register */
#define CPU0_DPR9_U	(*( CPU0_DPR0_U_type *) 0xF881C04CU)	/* CPUx Data Protection Range 9, Upper Bound Register */
#define CPU0_DPR10_U	(*( CPU0_DPR0_U_type *) 0xF881C054U)	/* CPUx Data Protection Range 10, Upper Bound Register */
#define CPU0_DPR11_U	(*( CPU0_DPR0_U_type *) 0xF881C05CU)	/* CPUx Data Protection Range 11, Upper Bound Register */
#define CPU0_DPR12_U	(*( CPU0_DPR0_U_type *) 0xF881C064U)	/* CPUx Data Protection Range 12, Upper Bound Register */
#define CPU0_DPR13_U	(*( CPU0_DPR0_U_type *) 0xF881C06CU)	/* CPUx Data Protection Range 13, Upper Bound Register */
#define CPU0_DPR14_U	(*( CPU0_DPR0_U_type *) 0xF881C074U)	/* CPUx Data Protection Range 14, Upper Bound Register */
#define CPU0_DPR15_U	(*( CPU0_DPR0_U_type *) 0xF881C07CU)	/* CPUx Data Protection Range 15, Upper Bound Register */
#define CPU0_DPR16_U	(*( CPU0_DPR0_U_type *) 0xF881C084U)	/* CPUx Data Protection Range 16, Upper Bound Register */
#define CPU0_DPR17_U	(*( CPU0_DPR0_U_type *) 0xF881C08CU)	/* CPUx Data Protection Range 17, Upper Bound Register */
#define CPU1_DPR0_U	(*( CPU0_DPR0_U_type *) 0xF883C004U)	/* CPUx Data Protection Range 0, Upper Bound Register */
#define CPU1_DPR1_U	(*( CPU0_DPR0_U_type *) 0xF883C00CU)	/* CPUx Data Protection Range 1, Upper Bound Register */
#define CPU1_DPR2_U	(*( CPU0_DPR0_U_type *) 0xF883C014U)	/* CPUx Data Protection Range 2, Upper Bound Register */
#define CPU1_DPR3_U	(*( CPU0_DPR0_U_type *) 0xF883C01CU)	/* CPUx Data Protection Range 3, Upper Bound Register */
#define CPU1_DPR4_U	(*( CPU0_DPR0_U_type *) 0xF883C024U)	/* CPUx Data Protection Range 4, Upper Bound Register */
#define CPU1_DPR5_U	(*( CPU0_DPR0_U_type *) 0xF883C02CU)	/* CPUx Data Protection Range 5, Upper Bound Register */
#define CPU1_DPR6_U	(*( CPU0_DPR0_U_type *) 0xF883C034U)	/* CPUx Data Protection Range 6, Upper Bound Register */
#define CPU1_DPR7_U	(*( CPU0_DPR0_U_type *) 0xF883C03CU)	/* CPUx Data Protection Range 7, Upper Bound Register */
#define CPU1_DPR8_U	(*( CPU0_DPR0_U_type *) 0xF883C044U)	/* CPUx Data Protection Range 8, Upper Bound Register */
#define CPU1_DPR9_U	(*( CPU0_DPR0_U_type *) 0xF883C04CU)	/* CPUx Data Protection Range 9, Upper Bound Register */
#define CPU1_DPR10_U	(*( CPU0_DPR0_U_type *) 0xF883C054U)	/* CPUx Data Protection Range 10, Upper Bound Register */
#define CPU1_DPR11_U	(*( CPU0_DPR0_U_type *) 0xF883C05CU)	/* CPUx Data Protection Range 11, Upper Bound Register */
#define CPU1_DPR12_U	(*( CPU0_DPR0_U_type *) 0xF883C064U)	/* CPUx Data Protection Range 12, Upper Bound Register */
#define CPU1_DPR13_U	(*( CPU0_DPR0_U_type *) 0xF883C06CU)	/* CPUx Data Protection Range 13, Upper Bound Register */
#define CPU1_DPR14_U	(*( CPU0_DPR0_U_type *) 0xF883C074U)	/* CPUx Data Protection Range 14, Upper Bound Register */
#define CPU1_DPR15_U	(*( CPU0_DPR0_U_type *) 0xF883C07CU)	/* CPUx Data Protection Range 15, Upper Bound Register */
#define CPU1_DPR16_U	(*( CPU0_DPR0_U_type *) 0xF883C084U)	/* CPUx Data Protection Range 16, Upper Bound Register */
#define CPU1_DPR17_U	(*( CPU0_DPR0_U_type *) 0xF883C08CU)	/* CPUx Data Protection Range 17, Upper Bound Register */
#define CPU2_DPR0_U	(*( CPU0_DPR0_U_type *) 0xF885C004U)	/* CPUx Data Protection Range 0, Upper Bound Register */
#define CPU2_DPR1_U	(*( CPU0_DPR0_U_type *) 0xF885C00CU)	/* CPUx Data Protection Range 1, Upper Bound Register */
#define CPU2_DPR2_U	(*( CPU0_DPR0_U_type *) 0xF885C014U)	/* CPUx Data Protection Range 2, Upper Bound Register */
#define CPU2_DPR3_U	(*( CPU0_DPR0_U_type *) 0xF885C01CU)	/* CPUx Data Protection Range 3, Upper Bound Register */
#define CPU2_DPR4_U	(*( CPU0_DPR0_U_type *) 0xF885C024U)	/* CPUx Data Protection Range 4, Upper Bound Register */
#define CPU2_DPR5_U	(*( CPU0_DPR0_U_type *) 0xF885C02CU)	/* CPUx Data Protection Range 5, Upper Bound Register */
#define CPU2_DPR6_U	(*( CPU0_DPR0_U_type *) 0xF885C034U)	/* CPUx Data Protection Range 6, Upper Bound Register */
#define CPU2_DPR7_U	(*( CPU0_DPR0_U_type *) 0xF885C03CU)	/* CPUx Data Protection Range 7, Upper Bound Register */
#define CPU2_DPR8_U	(*( CPU0_DPR0_U_type *) 0xF885C044U)	/* CPUx Data Protection Range 8, Upper Bound Register */
#define CPU2_DPR9_U	(*( CPU0_DPR0_U_type *) 0xF885C04CU)	/* CPUx Data Protection Range 9, Upper Bound Register */
#define CPU2_DPR10_U	(*( CPU0_DPR0_U_type *) 0xF885C054U)	/* CPUx Data Protection Range 10, Upper Bound Register */
#define CPU2_DPR11_U	(*( CPU0_DPR0_U_type *) 0xF885C05CU)	/* CPUx Data Protection Range 11, Upper Bound Register */
#define CPU2_DPR12_U	(*( CPU0_DPR0_U_type *) 0xF885C064U)	/* CPUx Data Protection Range 12, Upper Bound Register */
#define CPU2_DPR13_U	(*( CPU0_DPR0_U_type *) 0xF885C06CU)	/* CPUx Data Protection Range 13, Upper Bound Register */
#define CPU2_DPR14_U	(*( CPU0_DPR0_U_type *) 0xF885C074U)	/* CPUx Data Protection Range 14, Upper Bound Register */
#define CPU2_DPR15_U	(*( CPU0_DPR0_U_type *) 0xF885C07CU)	/* CPUx Data Protection Range 15, Upper Bound Register */
#define CPU2_DPR16_U	(*( CPU0_DPR0_U_type *) 0xF885C084U)	/* CPUx Data Protection Range 16, Upper Bound Register */
#define CPU2_DPR17_U	(*( CPU0_DPR0_U_type *) 0xF885C08CU)	/* CPUx Data Protection Range 17, Upper Bound Register */
#define CPU0_CPR0_L	(*( CPU0_CPR0_L_type *) 0xF881D000U)	/* CPUx Code Protection Range 0 Lower Bound Register */
#define CPU0_CPR1_L	(*( CPU0_CPR0_L_type *) 0xF881D008U)	/* CPUx Code Protection Range 1 Lower Bound Register */
#define CPU0_CPR2_L	(*( CPU0_CPR0_L_type *) 0xF881D010U)	/* CPUx Code Protection Range 2 Lower Bound Register */
#define CPU0_CPR3_L	(*( CPU0_CPR0_L_type *) 0xF881D018U)	/* CPUx Code Protection Range 3 Lower Bound Register */
#define CPU0_CPR4_L	(*( CPU0_CPR0_L_type *) 0xF881D020U)	/* CPUx Code Protection Range 4 Lower Bound Register */
#define CPU0_CPR5_L	(*( CPU0_CPR0_L_type *) 0xF881D028U)	/* CPUx Code Protection Range 5 Lower Bound Register */
#define CPU0_CPR6_L	(*( CPU0_CPR0_L_type *) 0xF881D030U)	/* CPUx Code Protection Range 6 Lower Bound Register */
#define CPU0_CPR7_L	(*( CPU0_CPR0_L_type *) 0xF881D038U)	/* CPUx Code Protection Range 7 Lower Bound Register */
#define CPU0_CPR8_L	(*( CPU0_CPR0_L_type *) 0xF881D040U)	/* CPUx Code Protection Range 8 Lower Bound Register */
#define CPU0_CPR9_L	(*( CPU0_CPR0_L_type *) 0xF881D048U)	/* CPUx Code Protection Range 9 Lower Bound Register */
#define CPU1_CPR0_L	(*( CPU0_CPR0_L_type *) 0xF883D000U)	/* CPUx Code Protection Range 0 Lower Bound Register */
#define CPU1_CPR1_L	(*( CPU0_CPR0_L_type *) 0xF883D008U)	/* CPUx Code Protection Range 1 Lower Bound Register */
#define CPU1_CPR2_L	(*( CPU0_CPR0_L_type *) 0xF883D010U)	/* CPUx Code Protection Range 2 Lower Bound Register */
#define CPU1_CPR3_L	(*( CPU0_CPR0_L_type *) 0xF883D018U)	/* CPUx Code Protection Range 3 Lower Bound Register */
#define CPU1_CPR4_L	(*( CPU0_CPR0_L_type *) 0xF883D020U)	/* CPUx Code Protection Range 4 Lower Bound Register */
#define CPU1_CPR5_L	(*( CPU0_CPR0_L_type *) 0xF883D028U)	/* CPUx Code Protection Range 5 Lower Bound Register */
#define CPU1_CPR6_L	(*( CPU0_CPR0_L_type *) 0xF883D030U)	/* CPUx Code Protection Range 6 Lower Bound Register */
#define CPU1_CPR7_L	(*( CPU0_CPR0_L_type *) 0xF883D038U)	/* CPUx Code Protection Range 7 Lower Bound Register */
#define CPU1_CPR8_L	(*( CPU0_CPR0_L_type *) 0xF883D040U)	/* CPUx Code Protection Range 8 Lower Bound Register */
#define CPU1_CPR9_L	(*( CPU0_CPR0_L_type *) 0xF883D048U)	/* CPUx Code Protection Range 9 Lower Bound Register */
#define CPU2_CPR0_L	(*( CPU0_CPR0_L_type *) 0xF885D000U)	/* CPUx Code Protection Range 0 Lower Bound Register */
#define CPU2_CPR1_L	(*( CPU0_CPR0_L_type *) 0xF885D008U)	/* CPUx Code Protection Range 1 Lower Bound Register */
#define CPU2_CPR2_L	(*( CPU0_CPR0_L_type *) 0xF885D010U)	/* CPUx Code Protection Range 2 Lower Bound Register */
#define CPU2_CPR3_L	(*( CPU0_CPR0_L_type *) 0xF885D018U)	/* CPUx Code Protection Range 3 Lower Bound Register */
#define CPU2_CPR4_L	(*( CPU0_CPR0_L_type *) 0xF885D020U)	/* CPUx Code Protection Range 4 Lower Bound Register */
#define CPU2_CPR5_L	(*( CPU0_CPR0_L_type *) 0xF885D028U)	/* CPUx Code Protection Range 5 Lower Bound Register */
#define CPU2_CPR6_L	(*( CPU0_CPR0_L_type *) 0xF885D030U)	/* CPUx Code Protection Range 6 Lower Bound Register */
#define CPU2_CPR7_L	(*( CPU0_CPR0_L_type *) 0xF885D038U)	/* CPUx Code Protection Range 7 Lower Bound Register */
#define CPU2_CPR8_L	(*( CPU0_CPR0_L_type *) 0xF885D040U)	/* CPUx Code Protection Range 8 Lower Bound Register */
#define CPU2_CPR9_L	(*( CPU0_CPR0_L_type *) 0xF885D048U)	/* CPUx Code Protection Range 9 Lower Bound Register */
#define CPU0_CPR0_U	(*( CPU0_CPR0_U_type *) 0xF881D004U)	/* CPUx Code Protection Range 0 Upper Bound Register */
#define CPU0_CPR1_U	(*( CPU0_CPR0_U_type *) 0xF881D00CU)	/* CPUx Code Protection Range 1 Upper Bound Register */
#define CPU0_CPR2_U	(*( CPU0_CPR0_U_type *) 0xF881D014U)	/* CPUx Code Protection Range 2 Upper Bound Register */
#define CPU0_CPR3_U	(*( CPU0_CPR0_U_type *) 0xF881D01CU)	/* CPUx Code Protection Range 3 Upper Bound Register */
#define CPU0_CPR4_U	(*( CPU0_CPR0_U_type *) 0xF881D024U)	/* CPUx Code Protection Range 4 Upper Bound Register */
#define CPU0_CPR5_U	(*( CPU0_CPR0_U_type *) 0xF881D02CU)	/* CPUx Code Protection Range 5 Upper Bound Register */
#define CPU0_CPR6_U	(*( CPU0_CPR0_U_type *) 0xF881D034U)	/* CPUx Code Protection Range 6 Upper Bound Register */
#define CPU0_CPR7_U	(*( CPU0_CPR0_U_type *) 0xF881D03CU)	/* CPUx Code Protection Range 7 Upper Bound Register */
#define CPU0_CPR8_U	(*( CPU0_CPR0_U_type *) 0xF881D044U)	/* CPUx Code Protection Range 8 Upper Bound Register */
#define CPU0_CPR9_U	(*( CPU0_CPR0_U_type *) 0xF881D04CU)	/* CPUx Code Protection Range 9 Upper Bound Register */
#define CPU1_CPR0_U	(*( CPU0_CPR0_U_type *) 0xF883D004U)	/* CPUx Code Protection Range 0 Upper Bound Register */
#define CPU1_CPR1_U	(*( CPU0_CPR0_U_type *) 0xF883D00CU)	/* CPUx Code Protection Range 1 Upper Bound Register */
#define CPU1_CPR2_U	(*( CPU0_CPR0_U_type *) 0xF883D014U)	/* CPUx Code Protection Range 2 Upper Bound Register */
#define CPU1_CPR3_U	(*( CPU0_CPR0_U_type *) 0xF883D01CU)	/* CPUx Code Protection Range 3 Upper Bound Register */
#define CPU1_CPR4_U	(*( CPU0_CPR0_U_type *) 0xF883D024U)	/* CPUx Code Protection Range 4 Upper Bound Register */
#define CPU1_CPR5_U	(*( CPU0_CPR0_U_type *) 0xF883D02CU)	/* CPUx Code Protection Range 5 Upper Bound Register */
#define CPU1_CPR6_U	(*( CPU0_CPR0_U_type *) 0xF883D034U)	/* CPUx Code Protection Range 6 Upper Bound Register */
#define CPU1_CPR7_U	(*( CPU0_CPR0_U_type *) 0xF883D03CU)	/* CPUx Code Protection Range 7 Upper Bound Register */
#define CPU1_CPR8_U	(*( CPU0_CPR0_U_type *) 0xF883D044U)	/* CPUx Code Protection Range 8 Upper Bound Register */
#define CPU1_CPR9_U	(*( CPU0_CPR0_U_type *) 0xF883D04CU)	/* CPUx Code Protection Range 9 Upper Bound Register */
#define CPU2_CPR0_U	(*( CPU0_CPR0_U_type *) 0xF885D004U)	/* CPUx Code Protection Range 0 Upper Bound Register */
#define CPU2_CPR1_U	(*( CPU0_CPR0_U_type *) 0xF885D00CU)	/* CPUx Code Protection Range 1 Upper Bound Register */
#define CPU2_CPR2_U	(*( CPU0_CPR0_U_type *) 0xF885D014U)	/* CPUx Code Protection Range 2 Upper Bound Register */
#define CPU2_CPR3_U	(*( CPU0_CPR0_U_type *) 0xF885D01CU)	/* CPUx Code Protection Range 3 Upper Bound Register */
#define CPU2_CPR4_U	(*( CPU0_CPR0_U_type *) 0xF885D024U)	/* CPUx Code Protection Range 4 Upper Bound Register */
#define CPU2_CPR5_U	(*( CPU0_CPR0_U_type *) 0xF885D02CU)	/* CPUx Code Protection Range 5 Upper Bound Register */
#define CPU2_CPR6_U	(*( CPU0_CPR0_U_type *) 0xF885D034U)	/* CPUx Code Protection Range 6 Upper Bound Register */
#define CPU2_CPR7_U	(*( CPU0_CPR0_U_type *) 0xF885D03CU)	/* CPUx Code Protection Range 7 Upper Bound Register */
#define CPU2_CPR8_U	(*( CPU0_CPR0_U_type *) 0xF885D044U)	/* CPUx Code Protection Range 8 Upper Bound Register */
#define CPU2_CPR9_U	(*( CPU0_CPR0_U_type *) 0xF885D04CU)	/* CPUx Code Protection Range 9 Upper Bound Register */
#define CPU0_CPXE_0	(*( CPU0_CPXE_0_type *) 0xF881E000U)	/* CPUx Code Protection Execute Enable Register Set 0 */
#define CPU0_CPXE_1	(*( CPU0_CPXE_0_type *) 0xF881E004U)	/* CPUx Code Protection Execute Enable Register Set 1 */
#define CPU0_CPXE_2	(*( CPU0_CPXE_0_type *) 0xF881E008U)	/* CPUx Code Protection Execute Enable Register Set 2 */
#define CPU0_CPXE_3	(*( CPU0_CPXE_0_type *) 0xF881E00CU)	/* CPUx Code Protection Execute Enable Register Set 3 */
#define CPU1_CPXE_0	(*( CPU0_CPXE_0_type *) 0xF883E000U)	/* CPUx Code Protection Execute Enable Register Set 0 */
#define CPU1_CPXE_1	(*( CPU0_CPXE_0_type *) 0xF883E004U)	/* CPUx Code Protection Execute Enable Register Set 1 */
#define CPU1_CPXE_2	(*( CPU0_CPXE_0_type *) 0xF883E008U)	/* CPUx Code Protection Execute Enable Register Set 2 */
#define CPU1_CPXE_3	(*( CPU0_CPXE_0_type *) 0xF883E00CU)	/* CPUx Code Protection Execute Enable Register Set 3 */
#define CPU2_CPXE_0	(*( CPU0_CPXE_0_type *) 0xF885E000U)	/* CPUx Code Protection Execute Enable Register Set 0 */
#define CPU2_CPXE_1	(*( CPU0_CPXE_0_type *) 0xF885E004U)	/* CPUx Code Protection Execute Enable Register Set 1 */
#define CPU2_CPXE_2	(*( CPU0_CPXE_0_type *) 0xF885E008U)	/* CPUx Code Protection Execute Enable Register Set 2 */
#define CPU2_CPXE_3	(*( CPU0_CPXE_0_type *) 0xF885E00CU)	/* CPUx Code Protection Execute Enable Register Set 3 */
#define CPU0_CPXE_4	(*( CPU0_CPXE_0_type *) 0xF881E040U)	/* CPUx Code Protection Execute Enable Register Set 4 */
#define CPU0_CPXE_5	(*( CPU0_CPXE_0_type *) 0xF881E044U)	/* CPUx Code Protection Execute Enable Register Set 5 */
#define CPU1_CPXE_4	(*( CPU0_CPXE_0_type *) 0xF883E040U)	/* CPUx Code Protection Execute Enable Register Set 4 */
#define CPU1_CPXE_5	(*( CPU0_CPXE_0_type *) 0xF883E044U)	/* CPUx Code Protection Execute Enable Register Set 5 */
#define CPU2_CPXE_4	(*( CPU0_CPXE_0_type *) 0xF885E040U)	/* CPUx Code Protection Execute Enable Register Set 4 */
#define CPU2_CPXE_5	(*( CPU0_CPXE_0_type *) 0xF885E044U)	/* CPUx Code Protection Execute Enable Register Set 5 */
#define CPU0_DPRE_0	(*( CPU0_DPRE_0_type *) 0xF881E010U)	/* CPUx Data Protection Read Enable Register Set 0 */
#define CPU0_DPRE_1	(*( CPU0_DPRE_0_type *) 0xF881E014U)	/* CPUx Data Protection Read Enable Register Set 1 */
#define CPU0_DPRE_2	(*( CPU0_DPRE_0_type *) 0xF881E018U)	/* CPUx Data Protection Read Enable Register Set 2 */
#define CPU0_DPRE_3	(*( CPU0_DPRE_0_type *) 0xF881E01CU)	/* CPUx Data Protection Read Enable Register Set 3 */
#define CPU1_DPRE_0	(*( CPU0_DPRE_0_type *) 0xF883E010U)	/* CPUx Data Protection Read Enable Register Set 0 */
#define CPU1_DPRE_1	(*( CPU0_DPRE_0_type *) 0xF883E014U)	/* CPUx Data Protection Read Enable Register Set 1 */
#define CPU1_DPRE_2	(*( CPU0_DPRE_0_type *) 0xF883E018U)	/* CPUx Data Protection Read Enable Register Set 2 */
#define CPU1_DPRE_3	(*( CPU0_DPRE_0_type *) 0xF883E01CU)	/* CPUx Data Protection Read Enable Register Set 3 */
#define CPU2_DPRE_0	(*( CPU0_DPRE_0_type *) 0xF885E010U)	/* CPUx Data Protection Read Enable Register Set 0 */
#define CPU2_DPRE_1	(*( CPU0_DPRE_0_type *) 0xF885E014U)	/* CPUx Data Protection Read Enable Register Set 1 */
#define CPU2_DPRE_2	(*( CPU0_DPRE_0_type *) 0xF885E018U)	/* CPUx Data Protection Read Enable Register Set 2 */
#define CPU2_DPRE_3	(*( CPU0_DPRE_0_type *) 0xF885E01CU)	/* CPUx Data Protection Read Enable Register Set 3 */
#define CPU0_DPRE_4	(*( CPU0_DPRE_0_type *) 0xF881E050U)	/* CPUx Data Protection Read Enable Register Set 4 */
#define CPU0_DPRE_5	(*( CPU0_DPRE_0_type *) 0xF881E054U)	/* CPUx Data Protection Read Enable Register Set 5 */
#define CPU1_DPRE_4	(*( CPU0_DPRE_0_type *) 0xF883E050U)	/* CPUx Data Protection Read Enable Register Set 4 */
#define CPU1_DPRE_5	(*( CPU0_DPRE_0_type *) 0xF883E054U)	/* CPUx Data Protection Read Enable Register Set 5 */
#define CPU2_DPRE_4	(*( CPU0_DPRE_0_type *) 0xF885E050U)	/* CPUx Data Protection Read Enable Register Set 4 */
#define CPU2_DPRE_5	(*( CPU0_DPRE_0_type *) 0xF885E054U)	/* CPUx Data Protection Read Enable Register Set 5 */
#define CPU0_DPWE_0	(*( CPU0_DPWE_0_type *) 0xF881E020U)	/* CPUx Data Protection Write Enable Register Set 0 */
#define CPU0_DPWE_1	(*( CPU0_DPWE_0_type *) 0xF881E024U)	/* CPUx Data Protection Write Enable Register Set 1 */
#define CPU0_DPWE_2	(*( CPU0_DPWE_0_type *) 0xF881E028U)	/* CPUx Data Protection Write Enable Register Set 2 */
#define CPU0_DPWE_3	(*( CPU0_DPWE_0_type *) 0xF881E02CU)	/* CPUx Data Protection Write Enable Register Set 3 */
#define CPU1_DPWE_0	(*( CPU0_DPWE_0_type *) 0xF883E020U)	/* CPUx Data Protection Write Enable Register Set 0 */
#define CPU1_DPWE_1	(*( CPU0_DPWE_0_type *) 0xF883E024U)	/* CPUx Data Protection Write Enable Register Set 1 */
#define CPU1_DPWE_2	(*( CPU0_DPWE_0_type *) 0xF883E028U)	/* CPUx Data Protection Write Enable Register Set 2 */
#define CPU1_DPWE_3	(*( CPU0_DPWE_0_type *) 0xF883E02CU)	/* CPUx Data Protection Write Enable Register Set 3 */
#define CPU2_DPWE_0	(*( CPU0_DPWE_0_type *) 0xF885E020U)	/* CPUx Data Protection Write Enable Register Set 0 */
#define CPU2_DPWE_1	(*( CPU0_DPWE_0_type *) 0xF885E024U)	/* CPUx Data Protection Write Enable Register Set 1 */
#define CPU2_DPWE_2	(*( CPU0_DPWE_0_type *) 0xF885E028U)	/* CPUx Data Protection Write Enable Register Set 2 */
#define CPU2_DPWE_3	(*( CPU0_DPWE_0_type *) 0xF885E02CU)	/* CPUx Data Protection Write Enable Register Set 3 */
#define CPU0_DPWE_4	(*( CPU0_DPWE_0_type *) 0xF881E060U)	/* CPUx Data Protection Write Enable Register Set 4 */
#define CPU0_DPWE_5	(*( CPU0_DPWE_0_type *) 0xF881E064U)	/* CPUx Data Protection Write Enable Register Set 5 */
#define CPU1_DPWE_4	(*( CPU0_DPWE_0_type *) 0xF883E060U)	/* CPUx Data Protection Write Enable Register Set 4 */
#define CPU1_DPWE_5	(*( CPU0_DPWE_0_type *) 0xF883E064U)	/* CPUx Data Protection Write Enable Register Set 5 */
#define CPU2_DPWE_4	(*( CPU0_DPWE_0_type *) 0xF885E060U)	/* CPUx Data Protection Write Enable Register Set 4 */
#define CPU2_DPWE_5	(*( CPU0_DPWE_0_type *) 0xF885E064U)	/* CPUx Data Protection Write Enable Register Set 5 */
#define CPU0_TPS_CON	(*( CPU0_TPS_CON_type *) 0xF881E400U)	/* CPUx Temporal Protection System Control Register */
#define CPU1_TPS_CON	(*( CPU0_TPS_CON_type *) 0xF883E400U)	/* CPUx Temporal Protection System Control Register */
#define CPU2_TPS_CON	(*( CPU0_TPS_CON_type *) 0xF885E400U)	/* CPUx Temporal Protection System Control Register */
#define CPU0_TPS_TIMER0	(*( CPU0_TPS_TIMER0_type *) 0xF881E404U)	/* CPUx Temporal Protection System Timer Register 0 */
#define CPU0_TPS_TIMER1	(*( CPU0_TPS_TIMER0_type *) 0xF881E408U)	/* CPUx Temporal Protection System Timer Register 1 */
#define CPU0_TPS_TIMER2	(*( CPU0_TPS_TIMER0_type *) 0xF881E40CU)	/* CPUx Temporal Protection System Timer Register 2 */
#define CPU1_TPS_TIMER0	(*( CPU0_TPS_TIMER0_type *) 0xF883E404U)	/* CPUx Temporal Protection System Timer Register 0 */
#define CPU1_TPS_TIMER1	(*( CPU0_TPS_TIMER0_type *) 0xF883E408U)	/* CPUx Temporal Protection System Timer Register 1 */
#define CPU1_TPS_TIMER2	(*( CPU0_TPS_TIMER0_type *) 0xF883E40CU)	/* CPUx Temporal Protection System Timer Register 2 */
#define CPU2_TPS_TIMER0	(*( CPU0_TPS_TIMER0_type *) 0xF885E404U)	/* CPUx Temporal Protection System Timer Register 0 */
#define CPU2_TPS_TIMER1	(*( CPU0_TPS_TIMER0_type *) 0xF885E408U)	/* CPUx Temporal Protection System Timer Register 1 */
#define CPU2_TPS_TIMER2	(*( CPU0_TPS_TIMER0_type *) 0xF885E40CU)	/* CPUx Temporal Protection System Timer Register 2 */
#define CPU0_TPS_EXTIM_ENTRY_LVAL	(*( CPU0_TPS_EXTIM_ENTRY_LVAL_type *) 0xF881E440U)	/* CPUx Exception Entry Timer Load Value */
#define CPU1_TPS_EXTIM_ENTRY_LVAL	(*( CPU0_TPS_EXTIM_ENTRY_LVAL_type *) 0xF883E440U)	/* CPUx Exception Entry Timer Load Value */
#define CPU2_TPS_EXTIM_ENTRY_LVAL	(*( CPU0_TPS_EXTIM_ENTRY_LVAL_type *) 0xF885E440U)	/* CPUx Exception Entry Timer Load Value */
#define CPU0_TPS_EXTIM_ENTRY_CVAL	(*( CPU0_TPS_EXTIM_ENTRY_CVAL_type *) 0xF881E444U)	/* CPUx Exception Entry Timer Current Value */
#define CPU1_TPS_EXTIM_ENTRY_CVAL	(*( CPU0_TPS_EXTIM_ENTRY_CVAL_type *) 0xF883E444U)	/* CPUx Exception Entry Timer Current Value */
#define CPU2_TPS_EXTIM_ENTRY_CVAL	(*( CPU0_TPS_EXTIM_ENTRY_CVAL_type *) 0xF885E444U)	/* CPUx Exception Entry Timer Current Value */
#define CPU0_TPS_EXTIM_EXIT_LVAL	(*( CPU0_TPS_EXTIM_EXIT_LVAL_type *) 0xF881E448U)	/* CPUx Exception Exit Timer Load Value */
#define CPU1_TPS_EXTIM_EXIT_LVAL	(*( CPU0_TPS_EXTIM_EXIT_LVAL_type *) 0xF883E448U)	/* CPUx Exception Exit Timer Load Value */
#define CPU2_TPS_EXTIM_EXIT_LVAL	(*( CPU0_TPS_EXTIM_EXIT_LVAL_type *) 0xF885E448U)	/* CPUx Exception Exit Timer Load Value */
#define CPU0_TPS_EXTIM_EXIT_CVAL	(*( CPU0_TPS_EXTIM_EXIT_CVAL_type *) 0xF881E44CU)	/* CPUx Exception Exit Timer Current Value */
#define CPU1_TPS_EXTIM_EXIT_CVAL	(*( CPU0_TPS_EXTIM_EXIT_CVAL_type *) 0xF883E44CU)	/* CPUx Exception Exit Timer Current Value */
#define CPU2_TPS_EXTIM_EXIT_CVAL	(*( CPU0_TPS_EXTIM_EXIT_CVAL_type *) 0xF885E44CU)	/* CPUx Exception Exit Timer Current Value */
#define CPU0_TPS_EXTIM_CLASS_EN	(*( CPU0_TPS_EXTIM_CLASS_EN_type *) 0xF881E450U)	/* CPUx Exception Timer Class Enable Register */
#define CPU1_TPS_EXTIM_CLASS_EN	(*( CPU0_TPS_EXTIM_CLASS_EN_type *) 0xF883E450U)	/* CPUx Exception Timer Class Enable Register */
#define CPU2_TPS_EXTIM_CLASS_EN	(*( CPU0_TPS_EXTIM_CLASS_EN_type *) 0xF885E450U)	/* CPUx Exception Timer Class Enable Register */
#define CPU0_TPS_EXTIM_STAT	(*( CPU0_TPS_EXTIM_STAT_type *) 0xF881E454U)	/* CPUx Exception Timer Status Register */
#define CPU1_TPS_EXTIM_STAT	(*( CPU0_TPS_EXTIM_STAT_type *) 0xF883E454U)	/* CPUx Exception Timer Status Register */
#define CPU2_TPS_EXTIM_STAT	(*( CPU0_TPS_EXTIM_STAT_type *) 0xF885E454U)	/* CPUx Exception Timer Status Register */
#define CPU0_TPS_EXTIM_FCX	(*( CPU0_TPS_EXTIM_FCX_type *) 0xF881E458U)	/* CPUx Exception Timer FCX Register */
#define CPU1_TPS_EXTIM_FCX	(*( CPU0_TPS_EXTIM_FCX_type *) 0xF883E458U)	/* CPUx Exception Timer FCX Register */
#define CPU2_TPS_EXTIM_FCX	(*( CPU0_TPS_EXTIM_FCX_type *) 0xF885E458U)	/* CPUx Exception Timer FCX Register */
#define CPU0_FPU_TRAP_CON	(*( CPU0_FPU_TRAP_CON_type *) 0xF881A000U)	/* CPUx Trap Control Register */
#define CPU1_FPU_TRAP_CON	(*( CPU0_FPU_TRAP_CON_type *) 0xF883A000U)	/* CPUx Trap Control Register */
#define CPU2_FPU_TRAP_CON	(*( CPU0_FPU_TRAP_CON_type *) 0xF885A000U)	/* CPUx Trap Control Register */
#define CPU0_FPU_TRAP_PC	(*( CPU0_FPU_TRAP_PC_type *) 0xF881A004U)	/* CPUx Trapping Instruction Program Counter Register */
#define CPU1_FPU_TRAP_PC	(*( CPU0_FPU_TRAP_PC_type *) 0xF883A004U)	/* CPUx Trapping Instruction Program Counter Register */
#define CPU2_FPU_TRAP_PC	(*( CPU0_FPU_TRAP_PC_type *) 0xF885A004U)	/* CPUx Trapping Instruction Program Counter Register */
#define CPU0_FPU_TRAP_OPC	(*( CPU0_FPU_TRAP_OPC_type *) 0xF881A008U)	/* CPUx Trapping Instruction Opcode Register */
#define CPU1_FPU_TRAP_OPC	(*( CPU0_FPU_TRAP_OPC_type *) 0xF883A008U)	/* CPUx Trapping Instruction Opcode Register */
#define CPU2_FPU_TRAP_OPC	(*( CPU0_FPU_TRAP_OPC_type *) 0xF885A008U)	/* CPUx Trapping Instruction Opcode Register */
#define CPU0_FPU_TRAP_SRC1	(*( CPU0_FPU_TRAP_SRC1_type *) 0xF881A010U)	/* CPUx Trapping Instruction Operand Register */
#define CPU1_FPU_TRAP_SRC1	(*( CPU0_FPU_TRAP_SRC1_type *) 0xF883A010U)	/* CPUx Trapping Instruction Operand Register */
#define CPU2_FPU_TRAP_SRC1	(*( CPU0_FPU_TRAP_SRC1_type *) 0xF885A010U)	/* CPUx Trapping Instruction Operand Register */
#define CPU0_FPU_TRAP_SRC2	(*( CPU0_FPU_TRAP_SRC2_type *) 0xF881A014U)	/* CPUx Trapping Instruction Operand Register */
#define CPU1_FPU_TRAP_SRC2	(*( CPU0_FPU_TRAP_SRC2_type *) 0xF883A014U)	/* CPUx Trapping Instruction Operand Register */
#define CPU2_FPU_TRAP_SRC2	(*( CPU0_FPU_TRAP_SRC2_type *) 0xF885A014U)	/* CPUx Trapping Instruction Operand Register */
#define CPU0_FPU_TRAP_SRC3	(*( CPU0_FPU_TRAP_SRC3_type *) 0xF881A018U)	/* CPUx Trapping Instruction Operand Register */
#define CPU1_FPU_TRAP_SRC3	(*( CPU0_FPU_TRAP_SRC3_type *) 0xF883A018U)	/* CPUx Trapping Instruction Operand Register */
#define CPU2_FPU_TRAP_SRC3	(*( CPU0_FPU_TRAP_SRC3_type *) 0xF885A018U)	/* CPUx Trapping Instruction Operand Register */
#define CPU0_TR0EVT	(*( CPU0_TR0EVT_type *) 0xF881F000U)	/* CPUx Trigger Event 0 */
#define CPU0_TR1EVT	(*( CPU0_TR0EVT_type *) 0xF881F008U)	/* CPUx Trigger Event 1 */
#define CPU0_TR2EVT	(*( CPU0_TR0EVT_type *) 0xF881F010U)	/* CPUx Trigger Event 2 */
#define CPU0_TR3EVT	(*( CPU0_TR0EVT_type *) 0xF881F018U)	/* CPUx Trigger Event 3 */
#define CPU0_TR4EVT	(*( CPU0_TR0EVT_type *) 0xF881F020U)	/* CPUx Trigger Event 4 */
#define CPU0_TR5EVT	(*( CPU0_TR0EVT_type *) 0xF881F028U)	/* CPUx Trigger Event 5 */
#define CPU0_TR6EVT	(*( CPU0_TR0EVT_type *) 0xF881F030U)	/* CPUx Trigger Event 6 */
#define CPU0_TR7EVT	(*( CPU0_TR0EVT_type *) 0xF881F038U)	/* CPUx Trigger Event 7 */
#define CPU1_TR0EVT	(*( CPU0_TR0EVT_type *) 0xF883F000U)	/* CPUx Trigger Event 0 */
#define CPU1_TR1EVT	(*( CPU0_TR0EVT_type *) 0xF883F008U)	/* CPUx Trigger Event 1 */
#define CPU1_TR2EVT	(*( CPU0_TR0EVT_type *) 0xF883F010U)	/* CPUx Trigger Event 2 */
#define CPU1_TR3EVT	(*( CPU0_TR0EVT_type *) 0xF883F018U)	/* CPUx Trigger Event 3 */
#define CPU1_TR4EVT	(*( CPU0_TR0EVT_type *) 0xF883F020U)	/* CPUx Trigger Event 4 */
#define CPU1_TR5EVT	(*( CPU0_TR0EVT_type *) 0xF883F028U)	/* CPUx Trigger Event 5 */
#define CPU1_TR6EVT	(*( CPU0_TR0EVT_type *) 0xF883F030U)	/* CPUx Trigger Event 6 */
#define CPU1_TR7EVT	(*( CPU0_TR0EVT_type *) 0xF883F038U)	/* CPUx Trigger Event 7 */
#define CPU2_TR0EVT	(*( CPU0_TR0EVT_type *) 0xF885F000U)	/* CPUx Trigger Event 0 */
#define CPU2_TR1EVT	(*( CPU0_TR0EVT_type *) 0xF885F008U)	/* CPUx Trigger Event 1 */
#define CPU2_TR2EVT	(*( CPU0_TR0EVT_type *) 0xF885F010U)	/* CPUx Trigger Event 2 */
#define CPU2_TR3EVT	(*( CPU0_TR0EVT_type *) 0xF885F018U)	/* CPUx Trigger Event 3 */
#define CPU2_TR4EVT	(*( CPU0_TR0EVT_type *) 0xF885F020U)	/* CPUx Trigger Event 4 */
#define CPU2_TR5EVT	(*( CPU0_TR0EVT_type *) 0xF885F028U)	/* CPUx Trigger Event 5 */
#define CPU2_TR6EVT	(*( CPU0_TR0EVT_type *) 0xF885F030U)	/* CPUx Trigger Event 6 */
#define CPU2_TR7EVT	(*( CPU0_TR0EVT_type *) 0xF885F038U)	/* CPUx Trigger Event 7 */
#define CPU0_TR0ADR	(*( CPU0_TR0ADR_type *) 0xF881F004U)	/* CPUx Trigger Address 0 */
#define CPU0_TR1ADR	(*( CPU0_TR0ADR_type *) 0xF881F00CU)	/* CPUx Trigger Address 1 */
#define CPU0_TR2ADR	(*( CPU0_TR0ADR_type *) 0xF881F014U)	/* CPUx Trigger Address 2 */
#define CPU0_TR3ADR	(*( CPU0_TR0ADR_type *) 0xF881F01CU)	/* CPUx Trigger Address 3 */
#define CPU0_TR4ADR	(*( CPU0_TR0ADR_type *) 0xF881F024U)	/* CPUx Trigger Address 4 */
#define CPU0_TR5ADR	(*( CPU0_TR0ADR_type *) 0xF881F02CU)	/* CPUx Trigger Address 5 */
#define CPU0_TR6ADR	(*( CPU0_TR0ADR_type *) 0xF881F034U)	/* CPUx Trigger Address 6 */
#define CPU0_TR7ADR	(*( CPU0_TR0ADR_type *) 0xF881F03CU)	/* CPUx Trigger Address 7 */
#define CPU1_TR0ADR	(*( CPU0_TR0ADR_type *) 0xF883F004U)	/* CPUx Trigger Address 0 */
#define CPU1_TR1ADR	(*( CPU0_TR0ADR_type *) 0xF883F00CU)	/* CPUx Trigger Address 1 */
#define CPU1_TR2ADR	(*( CPU0_TR0ADR_type *) 0xF883F014U)	/* CPUx Trigger Address 2 */
#define CPU1_TR3ADR	(*( CPU0_TR0ADR_type *) 0xF883F01CU)	/* CPUx Trigger Address 3 */
#define CPU1_TR4ADR	(*( CPU0_TR0ADR_type *) 0xF883F024U)	/* CPUx Trigger Address 4 */
#define CPU1_TR5ADR	(*( CPU0_TR0ADR_type *) 0xF883F02CU)	/* CPUx Trigger Address 5 */
#define CPU1_TR6ADR	(*( CPU0_TR0ADR_type *) 0xF883F034U)	/* CPUx Trigger Address 6 */
#define CPU1_TR7ADR	(*( CPU0_TR0ADR_type *) 0xF883F03CU)	/* CPUx Trigger Address 7 */
#define CPU2_TR0ADR	(*( CPU0_TR0ADR_type *) 0xF885F004U)	/* CPUx Trigger Address 0 */
#define CPU2_TR1ADR	(*( CPU0_TR0ADR_type *) 0xF885F00CU)	/* CPUx Trigger Address 1 */
#define CPU2_TR2ADR	(*( CPU0_TR0ADR_type *) 0xF885F014U)	/* CPUx Trigger Address 2 */
#define CPU2_TR3ADR	(*( CPU0_TR0ADR_type *) 0xF885F01CU)	/* CPUx Trigger Address 3 */
#define CPU2_TR4ADR	(*( CPU0_TR0ADR_type *) 0xF885F024U)	/* CPUx Trigger Address 4 */
#define CPU2_TR5ADR	(*( CPU0_TR0ADR_type *) 0xF885F02CU)	/* CPUx Trigger Address 5 */
#define CPU2_TR6ADR	(*( CPU0_TR0ADR_type *) 0xF885F034U)	/* CPUx Trigger Address 6 */
#define CPU2_TR7ADR	(*( CPU0_TR0ADR_type *) 0xF885F03CU)	/* CPUx Trigger Address 7 */
#define CPU0_CCTRL	(*( CPU0_CCTRL_type *) 0xF881FC00U)	/* CPUx Counter Control */
#define CPU1_CCTRL	(*( CPU0_CCTRL_type *) 0xF883FC00U)	/* CPUx Counter Control */
#define CPU2_CCTRL	(*( CPU0_CCTRL_type *) 0xF885FC00U)	/* CPUx Counter Control */
#define CPU0_CCNT	(*( CPU0_CCNT_type *) 0xF881FC04U)	/* CPUx CPU Clock Cycle Count */
#define CPU1_CCNT	(*( CPU0_CCNT_type *) 0xF883FC04U)	/* CPUx CPU Clock Cycle Count */
#define CPU2_CCNT	(*( CPU0_CCNT_type *) 0xF885FC04U)	/* CPUx CPU Clock Cycle Count */
#define CPU0_ICNT	(*( CPU0_CCNT_type *) 0xF881FC08U)	/* CPUx Instruction Count */
#define CPU1_ICNT	(*( CPU0_CCNT_type *) 0xF883FC08U)	/* CPUx Instruction Count */
#define CPU2_ICNT	(*( CPU0_CCNT_type *) 0xF885FC08U)	/* CPUx Instruction Count */
#define CPU0_M1CNT	(*( CPU0_CCNT_type *) 0xF881FC0CU)	/* CPUx Multi-Count Register 1 */
#define CPU1_M1CNT	(*( CPU0_CCNT_type *) 0xF883FC0CU)	/* CPUx Multi-Count Register 1 */
#define CPU2_M1CNT	(*( CPU0_CCNT_type *) 0xF885FC0CU)	/* CPUx Multi-Count Register 1 */
#define CPU0_M2CNT	(*( CPU0_CCNT_type *) 0xF881FC10U)	/* CPUx Multi-Count Register 2 */
#define CPU1_M2CNT	(*( CPU0_CCNT_type *) 0xF883FC10U)	/* CPUx Multi-Count Register 2 */
#define CPU2_M2CNT	(*( CPU0_CCNT_type *) 0xF885FC10U)	/* CPUx Multi-Count Register 2 */
#define CPU0_M3CNT	(*( CPU0_CCNT_type *) 0xF881FC14U)	/* CPUx Multi-Count Register 3 */
#define CPU1_M3CNT	(*( CPU0_CCNT_type *) 0xF883FC14U)	/* CPUx Multi-Count Register 3 */
#define CPU2_M3CNT	(*( CPU0_CCNT_type *) 0xF885FC14U)	/* CPUx Multi-Count Register 3 */
#define CPU0_DBGSR	(*( CPU0_DBGSR_type *) 0xF881FD00U)	/* CPUx Debug Status Register */
#define CPU1_DBGSR	(*( CPU0_DBGSR_type *) 0xF883FD00U)	/* CPUx Debug Status Register */
#define CPU2_DBGSR	(*( CPU0_DBGSR_type *) 0xF885FD00U)	/* CPUx Debug Status Register */
#define CPU0_EXEVT	(*( CPU0_EXEVT_type *) 0xF881FD08U)	/* CPUx External Event Register */
#define CPU1_EXEVT	(*( CPU0_EXEVT_type *) 0xF883FD08U)	/* CPUx External Event Register */
#define CPU2_EXEVT	(*( CPU0_EXEVT_type *) 0xF885FD08U)	/* CPUx External Event Register */
#define CPU0_CREVT	(*( CPU0_EXEVT_type *) 0xF881FD0CU)	/* CPUx Core Register Access Event */
#define CPU1_CREVT	(*( CPU0_EXEVT_type *) 0xF883FD0CU)	/* CPUx Core Register Access Event */
#define CPU2_CREVT	(*( CPU0_EXEVT_type *) 0xF885FD0CU)	/* CPUx Core Register Access Event */
#define CPU0_SWEVT	(*( CPU0_EXEVT_type *) 0xF881FD10U)	/* CPUx Software Debug Event */
#define CPU1_SWEVT	(*( CPU0_EXEVT_type *) 0xF883FD10U)	/* CPUx Software Debug Event */
#define CPU2_SWEVT	(*( CPU0_EXEVT_type *) 0xF885FD10U)	/* CPUx Software Debug Event */
#define CPU0_TRIG_ACC	(*( CPU0_TRIG_ACC_type *) 0xF881FD30U)	/* CPUx TriggerAddressx */
#define CPU1_TRIG_ACC	(*( CPU0_TRIG_ACC_type *) 0xF883FD30U)	/* CPUx TriggerAddressx */
#define CPU2_TRIG_ACC	(*( CPU0_TRIG_ACC_type *) 0xF885FD30U)	/* CPUx TriggerAddressx */
#define CPU0_DMS	(*( CPU0_DMS_type *) 0xF881FD40U)	/* CPUx Debug Monitor Start Address */
#define CPU1_DMS	(*( CPU0_DMS_type *) 0xF883FD40U)	/* CPUx Debug Monitor Start Address */
#define CPU2_DMS	(*( CPU0_DMS_type *) 0xF885FD40U)	/* CPUx Debug Monitor Start Address */
#define CPU0_DCX	(*( CPU0_DCX_type *) 0xF881FD44U)	/* CPUx Debug Context Save Area Pointer */
#define CPU1_DCX	(*( CPU0_DCX_type *) 0xF883FD44U)	/* CPUx Debug Context Save Area Pointer */
#define CPU2_DCX	(*( CPU0_DCX_type *) 0xF885FD44U)	/* CPUx Debug Context Save Area Pointer */
#define CPU0_DBGTCR	(*( CPU0_DBGTCR_type *) 0xF881FD48U)	/* CPUx Debug Trap Control Register */
#define CPU1_DBGTCR	(*( CPU0_DBGTCR_type *) 0xF883FD48U)	/* CPUx Debug Trap Control Register */
#define CPU2_DBGTCR	(*( CPU0_DBGTCR_type *) 0xF885FD48U)	/* CPUx Debug Trap Control Register */
#define CPU0_SEGEN	(*( CPU0_SEGEN_type *) 0xF8811030U)	/* CPUx SRI Error Generation Register */
#define CPU1_SEGEN	(*( CPU0_SEGEN_type *) 0xF8831030U)	/* CPUx SRI Error Generation Register */
#define CPU2_SEGEN	(*( CPU0_SEGEN_type *) 0xF8851030U)	/* CPUx SRI Error Generation Register */
#define CPU0_DCON2	(*( CPU0_DCON2_type *) 0xF8819000U)	/* CPUx Data Control Register 2 */
#define CPU1_DCON2	(*( CPU0_DCON2_type *) 0xF8839000U)	/* CPUx Data Control Register 2 */
#define CPU2_DCON2	(*( CPU0_DCON2_type *) 0xF8859000U)	/* CPUx Data Control Register 2 */
#define CPU0_DSTR	(*( CPU0_DSTR_type *) 0xF8819010U)	/* CPUx Data Synchronous Trap Register */
#define CPU1_DSTR	(*( CPU0_DSTR_type *) 0xF8839010U)	/* CPUx Data Synchronous Trap Register */
#define CPU2_DSTR	(*( CPU0_DSTR_type *) 0xF8859010U)	/* CPUx Data Synchronous Trap Register */
#define CPU0_DATR	(*( CPU0_DATR_type *) 0xF8819018U)	/* CPUx Data Asynchronous Trap Register */
#define CPU1_DATR	(*( CPU0_DATR_type *) 0xF8839018U)	/* CPUx Data Asynchronous Trap Register */
#define CPU2_DATR	(*( CPU0_DATR_type *) 0xF8859018U)	/* CPUx Data Asynchronous Trap Register */
#define CPU0_DEADD	(*( CPU0_DEADD_type *) 0xF881901CU)	/* CPUx Data Error Address Register */
#define CPU1_DEADD	(*( CPU0_DEADD_type *) 0xF883901CU)	/* CPUx Data Error Address Register */
#define CPU2_DEADD	(*( CPU0_DEADD_type *) 0xF885901CU)	/* CPUx Data Error Address Register */
#define CPU0_DCON0	(*( CPU0_DCON0_type *) 0xF8819040U)	/* CPUx Data Memory Control Register */
#define CPU1_DCON0	(*( CPU0_DCON0_type *) 0xF8839040U)	/* CPUx Data Memory Control Register */
#define CPU2_DCON0	(*( CPU0_DCON0_type *) 0xF8859040U)	/* CPUx Data Memory Control Register */
#define CPU0_PSTR	(*( CPU0_PSTR_type *) 0xF8819200U)	/* CPUx Program Synchronous Trap Register */
#define CPU1_PSTR	(*( CPU0_PSTR_type *) 0xF8839200U)	/* CPUx Program Synchronous Trap Register */
#define CPU2_PSTR	(*( CPU0_PSTR_type *) 0xF8859200U)	/* CPUx Program Synchronous Trap Register */
#define CPU0_PCON1	(*( CPU0_PCON1_type *) 0xF8819204U)	/* CPUx Program Control 1 */
#define CPU1_PCON1	(*( CPU0_PCON1_type *) 0xF8839204U)	/* CPUx Program Control 1 */
#define CPU2_PCON1	(*( CPU0_PCON1_type *) 0xF8859204U)	/* CPUx Program Control 1 */
#define CPU0_PCON2	(*( CPU0_PCON2_type *) 0xF8819208U)	/* CPUx Program Control 2 */
#define CPU1_PCON2	(*( CPU0_PCON2_type *) 0xF8839208U)	/* CPUx Program Control 2 */
#define CPU2_PCON2	(*( CPU0_PCON2_type *) 0xF8859208U)	/* CPUx Program Control 2 */
#define CPU0_PCON0	(*( CPU0_PCON0_type *) 0xF881920CU)	/* CPUx Program Control 0 */
#define CPU1_PCON0	(*( CPU0_PCON0_type *) 0xF883920CU)	/* CPUx Program Control 0 */
#define CPU2_PCON0	(*( CPU0_PCON0_type *) 0xF885920CU)	/* CPUx Program Control 0 */
#define CPU0_SPR_SPROT_RGNLA0	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E000U)	/* CPUx Safety Protection SPR Region Lower Address Register 0 */
#define CPU0_SPR_SPROT_RGNLA1	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E010U)	/* CPUx Safety Protection SPR Region Lower Address Register 1 */
#define CPU0_SPR_SPROT_RGNLA2	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E020U)	/* CPUx Safety Protection SPR Region Lower Address Register 2 */
#define CPU0_SPR_SPROT_RGNLA3	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E030U)	/* CPUx Safety Protection SPR Region Lower Address Register 3 */
#define CPU0_SPR_SPROT_RGNLA4	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E040U)	/* CPUx Safety Protection SPR Region Lower Address Register 4 */
#define CPU0_SPR_SPROT_RGNLA5	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E050U)	/* CPUx Safety Protection SPR Region Lower Address Register 5 */
#define CPU0_SPR_SPROT_RGNLA6	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E060U)	/* CPUx Safety Protection SPR Region Lower Address Register 6 */
#define CPU0_SPR_SPROT_RGNLA7	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E070U)	/* CPUx Safety Protection SPR Region Lower Address Register 7 */
#define CPU1_SPR_SPROT_RGNLA0	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E000U)	/* CPUx Safety Protection SPR Region Lower Address Register 0 */
#define CPU1_SPR_SPROT_RGNLA1	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E010U)	/* CPUx Safety Protection SPR Region Lower Address Register 1 */
#define CPU1_SPR_SPROT_RGNLA2	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E020U)	/* CPUx Safety Protection SPR Region Lower Address Register 2 */
#define CPU1_SPR_SPROT_RGNLA3	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E030U)	/* CPUx Safety Protection SPR Region Lower Address Register 3 */
#define CPU1_SPR_SPROT_RGNLA4	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E040U)	/* CPUx Safety Protection SPR Region Lower Address Register 4 */
#define CPU1_SPR_SPROT_RGNLA5	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E050U)	/* CPUx Safety Protection SPR Region Lower Address Register 5 */
#define CPU1_SPR_SPROT_RGNLA6	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E060U)	/* CPUx Safety Protection SPR Region Lower Address Register 6 */
#define CPU1_SPR_SPROT_RGNLA7	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E070U)	/* CPUx Safety Protection SPR Region Lower Address Register 7 */
#define CPU2_SPR_SPROT_RGNLA0	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E000U)	/* CPUx Safety Protection SPR Region Lower Address Register 0 */
#define CPU2_SPR_SPROT_RGNLA1	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E010U)	/* CPUx Safety Protection SPR Region Lower Address Register 1 */
#define CPU2_SPR_SPROT_RGNLA2	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E020U)	/* CPUx Safety Protection SPR Region Lower Address Register 2 */
#define CPU2_SPR_SPROT_RGNLA3	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E030U)	/* CPUx Safety Protection SPR Region Lower Address Register 3 */
#define CPU2_SPR_SPROT_RGNLA4	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E040U)	/* CPUx Safety Protection SPR Region Lower Address Register 4 */
#define CPU2_SPR_SPROT_RGNLA5	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E050U)	/* CPUx Safety Protection SPR Region Lower Address Register 5 */
#define CPU2_SPR_SPROT_RGNLA6	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E060U)	/* CPUx Safety Protection SPR Region Lower Address Register 6 */
#define CPU2_SPR_SPROT_RGNLA7	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E070U)	/* CPUx Safety Protection SPR Region Lower Address Register 7 */
#define CPU0_SPR_SPROT_RGNUA0	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E004U)	/* CPUx Safety protection SPR Region Upper Address Register 0 */
#define CPU0_SPR_SPROT_RGNUA1	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E014U)	/* CPUx Safety protection SPR Region Upper Address Register 1 */
#define CPU0_SPR_SPROT_RGNUA2	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E024U)	/* CPUx Safety protection SPR Region Upper Address Register 2 */
#define CPU0_SPR_SPROT_RGNUA3	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E034U)	/* CPUx Safety protection SPR Region Upper Address Register 3 */
#define CPU0_SPR_SPROT_RGNUA4	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E044U)	/* CPUx Safety protection SPR Region Upper Address Register 4 */
#define CPU0_SPR_SPROT_RGNUA5	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E054U)	/* CPUx Safety protection SPR Region Upper Address Register 5 */
#define CPU0_SPR_SPROT_RGNUA6	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E064U)	/* CPUx Safety protection SPR Region Upper Address Register 6 */
#define CPU0_SPR_SPROT_RGNUA7	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E074U)	/* CPUx Safety protection SPR Region Upper Address Register 7 */
#define CPU1_SPR_SPROT_RGNUA0	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E004U)	/* CPUx Safety protection SPR Region Upper Address Register 0 */
#define CPU1_SPR_SPROT_RGNUA1	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E014U)	/* CPUx Safety protection SPR Region Upper Address Register 1 */
#define CPU1_SPR_SPROT_RGNUA2	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E024U)	/* CPUx Safety protection SPR Region Upper Address Register 2 */
#define CPU1_SPR_SPROT_RGNUA3	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E034U)	/* CPUx Safety protection SPR Region Upper Address Register 3 */
#define CPU1_SPR_SPROT_RGNUA4	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E044U)	/* CPUx Safety protection SPR Region Upper Address Register 4 */
#define CPU1_SPR_SPROT_RGNUA5	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E054U)	/* CPUx Safety protection SPR Region Upper Address Register 5 */
#define CPU1_SPR_SPROT_RGNUA6	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E064U)	/* CPUx Safety protection SPR Region Upper Address Register 6 */
#define CPU1_SPR_SPROT_RGNUA7	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E074U)	/* CPUx Safety protection SPR Region Upper Address Register 7 */
#define CPU2_SPR_SPROT_RGNUA0	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E004U)	/* CPUx Safety protection SPR Region Upper Address Register 0 */
#define CPU2_SPR_SPROT_RGNUA1	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E014U)	/* CPUx Safety protection SPR Region Upper Address Register 1 */
#define CPU2_SPR_SPROT_RGNUA2	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E024U)	/* CPUx Safety protection SPR Region Upper Address Register 2 */
#define CPU2_SPR_SPROT_RGNUA3	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E034U)	/* CPUx Safety protection SPR Region Upper Address Register 3 */
#define CPU2_SPR_SPROT_RGNUA4	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E044U)	/* CPUx Safety protection SPR Region Upper Address Register 4 */
#define CPU2_SPR_SPROT_RGNUA5	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E054U)	/* CPUx Safety protection SPR Region Upper Address Register 5 */
#define CPU2_SPR_SPROT_RGNUA6	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E064U)	/* CPUx Safety protection SPR Region Upper Address Register 6 */
#define CPU2_SPR_SPROT_RGNUA7	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E074U)	/* CPUx Safety protection SPR Region Upper Address Register 7 */
#define CPU0_SPR_SPROT_RGNACCENA0_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E008U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A0 */
#define CPU0_SPR_SPROT_RGNACCENA1_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E018U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A1 */
#define CPU0_SPR_SPROT_RGNACCENA2_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E028U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A2 */
#define CPU0_SPR_SPROT_RGNACCENA3_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E038U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A3 */
#define CPU0_SPR_SPROT_RGNACCENA4_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E048U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A4 */
#define CPU0_SPR_SPROT_RGNACCENA5_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E058U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A5 */
#define CPU0_SPR_SPROT_RGNACCENA6_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E068U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A6 */
#define CPU0_SPR_SPROT_RGNACCENA7_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E078U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A7 */
#define CPU1_SPR_SPROT_RGNACCENA0_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E008U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A0 */
#define CPU1_SPR_SPROT_RGNACCENA1_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E018U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A1 */
#define CPU1_SPR_SPROT_RGNACCENA2_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E028U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A2 */
#define CPU1_SPR_SPROT_RGNACCENA3_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E038U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A3 */
#define CPU1_SPR_SPROT_RGNACCENA4_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E048U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A4 */
#define CPU1_SPR_SPROT_RGNACCENA5_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E058U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A5 */
#define CPU1_SPR_SPROT_RGNACCENA6_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E068U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A6 */
#define CPU1_SPR_SPROT_RGNACCENA7_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E078U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A7 */
#define CPU2_SPR_SPROT_RGNACCENA0_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E008U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A0 */
#define CPU2_SPR_SPROT_RGNACCENA1_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E018U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A1 */
#define CPU2_SPR_SPROT_RGNACCENA2_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E028U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A2 */
#define CPU2_SPR_SPROT_RGNACCENA3_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E038U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A3 */
#define CPU2_SPR_SPROT_RGNACCENA4_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E048U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A4 */
#define CPU2_SPR_SPROT_RGNACCENA5_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E058U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A5 */
#define CPU2_SPR_SPROT_RGNACCENA6_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E068U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A6 */
#define CPU2_SPR_SPROT_RGNACCENA7_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E078U)	/* CPUx Safety Protection Region SPR Write Access Enable Register A7 */
#define CPU0_SPR_SPROT_RGNACCENB0_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E00CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B0 */
#define CPU0_SPR_SPROT_RGNACCENB1_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E01CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B1 */
#define CPU0_SPR_SPROT_RGNACCENB2_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E02CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B2 */
#define CPU0_SPR_SPROT_RGNACCENB3_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E03CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B3 */
#define CPU0_SPR_SPROT_RGNACCENB4_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E04CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B4 */
#define CPU0_SPR_SPROT_RGNACCENB5_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E05CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B5 */
#define CPU0_SPR_SPROT_RGNACCENB6_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E06CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B6 */
#define CPU0_SPR_SPROT_RGNACCENB7_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E07CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B7 */
#define CPU1_SPR_SPROT_RGNACCENB0_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E00CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B0 */
#define CPU1_SPR_SPROT_RGNACCENB1_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E01CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B1 */
#define CPU1_SPR_SPROT_RGNACCENB2_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E02CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B2 */
#define CPU1_SPR_SPROT_RGNACCENB3_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E03CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B3 */
#define CPU1_SPR_SPROT_RGNACCENB4_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E04CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B4 */
#define CPU1_SPR_SPROT_RGNACCENB5_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E05CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B5 */
#define CPU1_SPR_SPROT_RGNACCENB6_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E06CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B6 */
#define CPU1_SPR_SPROT_RGNACCENB7_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E07CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B7 */
#define CPU2_SPR_SPROT_RGNACCENB0_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E00CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B0 */
#define CPU2_SPR_SPROT_RGNACCENB1_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E01CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B1 */
#define CPU2_SPR_SPROT_RGNACCENB2_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E02CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B2 */
#define CPU2_SPR_SPROT_RGNACCENB3_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E03CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B3 */
#define CPU2_SPR_SPROT_RGNACCENB4_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E04CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B4 */
#define CPU2_SPR_SPROT_RGNACCENB5_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E05CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B5 */
#define CPU2_SPR_SPROT_RGNACCENB6_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E06CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B6 */
#define CPU2_SPR_SPROT_RGNACCENB7_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E07CU)	/* CPUx Safety Protection Region SPR Write Access Enable Register B7 */
#define CPU0_SPR_SPROT_RGNACCENA0_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E088U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A0 */
#define CPU0_SPR_SPROT_RGNACCENA1_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E098U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A1 */
#define CPU0_SPR_SPROT_RGNACCENA2_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E0A8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A2 */
#define CPU0_SPR_SPROT_RGNACCENA3_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E0B8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A3 */
#define CPU0_SPR_SPROT_RGNACCENA4_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E0C8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A4 */
#define CPU0_SPR_SPROT_RGNACCENA5_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E0D8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A5 */
#define CPU0_SPR_SPROT_RGNACCENA6_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E0E8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A6 */
#define CPU0_SPR_SPROT_RGNACCENA7_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E0F8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A7 */
#define CPU1_SPR_SPROT_RGNACCENA0_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E088U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A0 */
#define CPU1_SPR_SPROT_RGNACCENA1_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E098U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A1 */
#define CPU1_SPR_SPROT_RGNACCENA2_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E0A8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A2 */
#define CPU1_SPR_SPROT_RGNACCENA3_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E0B8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A3 */
#define CPU1_SPR_SPROT_RGNACCENA4_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E0C8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A4 */
#define CPU1_SPR_SPROT_RGNACCENA5_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E0D8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A5 */
#define CPU1_SPR_SPROT_RGNACCENA6_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E0E8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A6 */
#define CPU1_SPR_SPROT_RGNACCENA7_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E0F8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A7 */
#define CPU2_SPR_SPROT_RGNACCENA0_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E088U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A0 */
#define CPU2_SPR_SPROT_RGNACCENA1_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E098U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A1 */
#define CPU2_SPR_SPROT_RGNACCENA2_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E0A8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A2 */
#define CPU2_SPR_SPROT_RGNACCENA3_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E0B8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A3 */
#define CPU2_SPR_SPROT_RGNACCENA4_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E0C8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A4 */
#define CPU2_SPR_SPROT_RGNACCENA5_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E0D8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A5 */
#define CPU2_SPR_SPROT_RGNACCENA6_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E0E8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A6 */
#define CPU2_SPR_SPROT_RGNACCENA7_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E0F8U)	/* CPUx Safety Protection Region SPR Read Access Enable Register A7 */
#define CPU0_SPR_SPROT_RGNACCENB0_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E08CU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B0 */
#define CPU0_SPR_SPROT_RGNACCENB1_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E09CU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B1 */
#define CPU0_SPR_SPROT_RGNACCENB2_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E0ACU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B2 */
#define CPU0_SPR_SPROT_RGNACCENB3_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E0BCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B3 */
#define CPU0_SPR_SPROT_RGNACCENB4_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E0CCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B4 */
#define CPU0_SPR_SPROT_RGNACCENB5_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E0DCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B5 */
#define CPU0_SPR_SPROT_RGNACCENB6_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E0ECU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B6 */
#define CPU0_SPR_SPROT_RGNACCENB7_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E0FCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B7 */
#define CPU1_SPR_SPROT_RGNACCENB0_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E08CU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B0 */
#define CPU1_SPR_SPROT_RGNACCENB1_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E09CU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B1 */
#define CPU1_SPR_SPROT_RGNACCENB2_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E0ACU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B2 */
#define CPU1_SPR_SPROT_RGNACCENB3_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E0BCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B3 */
#define CPU1_SPR_SPROT_RGNACCENB4_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E0CCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B4 */
#define CPU1_SPR_SPROT_RGNACCENB5_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E0DCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B5 */
#define CPU1_SPR_SPROT_RGNACCENB6_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E0ECU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B6 */
#define CPU1_SPR_SPROT_RGNACCENB7_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E0FCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B7 */
#define CPU2_SPR_SPROT_RGNACCENB0_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E08CU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B0 */
#define CPU2_SPR_SPROT_RGNACCENB1_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E09CU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B1 */
#define CPU2_SPR_SPROT_RGNACCENB2_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E0ACU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B2 */
#define CPU2_SPR_SPROT_RGNACCENB3_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E0BCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B3 */
#define CPU2_SPR_SPROT_RGNACCENB4_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E0CCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B4 */
#define CPU2_SPR_SPROT_RGNACCENB5_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E0DCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B5 */
#define CPU2_SPR_SPROT_RGNACCENB6_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E0ECU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B6 */
#define CPU2_SPR_SPROT_RGNACCENB7_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E0FCU)	/* CPUx Safety Protection Region SPR Read Access Enable Register B7 */
#define CPU0_DLMU_SPROT_RGNLA0	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E200U)	/* CPUx Safety Protection DLMU Region Lower Address Register 0 */
#define CPU0_DLMU_SPROT_RGNLA1	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E210U)	/* CPUx Safety Protection DLMU Region Lower Address Register 1 */
#define CPU0_DLMU_SPROT_RGNLA2	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E220U)	/* CPUx Safety Protection DLMU Region Lower Address Register 2 */
#define CPU0_DLMU_SPROT_RGNLA3	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E230U)	/* CPUx Safety Protection DLMU Region Lower Address Register 3 */
#define CPU0_DLMU_SPROT_RGNLA4	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E240U)	/* CPUx Safety Protection DLMU Region Lower Address Register 4 */
#define CPU0_DLMU_SPROT_RGNLA5	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E250U)	/* CPUx Safety Protection DLMU Region Lower Address Register 5 */
#define CPU0_DLMU_SPROT_RGNLA6	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E260U)	/* CPUx Safety Protection DLMU Region Lower Address Register 6 */
#define CPU0_DLMU_SPROT_RGNLA7	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF880E270U)	/* CPUx Safety Protection DLMU Region Lower Address Register 7 */
#define CPU1_DLMU_SPROT_RGNLA0	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E200U)	/* CPUx Safety Protection DLMU Region Lower Address Register 0 */
#define CPU1_DLMU_SPROT_RGNLA1	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E210U)	/* CPUx Safety Protection DLMU Region Lower Address Register 1 */
#define CPU1_DLMU_SPROT_RGNLA2	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E220U)	/* CPUx Safety Protection DLMU Region Lower Address Register 2 */
#define CPU1_DLMU_SPROT_RGNLA3	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E230U)	/* CPUx Safety Protection DLMU Region Lower Address Register 3 */
#define CPU1_DLMU_SPROT_RGNLA4	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E240U)	/* CPUx Safety Protection DLMU Region Lower Address Register 4 */
#define CPU1_DLMU_SPROT_RGNLA5	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E250U)	/* CPUx Safety Protection DLMU Region Lower Address Register 5 */
#define CPU1_DLMU_SPROT_RGNLA6	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E260U)	/* CPUx Safety Protection DLMU Region Lower Address Register 6 */
#define CPU1_DLMU_SPROT_RGNLA7	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF882E270U)	/* CPUx Safety Protection DLMU Region Lower Address Register 7 */
#define CPU2_DLMU_SPROT_RGNLA0	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E200U)	/* CPUx Safety Protection DLMU Region Lower Address Register 0 */
#define CPU2_DLMU_SPROT_RGNLA1	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E210U)	/* CPUx Safety Protection DLMU Region Lower Address Register 1 */
#define CPU2_DLMU_SPROT_RGNLA2	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E220U)	/* CPUx Safety Protection DLMU Region Lower Address Register 2 */
#define CPU2_DLMU_SPROT_RGNLA3	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E230U)	/* CPUx Safety Protection DLMU Region Lower Address Register 3 */
#define CPU2_DLMU_SPROT_RGNLA4	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E240U)	/* CPUx Safety Protection DLMU Region Lower Address Register 4 */
#define CPU2_DLMU_SPROT_RGNLA5	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E250U)	/* CPUx Safety Protection DLMU Region Lower Address Register 5 */
#define CPU2_DLMU_SPROT_RGNLA6	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E260U)	/* CPUx Safety Protection DLMU Region Lower Address Register 6 */
#define CPU2_DLMU_SPROT_RGNLA7	(*( CPU0_SPR_SPROT_RGNLA0_type *) 0xF884E270U)	/* CPUx Safety Protection DLMU Region Lower Address Register 7 */
#define CPU0_DLMU_SPROT_RGNUA0	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E204U)	/* CPUx Safety protection DLMU Region Upper Address Register 0 */
#define CPU0_DLMU_SPROT_RGNUA1	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E214U)	/* CPUx Safety protection DLMU Region Upper Address Register 1 */
#define CPU0_DLMU_SPROT_RGNUA2	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E224U)	/* CPUx Safety protection DLMU Region Upper Address Register 2 */
#define CPU0_DLMU_SPROT_RGNUA3	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E234U)	/* CPUx Safety protection DLMU Region Upper Address Register 3 */
#define CPU0_DLMU_SPROT_RGNUA4	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E244U)	/* CPUx Safety protection DLMU Region Upper Address Register 4 */
#define CPU0_DLMU_SPROT_RGNUA5	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E254U)	/* CPUx Safety protection DLMU Region Upper Address Register 5 */
#define CPU0_DLMU_SPROT_RGNUA6	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E264U)	/* CPUx Safety protection DLMU Region Upper Address Register 6 */
#define CPU0_DLMU_SPROT_RGNUA7	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF880E274U)	/* CPUx Safety protection DLMU Region Upper Address Register 7 */
#define CPU1_DLMU_SPROT_RGNUA0	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E204U)	/* CPUx Safety protection DLMU Region Upper Address Register 0 */
#define CPU1_DLMU_SPROT_RGNUA1	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E214U)	/* CPUx Safety protection DLMU Region Upper Address Register 1 */
#define CPU1_DLMU_SPROT_RGNUA2	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E224U)	/* CPUx Safety protection DLMU Region Upper Address Register 2 */
#define CPU1_DLMU_SPROT_RGNUA3	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E234U)	/* CPUx Safety protection DLMU Region Upper Address Register 3 */
#define CPU1_DLMU_SPROT_RGNUA4	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E244U)	/* CPUx Safety protection DLMU Region Upper Address Register 4 */
#define CPU1_DLMU_SPROT_RGNUA5	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E254U)	/* CPUx Safety protection DLMU Region Upper Address Register 5 */
#define CPU1_DLMU_SPROT_RGNUA6	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E264U)	/* CPUx Safety protection DLMU Region Upper Address Register 6 */
#define CPU1_DLMU_SPROT_RGNUA7	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF882E274U)	/* CPUx Safety protection DLMU Region Upper Address Register 7 */
#define CPU2_DLMU_SPROT_RGNUA0	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E204U)	/* CPUx Safety protection DLMU Region Upper Address Register 0 */
#define CPU2_DLMU_SPROT_RGNUA1	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E214U)	/* CPUx Safety protection DLMU Region Upper Address Register 1 */
#define CPU2_DLMU_SPROT_RGNUA2	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E224U)	/* CPUx Safety protection DLMU Region Upper Address Register 2 */
#define CPU2_DLMU_SPROT_RGNUA3	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E234U)	/* CPUx Safety protection DLMU Region Upper Address Register 3 */
#define CPU2_DLMU_SPROT_RGNUA4	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E244U)	/* CPUx Safety protection DLMU Region Upper Address Register 4 */
#define CPU2_DLMU_SPROT_RGNUA5	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E254U)	/* CPUx Safety protection DLMU Region Upper Address Register 5 */
#define CPU2_DLMU_SPROT_RGNUA6	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E264U)	/* CPUx Safety protection DLMU Region Upper Address Register 6 */
#define CPU2_DLMU_SPROT_RGNUA7	(*( CPU0_SPR_SPROT_RGNUA0_type *) 0xF884E274U)	/* CPUx Safety protection DLMU Region Upper Address Register 7 */
#define CPU0_DLMU_SPROT_RGNACCENA0_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E208U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A0 */
#define CPU0_DLMU_SPROT_RGNACCENA1_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E218U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A1 */
#define CPU0_DLMU_SPROT_RGNACCENA2_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E228U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A2 */
#define CPU0_DLMU_SPROT_RGNACCENA3_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E238U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A3 */
#define CPU0_DLMU_SPROT_RGNACCENA4_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E248U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A4 */
#define CPU0_DLMU_SPROT_RGNACCENA5_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E258U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A5 */
#define CPU0_DLMU_SPROT_RGNACCENA6_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E268U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A6 */
#define CPU0_DLMU_SPROT_RGNACCENA7_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF880E278U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A7 */
#define CPU1_DLMU_SPROT_RGNACCENA0_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E208U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A0 */
#define CPU1_DLMU_SPROT_RGNACCENA1_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E218U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A1 */
#define CPU1_DLMU_SPROT_RGNACCENA2_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E228U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A2 */
#define CPU1_DLMU_SPROT_RGNACCENA3_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E238U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A3 */
#define CPU1_DLMU_SPROT_RGNACCENA4_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E248U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A4 */
#define CPU1_DLMU_SPROT_RGNACCENA5_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E258U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A5 */
#define CPU1_DLMU_SPROT_RGNACCENA6_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E268U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A6 */
#define CPU1_DLMU_SPROT_RGNACCENA7_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF882E278U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A7 */
#define CPU2_DLMU_SPROT_RGNACCENA0_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E208U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A0 */
#define CPU2_DLMU_SPROT_RGNACCENA1_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E218U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A1 */
#define CPU2_DLMU_SPROT_RGNACCENA2_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E228U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A2 */
#define CPU2_DLMU_SPROT_RGNACCENA3_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E238U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A3 */
#define CPU2_DLMU_SPROT_RGNACCENA4_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E248U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A4 */
#define CPU2_DLMU_SPROT_RGNACCENA5_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E258U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A5 */
#define CPU2_DLMU_SPROT_RGNACCENA6_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E268U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A6 */
#define CPU2_DLMU_SPROT_RGNACCENA7_W	(*( CPU0_SPR_SPROT_RGNACCENA0_W_type *) 0xF884E278U)	/* CPUx Safety Protection Region DLMU Write Access Enable Register A7 */
#define CPU0_DLMU_SPROT_RGNACCENB0_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E20CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B0 */
#define CPU0_DLMU_SPROT_RGNACCENB1_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E21CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B1 */
#define CPU0_DLMU_SPROT_RGNACCENB2_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E22CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B2 */
#define CPU0_DLMU_SPROT_RGNACCENB3_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E23CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B3 */
#define CPU0_DLMU_SPROT_RGNACCENB4_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E24CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B4 */
#define CPU0_DLMU_SPROT_RGNACCENB5_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E25CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B5 */
#define CPU0_DLMU_SPROT_RGNACCENB6_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E26CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B6 */
#define CPU0_DLMU_SPROT_RGNACCENB7_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF880E27CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B7 */
#define CPU1_DLMU_SPROT_RGNACCENB0_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E20CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B0 */
#define CPU1_DLMU_SPROT_RGNACCENB1_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E21CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B1 */
#define CPU1_DLMU_SPROT_RGNACCENB2_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E22CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B2 */
#define CPU1_DLMU_SPROT_RGNACCENB3_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E23CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B3 */
#define CPU1_DLMU_SPROT_RGNACCENB4_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E24CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B4 */
#define CPU1_DLMU_SPROT_RGNACCENB5_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E25CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B5 */
#define CPU1_DLMU_SPROT_RGNACCENB6_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E26CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B6 */
#define CPU1_DLMU_SPROT_RGNACCENB7_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF882E27CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B7 */
#define CPU2_DLMU_SPROT_RGNACCENB0_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E20CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B0 */
#define CPU2_DLMU_SPROT_RGNACCENB1_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E21CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B1 */
#define CPU2_DLMU_SPROT_RGNACCENB2_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E22CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B2 */
#define CPU2_DLMU_SPROT_RGNACCENB3_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E23CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B3 */
#define CPU2_DLMU_SPROT_RGNACCENB4_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E24CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B4 */
#define CPU2_DLMU_SPROT_RGNACCENB5_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E25CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B5 */
#define CPU2_DLMU_SPROT_RGNACCENB6_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E26CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B6 */
#define CPU2_DLMU_SPROT_RGNACCENB7_W	(*( CPU0_SPR_SPROT_RGNACCENB0_W_type *) 0xF884E27CU)	/* CPUx Safety Protection Region DLMU Write Access Enable Register B7 */
#define CPU0_DLMU_SPROT_RGNACCENA0_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E288U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A0 */
#define CPU0_DLMU_SPROT_RGNACCENA1_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E298U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A1 */
#define CPU0_DLMU_SPROT_RGNACCENA2_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E2A8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A2 */
#define CPU0_DLMU_SPROT_RGNACCENA3_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E2B8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A3 */
#define CPU0_DLMU_SPROT_RGNACCENA4_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E2C8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A4 */
#define CPU0_DLMU_SPROT_RGNACCENA5_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E2D8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A5 */
#define CPU0_DLMU_SPROT_RGNACCENA6_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E2E8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A6 */
#define CPU0_DLMU_SPROT_RGNACCENA7_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF880E2F8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A7 */
#define CPU1_DLMU_SPROT_RGNACCENA0_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E288U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A0 */
#define CPU1_DLMU_SPROT_RGNACCENA1_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E298U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A1 */
#define CPU1_DLMU_SPROT_RGNACCENA2_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E2A8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A2 */
#define CPU1_DLMU_SPROT_RGNACCENA3_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E2B8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A3 */
#define CPU1_DLMU_SPROT_RGNACCENA4_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E2C8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A4 */
#define CPU1_DLMU_SPROT_RGNACCENA5_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E2D8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A5 */
#define CPU1_DLMU_SPROT_RGNACCENA6_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E2E8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A6 */
#define CPU1_DLMU_SPROT_RGNACCENA7_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF882E2F8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A7 */
#define CPU2_DLMU_SPROT_RGNACCENA0_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E288U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A0 */
#define CPU2_DLMU_SPROT_RGNACCENA1_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E298U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A1 */
#define CPU2_DLMU_SPROT_RGNACCENA2_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E2A8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A2 */
#define CPU2_DLMU_SPROT_RGNACCENA3_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E2B8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A3 */
#define CPU2_DLMU_SPROT_RGNACCENA4_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E2C8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A4 */
#define CPU2_DLMU_SPROT_RGNACCENA5_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E2D8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A5 */
#define CPU2_DLMU_SPROT_RGNACCENA6_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E2E8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A6 */
#define CPU2_DLMU_SPROT_RGNACCENA7_R	(*( CPU0_SPR_SPROT_RGNACCENA0_R_type *) 0xF884E2F8U)	/* CPUx Safety Protection Region DLMU Read Access Enable Register A7 */
#define CPU0_DLMU_SPROT_RGNACCENB0_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E28CU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B0 */
#define CPU0_DLMU_SPROT_RGNACCENB1_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E29CU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B1 */
#define CPU0_DLMU_SPROT_RGNACCENB2_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E2ACU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B2 */
#define CPU0_DLMU_SPROT_RGNACCENB3_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E2BCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B3 */
#define CPU0_DLMU_SPROT_RGNACCENB4_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E2CCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B4 */
#define CPU0_DLMU_SPROT_RGNACCENB5_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E2DCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B5 */
#define CPU0_DLMU_SPROT_RGNACCENB6_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E2ECU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B6 */
#define CPU0_DLMU_SPROT_RGNACCENB7_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF880E2FCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B7 */
#define CPU1_DLMU_SPROT_RGNACCENB0_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E28CU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B0 */
#define CPU1_DLMU_SPROT_RGNACCENB1_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E29CU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B1 */
#define CPU1_DLMU_SPROT_RGNACCENB2_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E2ACU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B2 */
#define CPU1_DLMU_SPROT_RGNACCENB3_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E2BCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B3 */
#define CPU1_DLMU_SPROT_RGNACCENB4_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E2CCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B4 */
#define CPU1_DLMU_SPROT_RGNACCENB5_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E2DCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B5 */
#define CPU1_DLMU_SPROT_RGNACCENB6_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E2ECU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B6 */
#define CPU1_DLMU_SPROT_RGNACCENB7_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF882E2FCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B7 */
#define CPU2_DLMU_SPROT_RGNACCENB0_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E28CU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B0 */
#define CPU2_DLMU_SPROT_RGNACCENB1_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E29CU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B1 */
#define CPU2_DLMU_SPROT_RGNACCENB2_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E2ACU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B2 */
#define CPU2_DLMU_SPROT_RGNACCENB3_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E2BCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B3 */
#define CPU2_DLMU_SPROT_RGNACCENB4_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E2CCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B4 */
#define CPU2_DLMU_SPROT_RGNACCENB5_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E2DCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B5 */
#define CPU2_DLMU_SPROT_RGNACCENB6_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E2ECU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B6 */
#define CPU2_DLMU_SPROT_RGNACCENB7_R	(*( CPU0_SPR_SPROT_RGNACCENB0_R_type *) 0xF884E2FCU)	/* CPUx Safety Protection Region DLMU Read Access Enable Register B7 */
#define CPU0_SFR_SPROT_ACCENA_W	(*( CPU0_SFR_SPROT_ACCENA_W_type *) 0xF880E100U)	/* CPUx Safety Protection Register Access Enable Register A */
#define CPU1_SFR_SPROT_ACCENA_W	(*( CPU0_SFR_SPROT_ACCENA_W_type *) 0xF882E100U)	/* CPUx Safety Protection Register Access Enable Register A */
#define CPU2_SFR_SPROT_ACCENA_W	(*( CPU0_SFR_SPROT_ACCENA_W_type *) 0xF884E100U)	/* CPUx Safety Protection Register Access Enable Register A */
#define CPU0_SFR_SPROT_ACCENB_W	(*( CPU0_SFR_SPROT_ACCENB_W_type *) 0xF880E104U)	/* CPUx Safety Protection Region Access Enable Register B */
#define CPU1_SFR_SPROT_ACCENB_W	(*( CPU0_SFR_SPROT_ACCENB_W_type *) 0xF882E104U)	/* CPUx Safety Protection Region Access Enable Register B */
#define CPU2_SFR_SPROT_ACCENB_W	(*( CPU0_SFR_SPROT_ACCENB_W_type *) 0xF884E104U)	/* CPUx Safety Protection Region Access Enable Register B */
#define CPU0_LPB_SPROT_ACCENA_R	(*( CPU0_SFR_SPROT_ACCENA_W_type *) 0xF880E110U)	/* CPUx Safety Protection Region LPB Read Access Enable Register A */
#define CPU1_LPB_SPROT_ACCENA_R	(*( CPU0_SFR_SPROT_ACCENA_W_type *) 0xF882E110U)	/* CPUx Safety Protection Region LPB Read Access Enable Register A */
#define CPU2_LPB_SPROT_ACCENA_R	(*( CPU0_SFR_SPROT_ACCENA_W_type *) 0xF884E110U)	/* CPUx Safety Protection Region LPB Read Access Enable Register A */
#define CPU0_LPB_SPROT_ACCENB_R	(*( CPU0_SFR_SPROT_ACCENB_W_type *) 0xF880E114U)	/* CPUx Safety Protection Region LPB Read Access Enable Register B */
#define CPU1_LPB_SPROT_ACCENB_R	(*( CPU0_SFR_SPROT_ACCENB_W_type *) 0xF882E114U)	/* CPUx Safety Protection Region LPB Read Access Enable Register B */
#define CPU2_LPB_SPROT_ACCENB_R	(*( CPU0_SFR_SPROT_ACCENB_W_type *) 0xF884E114U)	/* CPUx Safety Protection Region LPB Read Access Enable Register B */
#define CPU0_KRST0	(*( CPU0_KRST0_type *) 0xF880D000U)	/* CPUx Reset Register 0 */
#define CPU1_KRST0	(*( CPU0_KRST0_type *) 0xF882D000U)	/* CPUx Reset Register 0 */
#define CPU2_KRST0	(*( CPU0_KRST0_type *) 0xF884D000U)	/* CPUx Reset Register 0 */
#define CPU0_KRST1	(*( ASCLIN0_KRST1_type *) 0xF880D004U)	/* CPUx Reset Register 1 */
#define CPU1_KRST1	(*( ASCLIN0_KRST1_type *) 0xF882D004U)	/* CPUx Reset Register 1 */
#define CPU2_KRST1	(*( ASCLIN0_KRST1_type *) 0xF884D004U)	/* CPUx Reset Register 1 */
#define CPU0_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF880D008U)	/* CPUx Reset Clear Register */
#define CPU1_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF882D008U)	/* CPUx Reset Clear Register */
#define CPU2_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF884D008U)	/* CPUx Reset Clear Register */
#define CPU0_FLASHCON0	(*( CPU0_FLASHCON0_type *) 0xF8801100U)	/* CPUx Flash Configuration Register 0 */
#define CPU1_FLASHCON0	(*( CPU0_FLASHCON0_type *) 0xF8821100U)	/* CPUx Flash Configuration Register 0 */
#define CPU2_FLASHCON0	(*( CPU0_FLASHCON0_type *) 0xF8841100U)	/* CPUx Flash Configuration Register 0 */
#define CPU0_FLASHCON1	(*( CPU0_FLASHCON1_type *) 0xF8801104U)	/* CPUx Flash Configuration Register 1 */
#define CPU1_FLASHCON1	(*( CPU0_FLASHCON1_type *) 0xF8821104U)	/* CPUx Flash Configuration Register 1 */
#define CPU2_FLASHCON1	(*( CPU0_FLASHCON1_type *) 0xF8841104U)	/* CPUx Flash Configuration Register 1 */
#define CPU0_FLASHCON2	(*( CPU0_FLASHCON2_type *) 0xF8801108U)	/* CPUx Flash Configuration Register 2 */
#define CPU1_FLASHCON2	(*( CPU0_FLASHCON2_type *) 0xF8821108U)	/* CPUx Flash Configuration Register 2 */
#define CPU2_FLASHCON2	(*( CPU0_FLASHCON2_type *) 0xF8841108U)	/* CPUx Flash Configuration Register 2 */
#define CPU0_FLASHCON3	(*( CPU0_FLASHCON3_type *) 0xF880110CU)	/* CPUx Flash Configuration Register 3 */
#define CPU1_FLASHCON3	(*( CPU0_FLASHCON3_type *) 0xF882110CU)	/* CPUx Flash Configuration Register 3 */
#define CPU2_FLASHCON3	(*( CPU0_FLASHCON3_type *) 0xF884110CU)	/* CPUx Flash Configuration Register 3 */
#define CPU0_FLASHCON4	(*( CPU0_FLASHCON4_type *) 0xF8801110U)	/* CPUx Flash Configuration Register 4 */
#define CPU1_FLASHCON4	(*( CPU0_FLASHCON4_type *) 0xF8821110U)	/* CPUx Flash Configuration Register 4 */
#define CPU2_FLASHCON4	(*( CPU0_FLASHCON4_type *) 0xF8841110U)	/* CPUx Flash Configuration Register 4 */
#define CPU0_OSEL	(*( CPU0_OSEL_type *) 0xF880FB00U)	/* CPUx Overlay Range Select Register */
#define CPU1_OSEL	(*( CPU0_OSEL_type *) 0xF882FB00U)	/* CPUx Overlay Range Select Register */
#define CPU2_OSEL	(*( CPU0_OSEL_type *) 0xF884FB00U)	/* CPUx Overlay Range Select Register */
#define CPU0_RABR0	(*( CPU0_RABR0_type *) 0xF880FB10U)	/* CPUx Redirected Address Base Register 0 */
#define CPU0_RABR1	(*( CPU0_RABR0_type *) 0xF880FB1CU)	/* CPUx Redirected Address Base Register 1 */
#define CPU0_RABR2	(*( CPU0_RABR0_type *) 0xF880FB28U)	/* CPUx Redirected Address Base Register 2 */
#define CPU0_RABR3	(*( CPU0_RABR0_type *) 0xF880FB34U)	/* CPUx Redirected Address Base Register 3 */
#define CPU0_RABR4	(*( CPU0_RABR0_type *) 0xF880FB40U)	/* CPUx Redirected Address Base Register 4 */
#define CPU0_RABR5	(*( CPU0_RABR0_type *) 0xF880FB4CU)	/* CPUx Redirected Address Base Register 5 */
#define CPU0_RABR6	(*( CPU0_RABR0_type *) 0xF880FB58U)	/* CPUx Redirected Address Base Register 6 */
#define CPU0_RABR7	(*( CPU0_RABR0_type *) 0xF880FB64U)	/* CPUx Redirected Address Base Register 7 */
#define CPU0_RABR8	(*( CPU0_RABR0_type *) 0xF880FB70U)	/* CPUx Redirected Address Base Register 8 */
#define CPU0_RABR9	(*( CPU0_RABR0_type *) 0xF880FB7CU)	/* CPUx Redirected Address Base Register 9 */
#define CPU0_RABR10	(*( CPU0_RABR0_type *) 0xF880FB88U)	/* CPUx Redirected Address Base Register 10 */
#define CPU0_RABR11	(*( CPU0_RABR0_type *) 0xF880FB94U)	/* CPUx Redirected Address Base Register 11 */
#define CPU0_RABR12	(*( CPU0_RABR0_type *) 0xF880FBA0U)	/* CPUx Redirected Address Base Register 12 */
#define CPU0_RABR13	(*( CPU0_RABR0_type *) 0xF880FBACU)	/* CPUx Redirected Address Base Register 13 */
#define CPU0_RABR14	(*( CPU0_RABR0_type *) 0xF880FBB8U)	/* CPUx Redirected Address Base Register 14 */
#define CPU0_RABR15	(*( CPU0_RABR0_type *) 0xF880FBC4U)	/* CPUx Redirected Address Base Register 15 */
#define CPU0_RABR16	(*( CPU0_RABR0_type *) 0xF880FBD0U)	/* CPUx Redirected Address Base Register 16 */
#define CPU0_RABR17	(*( CPU0_RABR0_type *) 0xF880FBDCU)	/* CPUx Redirected Address Base Register 17 */
#define CPU0_RABR18	(*( CPU0_RABR0_type *) 0xF880FBE8U)	/* CPUx Redirected Address Base Register 18 */
#define CPU0_RABR19	(*( CPU0_RABR0_type *) 0xF880FBF4U)	/* CPUx Redirected Address Base Register 19 */
#define CPU0_RABR20	(*( CPU0_RABR0_type *) 0xF880FC00U)	/* CPUx Redirected Address Base Register 20 */
#define CPU0_RABR21	(*( CPU0_RABR0_type *) 0xF880FC0CU)	/* CPUx Redirected Address Base Register 21 */
#define CPU0_RABR22	(*( CPU0_RABR0_type *) 0xF880FC18U)	/* CPUx Redirected Address Base Register 22 */
#define CPU0_RABR23	(*( CPU0_RABR0_type *) 0xF880FC24U)	/* CPUx Redirected Address Base Register 23 */
#define CPU0_RABR24	(*( CPU0_RABR0_type *) 0xF880FC30U)	/* CPUx Redirected Address Base Register 24 */
#define CPU0_RABR25	(*( CPU0_RABR0_type *) 0xF880FC3CU)	/* CPUx Redirected Address Base Register 25 */
#define CPU0_RABR26	(*( CPU0_RABR0_type *) 0xF880FC48U)	/* CPUx Redirected Address Base Register 26 */
#define CPU0_RABR27	(*( CPU0_RABR0_type *) 0xF880FC54U)	/* CPUx Redirected Address Base Register 27 */
#define CPU0_RABR28	(*( CPU0_RABR0_type *) 0xF880FC60U)	/* CPUx Redirected Address Base Register 28 */
#define CPU0_RABR29	(*( CPU0_RABR0_type *) 0xF880FC6CU)	/* CPUx Redirected Address Base Register 29 */
#define CPU0_RABR30	(*( CPU0_RABR0_type *) 0xF880FC78U)	/* CPUx Redirected Address Base Register 30 */
#define CPU0_RABR31	(*( CPU0_RABR0_type *) 0xF880FC84U)	/* CPUx Redirected Address Base Register 31 */
#define CPU1_RABR0	(*( CPU0_RABR0_type *) 0xF882FB10U)	/* CPUx Redirected Address Base Register 0 */
#define CPU1_RABR1	(*( CPU0_RABR0_type *) 0xF882FB1CU)	/* CPUx Redirected Address Base Register 1 */
#define CPU1_RABR2	(*( CPU0_RABR0_type *) 0xF882FB28U)	/* CPUx Redirected Address Base Register 2 */
#define CPU1_RABR3	(*( CPU0_RABR0_type *) 0xF882FB34U)	/* CPUx Redirected Address Base Register 3 */
#define CPU1_RABR4	(*( CPU0_RABR0_type *) 0xF882FB40U)	/* CPUx Redirected Address Base Register 4 */
#define CPU1_RABR5	(*( CPU0_RABR0_type *) 0xF882FB4CU)	/* CPUx Redirected Address Base Register 5 */
#define CPU1_RABR6	(*( CPU0_RABR0_type *) 0xF882FB58U)	/* CPUx Redirected Address Base Register 6 */
#define CPU1_RABR7	(*( CPU0_RABR0_type *) 0xF882FB64U)	/* CPUx Redirected Address Base Register 7 */
#define CPU1_RABR8	(*( CPU0_RABR0_type *) 0xF882FB70U)	/* CPUx Redirected Address Base Register 8 */
#define CPU1_RABR9	(*( CPU0_RABR0_type *) 0xF882FB7CU)	/* CPUx Redirected Address Base Register 9 */
#define CPU1_RABR10	(*( CPU0_RABR0_type *) 0xF882FB88U)	/* CPUx Redirected Address Base Register 10 */
#define CPU1_RABR11	(*( CPU0_RABR0_type *) 0xF882FB94U)	/* CPUx Redirected Address Base Register 11 */
#define CPU1_RABR12	(*( CPU0_RABR0_type *) 0xF882FBA0U)	/* CPUx Redirected Address Base Register 12 */
#define CPU1_RABR13	(*( CPU0_RABR0_type *) 0xF882FBACU)	/* CPUx Redirected Address Base Register 13 */
#define CPU1_RABR14	(*( CPU0_RABR0_type *) 0xF882FBB8U)	/* CPUx Redirected Address Base Register 14 */
#define CPU1_RABR15	(*( CPU0_RABR0_type *) 0xF882FBC4U)	/* CPUx Redirected Address Base Register 15 */
#define CPU1_RABR16	(*( CPU0_RABR0_type *) 0xF882FBD0U)	/* CPUx Redirected Address Base Register 16 */
#define CPU1_RABR17	(*( CPU0_RABR0_type *) 0xF882FBDCU)	/* CPUx Redirected Address Base Register 17 */
#define CPU1_RABR18	(*( CPU0_RABR0_type *) 0xF882FBE8U)	/* CPUx Redirected Address Base Register 18 */
#define CPU1_RABR19	(*( CPU0_RABR0_type *) 0xF882FBF4U)	/* CPUx Redirected Address Base Register 19 */
#define CPU1_RABR20	(*( CPU0_RABR0_type *) 0xF882FC00U)	/* CPUx Redirected Address Base Register 20 */
#define CPU1_RABR21	(*( CPU0_RABR0_type *) 0xF882FC0CU)	/* CPUx Redirected Address Base Register 21 */
#define CPU1_RABR22	(*( CPU0_RABR0_type *) 0xF882FC18U)	/* CPUx Redirected Address Base Register 22 */
#define CPU1_RABR23	(*( CPU0_RABR0_type *) 0xF882FC24U)	/* CPUx Redirected Address Base Register 23 */
#define CPU1_RABR24	(*( CPU0_RABR0_type *) 0xF882FC30U)	/* CPUx Redirected Address Base Register 24 */
#define CPU1_RABR25	(*( CPU0_RABR0_type *) 0xF882FC3CU)	/* CPUx Redirected Address Base Register 25 */
#define CPU1_RABR26	(*( CPU0_RABR0_type *) 0xF882FC48U)	/* CPUx Redirected Address Base Register 26 */
#define CPU1_RABR27	(*( CPU0_RABR0_type *) 0xF882FC54U)	/* CPUx Redirected Address Base Register 27 */
#define CPU1_RABR28	(*( CPU0_RABR0_type *) 0xF882FC60U)	/* CPUx Redirected Address Base Register 28 */
#define CPU1_RABR29	(*( CPU0_RABR0_type *) 0xF882FC6CU)	/* CPUx Redirected Address Base Register 29 */
#define CPU1_RABR30	(*( CPU0_RABR0_type *) 0xF882FC78U)	/* CPUx Redirected Address Base Register 30 */
#define CPU1_RABR31	(*( CPU0_RABR0_type *) 0xF882FC84U)	/* CPUx Redirected Address Base Register 31 */
#define CPU2_RABR0	(*( CPU0_RABR0_type *) 0xF884FB10U)	/* CPUx Redirected Address Base Register 0 */
#define CPU2_RABR1	(*( CPU0_RABR0_type *) 0xF884FB1CU)	/* CPUx Redirected Address Base Register 1 */
#define CPU2_RABR2	(*( CPU0_RABR0_type *) 0xF884FB28U)	/* CPUx Redirected Address Base Register 2 */
#define CPU2_RABR3	(*( CPU0_RABR0_type *) 0xF884FB34U)	/* CPUx Redirected Address Base Register 3 */
#define CPU2_RABR4	(*( CPU0_RABR0_type *) 0xF884FB40U)	/* CPUx Redirected Address Base Register 4 */
#define CPU2_RABR5	(*( CPU0_RABR0_type *) 0xF884FB4CU)	/* CPUx Redirected Address Base Register 5 */
#define CPU2_RABR6	(*( CPU0_RABR0_type *) 0xF884FB58U)	/* CPUx Redirected Address Base Register 6 */
#define CPU2_RABR7	(*( CPU0_RABR0_type *) 0xF884FB64U)	/* CPUx Redirected Address Base Register 7 */
#define CPU2_RABR8	(*( CPU0_RABR0_type *) 0xF884FB70U)	/* CPUx Redirected Address Base Register 8 */
#define CPU2_RABR9	(*( CPU0_RABR0_type *) 0xF884FB7CU)	/* CPUx Redirected Address Base Register 9 */
#define CPU2_RABR10	(*( CPU0_RABR0_type *) 0xF884FB88U)	/* CPUx Redirected Address Base Register 10 */
#define CPU2_RABR11	(*( CPU0_RABR0_type *) 0xF884FB94U)	/* CPUx Redirected Address Base Register 11 */
#define CPU2_RABR12	(*( CPU0_RABR0_type *) 0xF884FBA0U)	/* CPUx Redirected Address Base Register 12 */
#define CPU2_RABR13	(*( CPU0_RABR0_type *) 0xF884FBACU)	/* CPUx Redirected Address Base Register 13 */
#define CPU2_RABR14	(*( CPU0_RABR0_type *) 0xF884FBB8U)	/* CPUx Redirected Address Base Register 14 */
#define CPU2_RABR15	(*( CPU0_RABR0_type *) 0xF884FBC4U)	/* CPUx Redirected Address Base Register 15 */
#define CPU2_RABR16	(*( CPU0_RABR0_type *) 0xF884FBD0U)	/* CPUx Redirected Address Base Register 16 */
#define CPU2_RABR17	(*( CPU0_RABR0_type *) 0xF884FBDCU)	/* CPUx Redirected Address Base Register 17 */
#define CPU2_RABR18	(*( CPU0_RABR0_type *) 0xF884FBE8U)	/* CPUx Redirected Address Base Register 18 */
#define CPU2_RABR19	(*( CPU0_RABR0_type *) 0xF884FBF4U)	/* CPUx Redirected Address Base Register 19 */
#define CPU2_RABR20	(*( CPU0_RABR0_type *) 0xF884FC00U)	/* CPUx Redirected Address Base Register 20 */
#define CPU2_RABR21	(*( CPU0_RABR0_type *) 0xF884FC0CU)	/* CPUx Redirected Address Base Register 21 */
#define CPU2_RABR22	(*( CPU0_RABR0_type *) 0xF884FC18U)	/* CPUx Redirected Address Base Register 22 */
#define CPU2_RABR23	(*( CPU0_RABR0_type *) 0xF884FC24U)	/* CPUx Redirected Address Base Register 23 */
#define CPU2_RABR24	(*( CPU0_RABR0_type *) 0xF884FC30U)	/* CPUx Redirected Address Base Register 24 */
#define CPU2_RABR25	(*( CPU0_RABR0_type *) 0xF884FC3CU)	/* CPUx Redirected Address Base Register 25 */
#define CPU2_RABR26	(*( CPU0_RABR0_type *) 0xF884FC48U)	/* CPUx Redirected Address Base Register 26 */
#define CPU2_RABR27	(*( CPU0_RABR0_type *) 0xF884FC54U)	/* CPUx Redirected Address Base Register 27 */
#define CPU2_RABR28	(*( CPU0_RABR0_type *) 0xF884FC60U)	/* CPUx Redirected Address Base Register 28 */
#define CPU2_RABR29	(*( CPU0_RABR0_type *) 0xF884FC6CU)	/* CPUx Redirected Address Base Register 29 */
#define CPU2_RABR30	(*( CPU0_RABR0_type *) 0xF884FC78U)	/* CPUx Redirected Address Base Register 30 */
#define CPU2_RABR31	(*( CPU0_RABR0_type *) 0xF884FC84U)	/* CPUx Redirected Address Base Register 31 */
#define CPU0_OTAR0	(*( CPU0_OTAR0_type *) 0xF880FB14U)	/* CPUx Overlay Target Address Register 0 */
#define CPU0_OTAR1	(*( CPU0_OTAR0_type *) 0xF880FB20U)	/* CPUx Overlay Target Address Register 1 */
#define CPU0_OTAR2	(*( CPU0_OTAR0_type *) 0xF880FB2CU)	/* CPUx Overlay Target Address Register 2 */
#define CPU0_OTAR3	(*( CPU0_OTAR0_type *) 0xF880FB38U)	/* CPUx Overlay Target Address Register 3 */
#define CPU0_OTAR4	(*( CPU0_OTAR0_type *) 0xF880FB44U)	/* CPUx Overlay Target Address Register 4 */
#define CPU0_OTAR5	(*( CPU0_OTAR0_type *) 0xF880FB50U)	/* CPUx Overlay Target Address Register 5 */
#define CPU0_OTAR6	(*( CPU0_OTAR0_type *) 0xF880FB5CU)	/* CPUx Overlay Target Address Register 6 */
#define CPU0_OTAR7	(*( CPU0_OTAR0_type *) 0xF880FB68U)	/* CPUx Overlay Target Address Register 7 */
#define CPU0_OTAR8	(*( CPU0_OTAR0_type *) 0xF880FB74U)	/* CPUx Overlay Target Address Register 8 */
#define CPU0_OTAR9	(*( CPU0_OTAR0_type *) 0xF880FB80U)	/* CPUx Overlay Target Address Register 9 */
#define CPU0_OTAR10	(*( CPU0_OTAR0_type *) 0xF880FB8CU)	/* CPUx Overlay Target Address Register 10 */
#define CPU0_OTAR11	(*( CPU0_OTAR0_type *) 0xF880FB98U)	/* CPUx Overlay Target Address Register 11 */
#define CPU0_OTAR12	(*( CPU0_OTAR0_type *) 0xF880FBA4U)	/* CPUx Overlay Target Address Register 12 */
#define CPU0_OTAR13	(*( CPU0_OTAR0_type *) 0xF880FBB0U)	/* CPUx Overlay Target Address Register 13 */
#define CPU0_OTAR14	(*( CPU0_OTAR0_type *) 0xF880FBBCU)	/* CPUx Overlay Target Address Register 14 */
#define CPU0_OTAR15	(*( CPU0_OTAR0_type *) 0xF880FBC8U)	/* CPUx Overlay Target Address Register 15 */
#define CPU0_OTAR16	(*( CPU0_OTAR0_type *) 0xF880FBD4U)	/* CPUx Overlay Target Address Register 16 */
#define CPU0_OTAR17	(*( CPU0_OTAR0_type *) 0xF880FBE0U)	/* CPUx Overlay Target Address Register 17 */
#define CPU0_OTAR18	(*( CPU0_OTAR0_type *) 0xF880FBECU)	/* CPUx Overlay Target Address Register 18 */
#define CPU0_OTAR19	(*( CPU0_OTAR0_type *) 0xF880FBF8U)	/* CPUx Overlay Target Address Register 19 */
#define CPU0_OTAR20	(*( CPU0_OTAR0_type *) 0xF880FC04U)	/* CPUx Overlay Target Address Register 20 */
#define CPU0_OTAR21	(*( CPU0_OTAR0_type *) 0xF880FC10U)	/* CPUx Overlay Target Address Register 21 */
#define CPU0_OTAR22	(*( CPU0_OTAR0_type *) 0xF880FC1CU)	/* CPUx Overlay Target Address Register 22 */
#define CPU0_OTAR23	(*( CPU0_OTAR0_type *) 0xF880FC28U)	/* CPUx Overlay Target Address Register 23 */
#define CPU0_OTAR24	(*( CPU0_OTAR0_type *) 0xF880FC34U)	/* CPUx Overlay Target Address Register 24 */
#define CPU0_OTAR25	(*( CPU0_OTAR0_type *) 0xF880FC40U)	/* CPUx Overlay Target Address Register 25 */
#define CPU0_OTAR26	(*( CPU0_OTAR0_type *) 0xF880FC4CU)	/* CPUx Overlay Target Address Register 26 */
#define CPU0_OTAR27	(*( CPU0_OTAR0_type *) 0xF880FC58U)	/* CPUx Overlay Target Address Register 27 */
#define CPU0_OTAR28	(*( CPU0_OTAR0_type *) 0xF880FC64U)	/* CPUx Overlay Target Address Register 28 */
#define CPU0_OTAR29	(*( CPU0_OTAR0_type *) 0xF880FC70U)	/* CPUx Overlay Target Address Register 29 */
#define CPU0_OTAR30	(*( CPU0_OTAR0_type *) 0xF880FC7CU)	/* CPUx Overlay Target Address Register 30 */
#define CPU0_OTAR31	(*( CPU0_OTAR0_type *) 0xF880FC88U)	/* CPUx Overlay Target Address Register 31 */
#define CPU1_OTAR0	(*( CPU0_OTAR0_type *) 0xF882FB14U)	/* CPUx Overlay Target Address Register 0 */
#define CPU1_OTAR1	(*( CPU0_OTAR0_type *) 0xF882FB20U)	/* CPUx Overlay Target Address Register 1 */
#define CPU1_OTAR2	(*( CPU0_OTAR0_type *) 0xF882FB2CU)	/* CPUx Overlay Target Address Register 2 */
#define CPU1_OTAR3	(*( CPU0_OTAR0_type *) 0xF882FB38U)	/* CPUx Overlay Target Address Register 3 */
#define CPU1_OTAR4	(*( CPU0_OTAR0_type *) 0xF882FB44U)	/* CPUx Overlay Target Address Register 4 */
#define CPU1_OTAR5	(*( CPU0_OTAR0_type *) 0xF882FB50U)	/* CPUx Overlay Target Address Register 5 */
#define CPU1_OTAR6	(*( CPU0_OTAR0_type *) 0xF882FB5CU)	/* CPUx Overlay Target Address Register 6 */
#define CPU1_OTAR7	(*( CPU0_OTAR0_type *) 0xF882FB68U)	/* CPUx Overlay Target Address Register 7 */
#define CPU1_OTAR8	(*( CPU0_OTAR0_type *) 0xF882FB74U)	/* CPUx Overlay Target Address Register 8 */
#define CPU1_OTAR9	(*( CPU0_OTAR0_type *) 0xF882FB80U)	/* CPUx Overlay Target Address Register 9 */
#define CPU1_OTAR10	(*( CPU0_OTAR0_type *) 0xF882FB8CU)	/* CPUx Overlay Target Address Register 10 */
#define CPU1_OTAR11	(*( CPU0_OTAR0_type *) 0xF882FB98U)	/* CPUx Overlay Target Address Register 11 */
#define CPU1_OTAR12	(*( CPU0_OTAR0_type *) 0xF882FBA4U)	/* CPUx Overlay Target Address Register 12 */
#define CPU1_OTAR13	(*( CPU0_OTAR0_type *) 0xF882FBB0U)	/* CPUx Overlay Target Address Register 13 */
#define CPU1_OTAR14	(*( CPU0_OTAR0_type *) 0xF882FBBCU)	/* CPUx Overlay Target Address Register 14 */
#define CPU1_OTAR15	(*( CPU0_OTAR0_type *) 0xF882FBC8U)	/* CPUx Overlay Target Address Register 15 */
#define CPU1_OTAR16	(*( CPU0_OTAR0_type *) 0xF882FBD4U)	/* CPUx Overlay Target Address Register 16 */
#define CPU1_OTAR17	(*( CPU0_OTAR0_type *) 0xF882FBE0U)	/* CPUx Overlay Target Address Register 17 */
#define CPU1_OTAR18	(*( CPU0_OTAR0_type *) 0xF882FBECU)	/* CPUx Overlay Target Address Register 18 */
#define CPU1_OTAR19	(*( CPU0_OTAR0_type *) 0xF882FBF8U)	/* CPUx Overlay Target Address Register 19 */
#define CPU1_OTAR20	(*( CPU0_OTAR0_type *) 0xF882FC04U)	/* CPUx Overlay Target Address Register 20 */
#define CPU1_OTAR21	(*( CPU0_OTAR0_type *) 0xF882FC10U)	/* CPUx Overlay Target Address Register 21 */
#define CPU1_OTAR22	(*( CPU0_OTAR0_type *) 0xF882FC1CU)	/* CPUx Overlay Target Address Register 22 */
#define CPU1_OTAR23	(*( CPU0_OTAR0_type *) 0xF882FC28U)	/* CPUx Overlay Target Address Register 23 */
#define CPU1_OTAR24	(*( CPU0_OTAR0_type *) 0xF882FC34U)	/* CPUx Overlay Target Address Register 24 */
#define CPU1_OTAR25	(*( CPU0_OTAR0_type *) 0xF882FC40U)	/* CPUx Overlay Target Address Register 25 */
#define CPU1_OTAR26	(*( CPU0_OTAR0_type *) 0xF882FC4CU)	/* CPUx Overlay Target Address Register 26 */
#define CPU1_OTAR27	(*( CPU0_OTAR0_type *) 0xF882FC58U)	/* CPUx Overlay Target Address Register 27 */
#define CPU1_OTAR28	(*( CPU0_OTAR0_type *) 0xF882FC64U)	/* CPUx Overlay Target Address Register 28 */
#define CPU1_OTAR29	(*( CPU0_OTAR0_type *) 0xF882FC70U)	/* CPUx Overlay Target Address Register 29 */
#define CPU1_OTAR30	(*( CPU0_OTAR0_type *) 0xF882FC7CU)	/* CPUx Overlay Target Address Register 30 */
#define CPU1_OTAR31	(*( CPU0_OTAR0_type *) 0xF882FC88U)	/* CPUx Overlay Target Address Register 31 */
#define CPU2_OTAR0	(*( CPU0_OTAR0_type *) 0xF884FB14U)	/* CPUx Overlay Target Address Register 0 */
#define CPU2_OTAR1	(*( CPU0_OTAR0_type *) 0xF884FB20U)	/* CPUx Overlay Target Address Register 1 */
#define CPU2_OTAR2	(*( CPU0_OTAR0_type *) 0xF884FB2CU)	/* CPUx Overlay Target Address Register 2 */
#define CPU2_OTAR3	(*( CPU0_OTAR0_type *) 0xF884FB38U)	/* CPUx Overlay Target Address Register 3 */
#define CPU2_OTAR4	(*( CPU0_OTAR0_type *) 0xF884FB44U)	/* CPUx Overlay Target Address Register 4 */
#define CPU2_OTAR5	(*( CPU0_OTAR0_type *) 0xF884FB50U)	/* CPUx Overlay Target Address Register 5 */
#define CPU2_OTAR6	(*( CPU0_OTAR0_type *) 0xF884FB5CU)	/* CPUx Overlay Target Address Register 6 */
#define CPU2_OTAR7	(*( CPU0_OTAR0_type *) 0xF884FB68U)	/* CPUx Overlay Target Address Register 7 */
#define CPU2_OTAR8	(*( CPU0_OTAR0_type *) 0xF884FB74U)	/* CPUx Overlay Target Address Register 8 */
#define CPU2_OTAR9	(*( CPU0_OTAR0_type *) 0xF884FB80U)	/* CPUx Overlay Target Address Register 9 */
#define CPU2_OTAR10	(*( CPU0_OTAR0_type *) 0xF884FB8CU)	/* CPUx Overlay Target Address Register 10 */
#define CPU2_OTAR11	(*( CPU0_OTAR0_type *) 0xF884FB98U)	/* CPUx Overlay Target Address Register 11 */
#define CPU2_OTAR12	(*( CPU0_OTAR0_type *) 0xF884FBA4U)	/* CPUx Overlay Target Address Register 12 */
#define CPU2_OTAR13	(*( CPU0_OTAR0_type *) 0xF884FBB0U)	/* CPUx Overlay Target Address Register 13 */
#define CPU2_OTAR14	(*( CPU0_OTAR0_type *) 0xF884FBBCU)	/* CPUx Overlay Target Address Register 14 */
#define CPU2_OTAR15	(*( CPU0_OTAR0_type *) 0xF884FBC8U)	/* CPUx Overlay Target Address Register 15 */
#define CPU2_OTAR16	(*( CPU0_OTAR0_type *) 0xF884FBD4U)	/* CPUx Overlay Target Address Register 16 */
#define CPU2_OTAR17	(*( CPU0_OTAR0_type *) 0xF884FBE0U)	/* CPUx Overlay Target Address Register 17 */
#define CPU2_OTAR18	(*( CPU0_OTAR0_type *) 0xF884FBECU)	/* CPUx Overlay Target Address Register 18 */
#define CPU2_OTAR19	(*( CPU0_OTAR0_type *) 0xF884FBF8U)	/* CPUx Overlay Target Address Register 19 */
#define CPU2_OTAR20	(*( CPU0_OTAR0_type *) 0xF884FC04U)	/* CPUx Overlay Target Address Register 20 */
#define CPU2_OTAR21	(*( CPU0_OTAR0_type *) 0xF884FC10U)	/* CPUx Overlay Target Address Register 21 */
#define CPU2_OTAR22	(*( CPU0_OTAR0_type *) 0xF884FC1CU)	/* CPUx Overlay Target Address Register 22 */
#define CPU2_OTAR23	(*( CPU0_OTAR0_type *) 0xF884FC28U)	/* CPUx Overlay Target Address Register 23 */
#define CPU2_OTAR24	(*( CPU0_OTAR0_type *) 0xF884FC34U)	/* CPUx Overlay Target Address Register 24 */
#define CPU2_OTAR25	(*( CPU0_OTAR0_type *) 0xF884FC40U)	/* CPUx Overlay Target Address Register 25 */
#define CPU2_OTAR26	(*( CPU0_OTAR0_type *) 0xF884FC4CU)	/* CPUx Overlay Target Address Register 26 */
#define CPU2_OTAR27	(*( CPU0_OTAR0_type *) 0xF884FC58U)	/* CPUx Overlay Target Address Register 27 */
#define CPU2_OTAR28	(*( CPU0_OTAR0_type *) 0xF884FC64U)	/* CPUx Overlay Target Address Register 28 */
#define CPU2_OTAR29	(*( CPU0_OTAR0_type *) 0xF884FC70U)	/* CPUx Overlay Target Address Register 29 */
#define CPU2_OTAR30	(*( CPU0_OTAR0_type *) 0xF884FC7CU)	/* CPUx Overlay Target Address Register 30 */
#define CPU2_OTAR31	(*( CPU0_OTAR0_type *) 0xF884FC88U)	/* CPUx Overlay Target Address Register 31 */
#define CPU0_OMASK0	(*( CPU0_OMASK0_type *) 0xF880FB18U)	/* CPUx Overlay Mask Register 0 */
#define CPU0_OMASK1	(*( CPU0_OMASK0_type *) 0xF880FB24U)	/* CPUx Overlay Mask Register 1 */
#define CPU0_OMASK2	(*( CPU0_OMASK0_type *) 0xF880FB30U)	/* CPUx Overlay Mask Register 2 */
#define CPU0_OMASK3	(*( CPU0_OMASK0_type *) 0xF880FB3CU)	/* CPUx Overlay Mask Register 3 */
#define CPU0_OMASK4	(*( CPU0_OMASK0_type *) 0xF880FB48U)	/* CPUx Overlay Mask Register 4 */
#define CPU0_OMASK5	(*( CPU0_OMASK0_type *) 0xF880FB54U)	/* CPUx Overlay Mask Register 5 */
#define CPU0_OMASK6	(*( CPU0_OMASK0_type *) 0xF880FB60U)	/* CPUx Overlay Mask Register 6 */
#define CPU0_OMASK7	(*( CPU0_OMASK0_type *) 0xF880FB6CU)	/* CPUx Overlay Mask Register 7 */
#define CPU0_OMASK8	(*( CPU0_OMASK0_type *) 0xF880FB78U)	/* CPUx Overlay Mask Register 8 */
#define CPU0_OMASK9	(*( CPU0_OMASK0_type *) 0xF880FB84U)	/* CPUx Overlay Mask Register 9 */
#define CPU0_OMASK10	(*( CPU0_OMASK0_type *) 0xF880FB90U)	/* CPUx Overlay Mask Register 10 */
#define CPU0_OMASK11	(*( CPU0_OMASK0_type *) 0xF880FB9CU)	/* CPUx Overlay Mask Register 11 */
#define CPU0_OMASK12	(*( CPU0_OMASK0_type *) 0xF880FBA8U)	/* CPUx Overlay Mask Register 12 */
#define CPU0_OMASK13	(*( CPU0_OMASK0_type *) 0xF880FBB4U)	/* CPUx Overlay Mask Register 13 */
#define CPU0_OMASK14	(*( CPU0_OMASK0_type *) 0xF880FBC0U)	/* CPUx Overlay Mask Register 14 */
#define CPU0_OMASK15	(*( CPU0_OMASK0_type *) 0xF880FBCCU)	/* CPUx Overlay Mask Register 15 */
#define CPU0_OMASK16	(*( CPU0_OMASK0_type *) 0xF880FBD8U)	/* CPUx Overlay Mask Register 16 */
#define CPU0_OMASK17	(*( CPU0_OMASK0_type *) 0xF880FBE4U)	/* CPUx Overlay Mask Register 17 */
#define CPU0_OMASK18	(*( CPU0_OMASK0_type *) 0xF880FBF0U)	/* CPUx Overlay Mask Register 18 */
#define CPU0_OMASK19	(*( CPU0_OMASK0_type *) 0xF880FBFCU)	/* CPUx Overlay Mask Register 19 */
#define CPU0_OMASK20	(*( CPU0_OMASK0_type *) 0xF880FC08U)	/* CPUx Overlay Mask Register 20 */
#define CPU0_OMASK21	(*( CPU0_OMASK0_type *) 0xF880FC14U)	/* CPUx Overlay Mask Register 21 */
#define CPU0_OMASK22	(*( CPU0_OMASK0_type *) 0xF880FC20U)	/* CPUx Overlay Mask Register 22 */
#define CPU0_OMASK23	(*( CPU0_OMASK0_type *) 0xF880FC2CU)	/* CPUx Overlay Mask Register 23 */
#define CPU0_OMASK24	(*( CPU0_OMASK0_type *) 0xF880FC38U)	/* CPUx Overlay Mask Register 24 */
#define CPU0_OMASK25	(*( CPU0_OMASK0_type *) 0xF880FC44U)	/* CPUx Overlay Mask Register 25 */
#define CPU0_OMASK26	(*( CPU0_OMASK0_type *) 0xF880FC50U)	/* CPUx Overlay Mask Register 26 */
#define CPU0_OMASK27	(*( CPU0_OMASK0_type *) 0xF880FC5CU)	/* CPUx Overlay Mask Register 27 */
#define CPU0_OMASK28	(*( CPU0_OMASK0_type *) 0xF880FC68U)	/* CPUx Overlay Mask Register 28 */
#define CPU0_OMASK29	(*( CPU0_OMASK0_type *) 0xF880FC74U)	/* CPUx Overlay Mask Register 29 */
#define CPU0_OMASK30	(*( CPU0_OMASK0_type *) 0xF880FC80U)	/* CPUx Overlay Mask Register 30 */
#define CPU0_OMASK31	(*( CPU0_OMASK0_type *) 0xF880FC8CU)	/* CPUx Overlay Mask Register 31 */
#define CPU1_OMASK0	(*( CPU0_OMASK0_type *) 0xF882FB18U)	/* CPUx Overlay Mask Register 0 */
#define CPU1_OMASK1	(*( CPU0_OMASK0_type *) 0xF882FB24U)	/* CPUx Overlay Mask Register 1 */
#define CPU1_OMASK2	(*( CPU0_OMASK0_type *) 0xF882FB30U)	/* CPUx Overlay Mask Register 2 */
#define CPU1_OMASK3	(*( CPU0_OMASK0_type *) 0xF882FB3CU)	/* CPUx Overlay Mask Register 3 */
#define CPU1_OMASK4	(*( CPU0_OMASK0_type *) 0xF882FB48U)	/* CPUx Overlay Mask Register 4 */
#define CPU1_OMASK5	(*( CPU0_OMASK0_type *) 0xF882FB54U)	/* CPUx Overlay Mask Register 5 */
#define CPU1_OMASK6	(*( CPU0_OMASK0_type *) 0xF882FB60U)	/* CPUx Overlay Mask Register 6 */
#define CPU1_OMASK7	(*( CPU0_OMASK0_type *) 0xF882FB6CU)	/* CPUx Overlay Mask Register 7 */
#define CPU1_OMASK8	(*( CPU0_OMASK0_type *) 0xF882FB78U)	/* CPUx Overlay Mask Register 8 */
#define CPU1_OMASK9	(*( CPU0_OMASK0_type *) 0xF882FB84U)	/* CPUx Overlay Mask Register 9 */
#define CPU1_OMASK10	(*( CPU0_OMASK0_type *) 0xF882FB90U)	/* CPUx Overlay Mask Register 10 */
#define CPU1_OMASK11	(*( CPU0_OMASK0_type *) 0xF882FB9CU)	/* CPUx Overlay Mask Register 11 */
#define CPU1_OMASK12	(*( CPU0_OMASK0_type *) 0xF882FBA8U)	/* CPUx Overlay Mask Register 12 */
#define CPU1_OMASK13	(*( CPU0_OMASK0_type *) 0xF882FBB4U)	/* CPUx Overlay Mask Register 13 */
#define CPU1_OMASK14	(*( CPU0_OMASK0_type *) 0xF882FBC0U)	/* CPUx Overlay Mask Register 14 */
#define CPU1_OMASK15	(*( CPU0_OMASK0_type *) 0xF882FBCCU)	/* CPUx Overlay Mask Register 15 */
#define CPU1_OMASK16	(*( CPU0_OMASK0_type *) 0xF882FBD8U)	/* CPUx Overlay Mask Register 16 */
#define CPU1_OMASK17	(*( CPU0_OMASK0_type *) 0xF882FBE4U)	/* CPUx Overlay Mask Register 17 */
#define CPU1_OMASK18	(*( CPU0_OMASK0_type *) 0xF882FBF0U)	/* CPUx Overlay Mask Register 18 */
#define CPU1_OMASK19	(*( CPU0_OMASK0_type *) 0xF882FBFCU)	/* CPUx Overlay Mask Register 19 */
#define CPU1_OMASK20	(*( CPU0_OMASK0_type *) 0xF882FC08U)	/* CPUx Overlay Mask Register 20 */
#define CPU1_OMASK21	(*( CPU0_OMASK0_type *) 0xF882FC14U)	/* CPUx Overlay Mask Register 21 */
#define CPU1_OMASK22	(*( CPU0_OMASK0_type *) 0xF882FC20U)	/* CPUx Overlay Mask Register 22 */
#define CPU1_OMASK23	(*( CPU0_OMASK0_type *) 0xF882FC2CU)	/* CPUx Overlay Mask Register 23 */
#define CPU1_OMASK24	(*( CPU0_OMASK0_type *) 0xF882FC38U)	/* CPUx Overlay Mask Register 24 */
#define CPU1_OMASK25	(*( CPU0_OMASK0_type *) 0xF882FC44U)	/* CPUx Overlay Mask Register 25 */
#define CPU1_OMASK26	(*( CPU0_OMASK0_type *) 0xF882FC50U)	/* CPUx Overlay Mask Register 26 */
#define CPU1_OMASK27	(*( CPU0_OMASK0_type *) 0xF882FC5CU)	/* CPUx Overlay Mask Register 27 */
#define CPU1_OMASK28	(*( CPU0_OMASK0_type *) 0xF882FC68U)	/* CPUx Overlay Mask Register 28 */
#define CPU1_OMASK29	(*( CPU0_OMASK0_type *) 0xF882FC74U)	/* CPUx Overlay Mask Register 29 */
#define CPU1_OMASK30	(*( CPU0_OMASK0_type *) 0xF882FC80U)	/* CPUx Overlay Mask Register 30 */
#define CPU1_OMASK31	(*( CPU0_OMASK0_type *) 0xF882FC8CU)	/* CPUx Overlay Mask Register 31 */
#define CPU2_OMASK0	(*( CPU0_OMASK0_type *) 0xF884FB18U)	/* CPUx Overlay Mask Register 0 */
#define CPU2_OMASK1	(*( CPU0_OMASK0_type *) 0xF884FB24U)	/* CPUx Overlay Mask Register 1 */
#define CPU2_OMASK2	(*( CPU0_OMASK0_type *) 0xF884FB30U)	/* CPUx Overlay Mask Register 2 */
#define CPU2_OMASK3	(*( CPU0_OMASK0_type *) 0xF884FB3CU)	/* CPUx Overlay Mask Register 3 */
#define CPU2_OMASK4	(*( CPU0_OMASK0_type *) 0xF884FB48U)	/* CPUx Overlay Mask Register 4 */
#define CPU2_OMASK5	(*( CPU0_OMASK0_type *) 0xF884FB54U)	/* CPUx Overlay Mask Register 5 */
#define CPU2_OMASK6	(*( CPU0_OMASK0_type *) 0xF884FB60U)	/* CPUx Overlay Mask Register 6 */
#define CPU2_OMASK7	(*( CPU0_OMASK0_type *) 0xF884FB6CU)	/* CPUx Overlay Mask Register 7 */
#define CPU2_OMASK8	(*( CPU0_OMASK0_type *) 0xF884FB78U)	/* CPUx Overlay Mask Register 8 */
#define CPU2_OMASK9	(*( CPU0_OMASK0_type *) 0xF884FB84U)	/* CPUx Overlay Mask Register 9 */
#define CPU2_OMASK10	(*( CPU0_OMASK0_type *) 0xF884FB90U)	/* CPUx Overlay Mask Register 10 */
#define CPU2_OMASK11	(*( CPU0_OMASK0_type *) 0xF884FB9CU)	/* CPUx Overlay Mask Register 11 */
#define CPU2_OMASK12	(*( CPU0_OMASK0_type *) 0xF884FBA8U)	/* CPUx Overlay Mask Register 12 */
#define CPU2_OMASK13	(*( CPU0_OMASK0_type *) 0xF884FBB4U)	/* CPUx Overlay Mask Register 13 */
#define CPU2_OMASK14	(*( CPU0_OMASK0_type *) 0xF884FBC0U)	/* CPUx Overlay Mask Register 14 */
#define CPU2_OMASK15	(*( CPU0_OMASK0_type *) 0xF884FBCCU)	/* CPUx Overlay Mask Register 15 */
#define CPU2_OMASK16	(*( CPU0_OMASK0_type *) 0xF884FBD8U)	/* CPUx Overlay Mask Register 16 */
#define CPU2_OMASK17	(*( CPU0_OMASK0_type *) 0xF884FBE4U)	/* CPUx Overlay Mask Register 17 */
#define CPU2_OMASK18	(*( CPU0_OMASK0_type *) 0xF884FBF0U)	/* CPUx Overlay Mask Register 18 */
#define CPU2_OMASK19	(*( CPU0_OMASK0_type *) 0xF884FBFCU)	/* CPUx Overlay Mask Register 19 */
#define CPU2_OMASK20	(*( CPU0_OMASK0_type *) 0xF884FC08U)	/* CPUx Overlay Mask Register 20 */
#define CPU2_OMASK21	(*( CPU0_OMASK0_type *) 0xF884FC14U)	/* CPUx Overlay Mask Register 21 */
#define CPU2_OMASK22	(*( CPU0_OMASK0_type *) 0xF884FC20U)	/* CPUx Overlay Mask Register 22 */
#define CPU2_OMASK23	(*( CPU0_OMASK0_type *) 0xF884FC2CU)	/* CPUx Overlay Mask Register 23 */
#define CPU2_OMASK24	(*( CPU0_OMASK0_type *) 0xF884FC38U)	/* CPUx Overlay Mask Register 24 */
#define CPU2_OMASK25	(*( CPU0_OMASK0_type *) 0xF884FC44U)	/* CPUx Overlay Mask Register 25 */
#define CPU2_OMASK26	(*( CPU0_OMASK0_type *) 0xF884FC50U)	/* CPUx Overlay Mask Register 26 */
#define CPU2_OMASK27	(*( CPU0_OMASK0_type *) 0xF884FC5CU)	/* CPUx Overlay Mask Register 27 */
#define CPU2_OMASK28	(*( CPU0_OMASK0_type *) 0xF884FC68U)	/* CPUx Overlay Mask Register 28 */
#define CPU2_OMASK29	(*( CPU0_OMASK0_type *) 0xF884FC74U)	/* CPUx Overlay Mask Register 29 */
#define CPU2_OMASK30	(*( CPU0_OMASK0_type *) 0xF884FC80U)	/* CPUx Overlay Mask Register 30 */
#define CPU2_OMASK31	(*( CPU0_OMASK0_type *) 0xF884FC8CU)	/* CPUx Overlay Mask Register 31 */
#define SRC_CPU0SB	(*( SRC_CPU0SB_type *) 0xF0038000U)	/* CPU0 Software Breakpoint Service Request */
#define SRC_CPU1SB	(*( SRC_CPU0SB_type *) 0xF0038004U)	/* CPU1 Software Breakpoint Service Request */
#define SRC_CPU2SB	(*( SRC_CPU0SB_type *) 0xF0038008U)	/* CPU2 Software Breakpoint Service Request */
#define SRC_BCUSPB	(*( SRC_CPU0SB_type *) 0xF0038020U)	/* SBCU Service Request [SPB Bus Control Unit) */
#define SRC_XBAR0	(*( SRC_CPU0SB_type *) 0xF0038030U)	/* SRI Domain 0 Service Request */
#define SRC_CERBERUS0	(*( SRC_CPU0SB_type *) 0xF0038040U)	/* Cerberus Service Request 0 */
#define SRC_CERBERUS1	(*( SRC_CPU0SB_type *) 0xF0038044U)	/* Cerberus Service Request 1 */
#define SRC_ASCLIN0TX	(*( SRC_CPU0SB_type *) 0xF0038050U)	/* ASCLIN0 Transmit Service Request */
#define SRC_ASCLIN1TX	(*( SRC_CPU0SB_type *) 0xF003805CU)	/* ASCLIN1 Transmit Service Request */
#define SRC_ASCLIN2TX	(*( SRC_CPU0SB_type *) 0xF0038068U)	/* ASCLIN2 Transmit Service Request */
#define SRC_ASCLIN3TX	(*( SRC_CPU0SB_type *) 0xF0038074U)	/* ASCLIN3 Transmit Service Request */
#define SRC_ASCLIN4TX	(*( SRC_CPU0SB_type *) 0xF0038080U)	/* ASCLIN4 Transmit Service Request */
#define SRC_ASCLIN5TX	(*( SRC_CPU0SB_type *) 0xF003808CU)	/* ASCLIN5 Transmit Service Request */
#define SRC_ASCLIN6TX	(*( SRC_CPU0SB_type *) 0xF0038098U)	/* ASCLIN6 Transmit Service Request */
#define SRC_ASCLIN7TX	(*( SRC_CPU0SB_type *) 0xF00380A4U)	/* ASCLIN7 Transmit Service Request */
#define SRC_ASCLIN8TX	(*( SRC_CPU0SB_type *) 0xF00380B0U)	/* ASCLIN8 Transmit Service Request */
#define SRC_ASCLIN9TX	(*( SRC_CPU0SB_type *) 0xF00380BCU)	/* ASCLIN9 Transmit Service Request */
#define SRC_ASCLIN10TX	(*( SRC_CPU0SB_type *) 0xF00380C8U)	/* ASCLIN10 Transmit Service Request */
#define SRC_ASCLIN11TX	(*( SRC_CPU0SB_type *) 0xF00380D4U)	/* ASCLIN11 Transmit Service Request */
#define SRC_ASCLIN0RX	(*( SRC_CPU0SB_type *) 0xF0038054U)	/* ASCLIN0 Receive Service Request */
#define SRC_ASCLIN1RX	(*( SRC_CPU0SB_type *) 0xF0038060U)	/* ASCLIN1 Receive Service Request */
#define SRC_ASCLIN2RX	(*( SRC_CPU0SB_type *) 0xF003806CU)	/* ASCLIN2 Receive Service Request */
#define SRC_ASCLIN3RX	(*( SRC_CPU0SB_type *) 0xF0038078U)	/* ASCLIN3 Receive Service Request */
#define SRC_ASCLIN4RX	(*( SRC_CPU0SB_type *) 0xF0038084U)	/* ASCLIN4 Receive Service Request */
#define SRC_ASCLIN5RX	(*( SRC_CPU0SB_type *) 0xF0038090U)	/* ASCLIN5 Receive Service Request */
#define SRC_ASCLIN6RX	(*( SRC_CPU0SB_type *) 0xF003809CU)	/* ASCLIN6 Receive Service Request */
#define SRC_ASCLIN7RX	(*( SRC_CPU0SB_type *) 0xF00380A8U)	/* ASCLIN7 Receive Service Request */
#define SRC_ASCLIN8RX	(*( SRC_CPU0SB_type *) 0xF00380B4U)	/* ASCLIN8 Receive Service Request */
#define SRC_ASCLIN9RX	(*( SRC_CPU0SB_type *) 0xF00380C0U)	/* ASCLIN9 Receive Service Request */
#define SRC_ASCLIN10RX	(*( SRC_CPU0SB_type *) 0xF00380CCU)	/* ASCLIN10 Receive Service Request */
#define SRC_ASCLIN11RX	(*( SRC_CPU0SB_type *) 0xF00380D8U)	/* ASCLIN11 Receive Service Request */
#define SRC_ASCLIN0ERR	(*( SRC_CPU0SB_type *) 0xF0038058U)	/* ASCLIN0 Error Service Request */
#define SRC_ASCLIN1ERR	(*( SRC_CPU0SB_type *) 0xF0038064U)	/* ASCLIN1 Error Service Request */
#define SRC_ASCLIN2ERR	(*( SRC_CPU0SB_type *) 0xF0038070U)	/* ASCLIN2 Error Service Request */
#define SRC_ASCLIN3ERR	(*( SRC_CPU0SB_type *) 0xF003807CU)	/* ASCLIN3 Error Service Request */
#define SRC_ASCLIN4ERR	(*( SRC_CPU0SB_type *) 0xF0038088U)	/* ASCLIN4 Error Service Request */
#define SRC_ASCLIN5ERR	(*( SRC_CPU0SB_type *) 0xF0038094U)	/* ASCLIN5 Error Service Request */
#define SRC_ASCLIN6ERR	(*( SRC_CPU0SB_type *) 0xF00380A0U)	/* ASCLIN6 Error Service Request */
#define SRC_ASCLIN7ERR	(*( SRC_CPU0SB_type *) 0xF00380ACU)	/* ASCLIN7 Error Service Request */
#define SRC_ASCLIN8ERR	(*( SRC_CPU0SB_type *) 0xF00380B8U)	/* ASCLIN8 Error Service Request */
#define SRC_ASCLIN9ERR	(*( SRC_CPU0SB_type *) 0xF00380C4U)	/* ASCLIN9 Error Service Request */
#define SRC_ASCLIN10ERR	(*( SRC_CPU0SB_type *) 0xF00380D0U)	/* ASCLIN10 Error Service Request */
#define SRC_ASCLIN11ERR	(*( SRC_CPU0SB_type *) 0xF00380DCU)	/* ASCLIN11 Error Service Request */
#define SRC_MTUDONE	(*( SRC_CPU0SB_type *) 0xF00380ECU)	/* MTU Done Service Request */
#define SRC_QSPI0TX	(*( SRC_CPU0SB_type *) 0xF00380F0U)	/* QSPI0 Transmit Service Request */
#define SRC_QSPI1TX	(*( SRC_CPU0SB_type *) 0xF0038104U)	/* QSPI1 Transmit Service Request */
#define SRC_QSPI2TX	(*( SRC_CPU0SB_type *) 0xF0038118U)	/* QSPI2 Transmit Service Request */
#define SRC_QSPI3TX	(*( SRC_CPU0SB_type *) 0xF003812CU)	/* QSPI3 Transmit Service Request */
#define SRC_QSPI4TX	(*( SRC_CPU0SB_type *) 0xF0038140U)	/* QSPI4 Transmit Service Request */
#define SRC_QSPI0RX	(*( SRC_CPU0SB_type *) 0xF00380F4U)	/* QSPI0 Receive Service Request */
#define SRC_QSPI1RX	(*( SRC_CPU0SB_type *) 0xF0038108U)	/* QSPI1 Receive Service Request */
#define SRC_QSPI2RX	(*( SRC_CPU0SB_type *) 0xF003811CU)	/* QSPI2 Receive Service Request */
#define SRC_QSPI3RX	(*( SRC_CPU0SB_type *) 0xF0038130U)	/* QSPI3 Receive Service Request */
#define SRC_QSPI4RX	(*( SRC_CPU0SB_type *) 0xF0038144U)	/* QSPI4 Receive Service Request */
#define SRC_QSPI0ERR	(*( SRC_CPU0SB_type *) 0xF00380F8U)	/* QSPI0 Error Service Request */
#define SRC_QSPI1ERR	(*( SRC_CPU0SB_type *) 0xF003810CU)	/* QSPI1 Error Service Request */
#define SRC_QSPI2ERR	(*( SRC_CPU0SB_type *) 0xF0038120U)	/* QSPI2 Error Service Request */
#define SRC_QSPI3ERR	(*( SRC_CPU0SB_type *) 0xF0038134U)	/* QSPI3 Error Service Request */
#define SRC_QSPI4ERR	(*( SRC_CPU0SB_type *) 0xF0038148U)	/* QSPI4 Error Service Request */
#define SRC_QSPI0PT	(*( SRC_CPU0SB_type *) 0xF00380FCU)	/* QSPI0 Phase Transition Service Request */
#define SRC_QSPI1PT	(*( SRC_CPU0SB_type *) 0xF0038110U)	/* QSPI1 Phase Transition Service Request */
#define SRC_QSPI2PT	(*( SRC_CPU0SB_type *) 0xF0038124U)	/* QSPI2 Phase Transition Service Request */
#define SRC_QSPI3PT	(*( SRC_CPU0SB_type *) 0xF0038138U)	/* QSPI3 Phase Transition Service Request */
#define SRC_QSPI4PT	(*( SRC_CPU0SB_type *) 0xF003814CU)	/* QSPI4 Phase Transition Service Request */
#define SRC_QSPI0U	(*( SRC_CPU0SB_type *) 0xF0038100U)	/* QSPI0 User Defined Service Request */
#define SRC_QSPI1U	(*( SRC_CPU0SB_type *) 0xF0038114U)	/* QSPI1 User Defined Service Request */
#define SRC_QSPI2U	(*( SRC_CPU0SB_type *) 0xF0038128U)	/* QSPI2 User Defined Service Request */
#define SRC_QSPI3U	(*( SRC_CPU0SB_type *) 0xF003813CU)	/* QSPI3 User Defined Service Request */
#define SRC_QSPI4U	(*( SRC_CPU0SB_type *) 0xF0038150U)	/* QSPI4 User Defined Service Request */
#define SRC_HSCT0	(*( SRC_CPU0SB_type *) 0xF0038180U)	/* HSCT0 Service Request */
#define SRC_HSSL0COK0	(*( SRC_CPU0SB_type *) 0xF0038190U)	/* HSSL0 Channel 0 OK Service Request */
#define SRC_HSSL0COK1	(*( SRC_CPU0SB_type *) 0xF00381A0U)	/* HSSL0 Channel 1 OK Service Request */
#define SRC_HSSL0COK2	(*( SRC_CPU0SB_type *) 0xF00381B0U)	/* HSSL0 Channel 2 OK Service Request */
#define SRC_HSSL0COK3	(*( SRC_CPU0SB_type *) 0xF00381C0U)	/* HSSL0 Channel 3 OK Service Request */
#define SRC_HSSL0RDI0	(*( SRC_CPU0SB_type *) 0xF0038194U)	/* HSSL0 Channel 0 Read Data Service Request */
#define SRC_HSSL0RDI1	(*( SRC_CPU0SB_type *) 0xF00381A4U)	/* HSSL0 Channel 1 Read Data Service Request */
#define SRC_HSSL0RDI2	(*( SRC_CPU0SB_type *) 0xF00381B4U)	/* HSSL0 Channel 2 Read Data Service Request */
#define SRC_HSSL0RDI3	(*( SRC_CPU0SB_type *) 0xF00381C4U)	/* HSSL0 Channel 3 Read Data Service Request */
#define SRC_HSSL0ERR0	(*( SRC_CPU0SB_type *) 0xF0038198U)	/* HSSL0 Channel 0 Error Service Request */
#define SRC_HSSL0ERR1	(*( SRC_CPU0SB_type *) 0xF00381A8U)	/* HSSL0 Channel 1 Error Service Request */
#define SRC_HSSL0ERR2	(*( SRC_CPU0SB_type *) 0xF00381B8U)	/* HSSL0 Channel 2 Error Service Request */
#define SRC_HSSL0ERR3	(*( SRC_CPU0SB_type *) 0xF00381C8U)	/* HSSL0 Channel 3 Error Service Request */
#define SRC_HSSL0TRG0	(*( SRC_CPU0SB_type *) 0xF003819CU)	/* HSSL0 Channel 0 Trigger Interrupt Service Request */
#define SRC_HSSL0TRG1	(*( SRC_CPU0SB_type *) 0xF00381ACU)	/* HSSL0 Channel 1 Trigger Interrupt Service Request */
#define SRC_HSSL0TRG2	(*( SRC_CPU0SB_type *) 0xF00381BCU)	/* HSSL0 Channel 2 Trigger Interrupt Service Request */
#define SRC_HSSL0TRG3	(*( SRC_CPU0SB_type *) 0xF00381CCU)	/* HSSL0 Channel 3 Trigger Interrupt Service Request */
#define SRC_HSSL0EXI	(*( SRC_CPU0SB_type *) 0xF00381D0U)	/* HSSL0 Exception Service Request */
#define SRC_I2C0DTR	(*( SRC_CPU0SB_type *) 0xF0038220U)	/* I2C0 Data Transfer Request */
#define SRC_I2C0ERR	(*( SRC_CPU0SB_type *) 0xF0038224U)	/* I2C0 Error Service Request */
#define SRC_I2C0P	(*( SRC_CPU0SB_type *) 0xF0038228U)	/* I2C0 Protocol Service Request */
#define SRC_SENT0	(*( SRC_CPU0SB_type *) 0xF0038240U)	/* SENT TRIG0 Service Request */
#define SRC_SENT1	(*( SRC_CPU0SB_type *) 0xF0038244U)	/* SENT TRIG1 Service Request */
#define SRC_SENT2	(*( SRC_CPU0SB_type *) 0xF0038248U)	/* SENT TRIG2 Service Request */
#define SRC_SENT3	(*( SRC_CPU0SB_type *) 0xF003824CU)	/* SENT TRIG3 Service Request */
#define SRC_SENT4	(*( SRC_CPU0SB_type *) 0xF0038250U)	/* SENT TRIG4 Service Request */
#define SRC_SENT5	(*( SRC_CPU0SB_type *) 0xF0038254U)	/* SENT TRIG5 Service Request */
#define SRC_SENT6	(*( SRC_CPU0SB_type *) 0xF0038258U)	/* SENT TRIG6 Service Request */
#define SRC_SENT7	(*( SRC_CPU0SB_type *) 0xF003825CU)	/* SENT TRIG7 Service Request */
#define SRC_SENT8	(*( SRC_CPU0SB_type *) 0xF0038260U)	/* SENT TRIG8 Service Request */
#define SRC_SENT9	(*( SRC_CPU0SB_type *) 0xF0038264U)	/* SENT TRIG9 Service Request */
#define SRC_MSC0SR0	(*( SRC_CPU0SB_type *) 0xF0038270U)	/* MSC0 Service Request 0 */
#define SRC_MSC0SR1	(*( SRC_CPU0SB_type *) 0xF0038274U)	/* MSC0 Service Request 1 */
#define SRC_MSC0SR2	(*( SRC_CPU0SB_type *) 0xF0038278U)	/* MSC0 Service Request 2 */
#define SRC_MSC0SR3	(*( SRC_CPU0SB_type *) 0xF003827CU)	/* MSC0 Service Request 3 */
#define SRC_MSC0SR4	(*( SRC_CPU0SB_type *) 0xF0038280U)	/* MSC0 Service Request 4 */
#define SRC_MSC1SR0	(*( SRC_CPU0SB_type *) 0xF0038284U)	/* MSC1 Service Request 0 */
#define SRC_MSC1SR1	(*( SRC_CPU0SB_type *) 0xF0038288U)	/* MSC1 Service Request 1 */
#define SRC_MSC1SR2	(*( SRC_CPU0SB_type *) 0xF003828CU)	/* MSC1 Service Request 2 */
#define SRC_MSC1SR3	(*( SRC_CPU0SB_type *) 0xF0038290U)	/* MSC1 Service Request 3 */
#define SRC_MSC1SR4	(*( SRC_CPU0SB_type *) 0xF0038294U)	/* MSC1 Service Request 4 */
#define SRC_CCU60SR0	(*( SRC_CPU0SB_type *) 0xF00382C0U)	/* CCU0 Service Request 0 */
#define SRC_CCU60SR1	(*( SRC_CPU0SB_type *) 0xF00382C4U)	/* CCU0 Service Request 1 */
#define SRC_CCU60SR2	(*( SRC_CPU0SB_type *) 0xF00382C8U)	/* CCU0 Service Request 2 */
#define SRC_CCU60SR3	(*( SRC_CPU0SB_type *) 0xF00382CCU)	/* CCU0 Service Request 3 */
#define SRC_CCU61SR0	(*( SRC_CPU0SB_type *) 0xF00382D0U)	/* CCU1 Service Request 0 */
#define SRC_CCU61SR1	(*( SRC_CPU0SB_type *) 0xF00382D4U)	/* CCU1 Service Request 1 */
#define SRC_CCU61SR2	(*( SRC_CPU0SB_type *) 0xF00382D8U)	/* CCU1 Service Request 2 */
#define SRC_CCU61SR3	(*( SRC_CPU0SB_type *) 0xF00382DCU)	/* CCU1 Service Request 3 */
#define SRC_GPT120CIRQ	(*( SRC_CPU0SB_type *) 0xF00382E0U)	/* GPT120 CAPREL Service Request */
#define SRC_GPT120T2	(*( SRC_CPU0SB_type *) 0xF00382E4U)	/* GPT120 Timer 2 Service Request */
#define SRC_GPT120T3	(*( SRC_CPU0SB_type *) 0xF00382E8U)	/* GPT120 Timer 3 Service Request */
#define SRC_GPT120T4	(*( SRC_CPU0SB_type *) 0xF00382ECU)	/* GPT120 Timer 4 Service Request */
#define SRC_GPT120T5	(*( SRC_CPU0SB_type *) 0xF00382F0U)	/* GPT120 Timer 5 Service Request */
#define SRC_GPT120T6	(*( SRC_CPU0SB_type *) 0xF00382F4U)	/* GPT120 Timer 6 Service Request */
#define SRC_STM0SR0	(*( SRC_CPU0SB_type *) 0xF0038300U)	/* System Timer 0 Service Request 0 */
#define SRC_STM0SR1	(*( SRC_CPU0SB_type *) 0xF0038304U)	/* System Timer 0 Service Request 1 */
#define SRC_STM1SR0	(*( SRC_CPU0SB_type *) 0xF0038308U)	/* System Timer 1 Service Request 0 */
#define SRC_STM1SR1	(*( SRC_CPU0SB_type *) 0xF003830CU)	/* System Timer 1 Service Request 1 */
#define SRC_STM2SR0	(*( SRC_CPU0SB_type *) 0xF0038310U)	/* System Timer 2 Service Request 0 */
#define SRC_STM2SR1	(*( SRC_CPU0SB_type *) 0xF0038314U)	/* System Timer 2 Service Request 1 */
#define SRC_FCE0	(*( SRC_CPU0SB_type *) 0xF0038330U)	/* FCE0 Error Service Request */
#define SRC_DMAERR0	(*( SRC_CPU0SB_type *) 0xF0038340U)	/* DMA Error Service Request 0 */
#define SRC_DMAERR1	(*( SRC_CPU0SB_type *) 0xF0038344U)	/* DMA Error Service Request 1 */
#define SRC_DMAERR2	(*( SRC_CPU0SB_type *) 0xF0038348U)	/* DMA Error Service Request 2 */
#define SRC_DMAERR3	(*( SRC_CPU0SB_type *) 0xF003834CU)	/* DMA Error Service Request 3 */
#define SRC_DMACH0	(*( SRC_CPU0SB_type *) 0xF0038370U)	/* DMA Channel 0 Service Request */
#define SRC_DMACH1	(*( SRC_CPU0SB_type *) 0xF0038374U)	/* DMA Channel 1 Service Request */
#define SRC_DMACH2	(*( SRC_CPU0SB_type *) 0xF0038378U)	/* DMA Channel 2 Service Request */
#define SRC_DMACH3	(*( SRC_CPU0SB_type *) 0xF003837CU)	/* DMA Channel 3 Service Request */
#define SRC_DMACH4	(*( SRC_CPU0SB_type *) 0xF0038380U)	/* DMA Channel 4 Service Request */
#define SRC_DMACH5	(*( SRC_CPU0SB_type *) 0xF0038384U)	/* DMA Channel 5 Service Request */
#define SRC_DMACH6	(*( SRC_CPU0SB_type *) 0xF0038388U)	/* DMA Channel 6 Service Request */
#define SRC_DMACH7	(*( SRC_CPU0SB_type *) 0xF003838CU)	/* DMA Channel 7 Service Request */
#define SRC_DMACH8	(*( SRC_CPU0SB_type *) 0xF0038390U)	/* DMA Channel 8 Service Request */
#define SRC_DMACH9	(*( SRC_CPU0SB_type *) 0xF0038394U)	/* DMA Channel 9 Service Request */
#define SRC_DMACH10	(*( SRC_CPU0SB_type *) 0xF0038398U)	/* DMA Channel 10 Service Request */
#define SRC_DMACH11	(*( SRC_CPU0SB_type *) 0xF003839CU)	/* DMA Channel 11 Service Request */
#define SRC_DMACH12	(*( SRC_CPU0SB_type *) 0xF00383A0U)	/* DMA Channel 12 Service Request */
#define SRC_DMACH13	(*( SRC_CPU0SB_type *) 0xF00383A4U)	/* DMA Channel 13 Service Request */
#define SRC_DMACH14	(*( SRC_CPU0SB_type *) 0xF00383A8U)	/* DMA Channel 14 Service Request */
#define SRC_DMACH15	(*( SRC_CPU0SB_type *) 0xF00383ACU)	/* DMA Channel 15 Service Request */
#define SRC_DMACH16	(*( SRC_CPU0SB_type *) 0xF00383B0U)	/* DMA Channel 16 Service Request */
#define SRC_DMACH17	(*( SRC_CPU0SB_type *) 0xF00383B4U)	/* DMA Channel 17 Service Request */
#define SRC_DMACH18	(*( SRC_CPU0SB_type *) 0xF00383B8U)	/* DMA Channel 18 Service Request */
#define SRC_DMACH19	(*( SRC_CPU0SB_type *) 0xF00383BCU)	/* DMA Channel 19 Service Request */
#define SRC_DMACH20	(*( SRC_CPU0SB_type *) 0xF00383C0U)	/* DMA Channel 20 Service Request */
#define SRC_DMACH21	(*( SRC_CPU0SB_type *) 0xF00383C4U)	/* DMA Channel 21 Service Request */
#define SRC_DMACH22	(*( SRC_CPU0SB_type *) 0xF00383C8U)	/* DMA Channel 22 Service Request */
#define SRC_DMACH23	(*( SRC_CPU0SB_type *) 0xF00383CCU)	/* DMA Channel 23 Service Request */
#define SRC_DMACH24	(*( SRC_CPU0SB_type *) 0xF00383D0U)	/* DMA Channel 24 Service Request */
#define SRC_DMACH25	(*( SRC_CPU0SB_type *) 0xF00383D4U)	/* DMA Channel 25 Service Request */
#define SRC_DMACH26	(*( SRC_CPU0SB_type *) 0xF00383D8U)	/* DMA Channel 26 Service Request */
#define SRC_DMACH27	(*( SRC_CPU0SB_type *) 0xF00383DCU)	/* DMA Channel 27 Service Request */
#define SRC_DMACH28	(*( SRC_CPU0SB_type *) 0xF00383E0U)	/* DMA Channel 28 Service Request */
#define SRC_DMACH29	(*( SRC_CPU0SB_type *) 0xF00383E4U)	/* DMA Channel 29 Service Request */
#define SRC_DMACH30	(*( SRC_CPU0SB_type *) 0xF00383E8U)	/* DMA Channel 30 Service Request */
#define SRC_DMACH31	(*( SRC_CPU0SB_type *) 0xF00383ECU)	/* DMA Channel 31 Service Request */
#define SRC_DMACH32	(*( SRC_CPU0SB_type *) 0xF00383F0U)	/* DMA Channel 32 Service Request */
#define SRC_DMACH33	(*( SRC_CPU0SB_type *) 0xF00383F4U)	/* DMA Channel 33 Service Request */
#define SRC_DMACH34	(*( SRC_CPU0SB_type *) 0xF00383F8U)	/* DMA Channel 34 Service Request */
#define SRC_DMACH35	(*( SRC_CPU0SB_type *) 0xF00383FCU)	/* DMA Channel 35 Service Request */
#define SRC_DMACH36	(*( SRC_CPU0SB_type *) 0xF0038400U)	/* DMA Channel 36 Service Request */
#define SRC_DMACH37	(*( SRC_CPU0SB_type *) 0xF0038404U)	/* DMA Channel 37 Service Request */
#define SRC_DMACH38	(*( SRC_CPU0SB_type *) 0xF0038408U)	/* DMA Channel 38 Service Request */
#define SRC_DMACH39	(*( SRC_CPU0SB_type *) 0xF003840CU)	/* DMA Channel 39 Service Request */
#define SRC_DMACH40	(*( SRC_CPU0SB_type *) 0xF0038410U)	/* DMA Channel 40 Service Request */
#define SRC_DMACH41	(*( SRC_CPU0SB_type *) 0xF0038414U)	/* DMA Channel 41 Service Request */
#define SRC_DMACH42	(*( SRC_CPU0SB_type *) 0xF0038418U)	/* DMA Channel 42 Service Request */
#define SRC_DMACH43	(*( SRC_CPU0SB_type *) 0xF003841CU)	/* DMA Channel 43 Service Request */
#define SRC_DMACH44	(*( SRC_CPU0SB_type *) 0xF0038420U)	/* DMA Channel 44 Service Request */
#define SRC_DMACH45	(*( SRC_CPU0SB_type *) 0xF0038424U)	/* DMA Channel 45 Service Request */
#define SRC_DMACH46	(*( SRC_CPU0SB_type *) 0xF0038428U)	/* DMA Channel 46 Service Request */
#define SRC_DMACH47	(*( SRC_CPU0SB_type *) 0xF003842CU)	/* DMA Channel 47 Service Request */
#define SRC_DMACH48	(*( SRC_CPU0SB_type *) 0xF0038430U)	/* DMA Channel 48 Service Request */
#define SRC_DMACH49	(*( SRC_CPU0SB_type *) 0xF0038434U)	/* DMA Channel 49 Service Request */
#define SRC_DMACH50	(*( SRC_CPU0SB_type *) 0xF0038438U)	/* DMA Channel 50 Service Request */
#define SRC_DMACH51	(*( SRC_CPU0SB_type *) 0xF003843CU)	/* DMA Channel 51 Service Request */
#define SRC_DMACH52	(*( SRC_CPU0SB_type *) 0xF0038440U)	/* DMA Channel 52 Service Request */
#define SRC_DMACH53	(*( SRC_CPU0SB_type *) 0xF0038444U)	/* DMA Channel 53 Service Request */
#define SRC_DMACH54	(*( SRC_CPU0SB_type *) 0xF0038448U)	/* DMA Channel 54 Service Request */
#define SRC_DMACH55	(*( SRC_CPU0SB_type *) 0xF003844CU)	/* DMA Channel 55 Service Request */
#define SRC_DMACH56	(*( SRC_CPU0SB_type *) 0xF0038450U)	/* DMA Channel 56 Service Request */
#define SRC_DMACH57	(*( SRC_CPU0SB_type *) 0xF0038454U)	/* DMA Channel 57 Service Request */
#define SRC_DMACH58	(*( SRC_CPU0SB_type *) 0xF0038458U)	/* DMA Channel 58 Service Request */
#define SRC_DMACH59	(*( SRC_CPU0SB_type *) 0xF003845CU)	/* DMA Channel 59 Service Request */
#define SRC_DMACH60	(*( SRC_CPU0SB_type *) 0xF0038460U)	/* DMA Channel 60 Service Request */
#define SRC_DMACH61	(*( SRC_CPU0SB_type *) 0xF0038464U)	/* DMA Channel 61 Service Request */
#define SRC_DMACH62	(*( SRC_CPU0SB_type *) 0xF0038468U)	/* DMA Channel 62 Service Request */
#define SRC_DMACH63	(*( SRC_CPU0SB_type *) 0xF003846CU)	/* DMA Channel 63 Service Request */
#define SRC_DMACH64	(*( SRC_CPU0SB_type *) 0xF0038470U)	/* DMA Channel 64 Service Request */
#define SRC_DMACH65	(*( SRC_CPU0SB_type *) 0xF0038474U)	/* DMA Channel 65 Service Request */
#define SRC_DMACH66	(*( SRC_CPU0SB_type *) 0xF0038478U)	/* DMA Channel 66 Service Request */
#define SRC_DMACH67	(*( SRC_CPU0SB_type *) 0xF003847CU)	/* DMA Channel 67 Service Request */
#define SRC_DMACH68	(*( SRC_CPU0SB_type *) 0xF0038480U)	/* DMA Channel 68 Service Request */
#define SRC_DMACH69	(*( SRC_CPU0SB_type *) 0xF0038484U)	/* DMA Channel 69 Service Request */
#define SRC_DMACH70	(*( SRC_CPU0SB_type *) 0xF0038488U)	/* DMA Channel 70 Service Request */
#define SRC_DMACH71	(*( SRC_CPU0SB_type *) 0xF003848CU)	/* DMA Channel 71 Service Request */
#define SRC_DMACH72	(*( SRC_CPU0SB_type *) 0xF0038490U)	/* DMA Channel 72 Service Request */
#define SRC_DMACH73	(*( SRC_CPU0SB_type *) 0xF0038494U)	/* DMA Channel 73 Service Request */
#define SRC_DMACH74	(*( SRC_CPU0SB_type *) 0xF0038498U)	/* DMA Channel 74 Service Request */
#define SRC_DMACH75	(*( SRC_CPU0SB_type *) 0xF003849CU)	/* DMA Channel 75 Service Request */
#define SRC_DMACH76	(*( SRC_CPU0SB_type *) 0xF00384A0U)	/* DMA Channel 76 Service Request */
#define SRC_DMACH77	(*( SRC_CPU0SB_type *) 0xF00384A4U)	/* DMA Channel 77 Service Request */
#define SRC_DMACH78	(*( SRC_CPU0SB_type *) 0xF00384A8U)	/* DMA Channel 78 Service Request */
#define SRC_DMACH79	(*( SRC_CPU0SB_type *) 0xF00384ACU)	/* DMA Channel 79 Service Request */
#define SRC_DMACH80	(*( SRC_CPU0SB_type *) 0xF00384B0U)	/* DMA Channel 80 Service Request */
#define SRC_DMACH81	(*( SRC_CPU0SB_type *) 0xF00384B4U)	/* DMA Channel 81 Service Request */
#define SRC_DMACH82	(*( SRC_CPU0SB_type *) 0xF00384B8U)	/* DMA Channel 82 Service Request */
#define SRC_DMACH83	(*( SRC_CPU0SB_type *) 0xF00384BCU)	/* DMA Channel 83 Service Request */
#define SRC_DMACH84	(*( SRC_CPU0SB_type *) 0xF00384C0U)	/* DMA Channel 84 Service Request */
#define SRC_DMACH85	(*( SRC_CPU0SB_type *) 0xF00384C4U)	/* DMA Channel 85 Service Request */
#define SRC_DMACH86	(*( SRC_CPU0SB_type *) 0xF00384C8U)	/* DMA Channel 86 Service Request */
#define SRC_DMACH87	(*( SRC_CPU0SB_type *) 0xF00384CCU)	/* DMA Channel 87 Service Request */
#define SRC_DMACH88	(*( SRC_CPU0SB_type *) 0xF00384D0U)	/* DMA Channel 88 Service Request */
#define SRC_DMACH89	(*( SRC_CPU0SB_type *) 0xF00384D4U)	/* DMA Channel 89 Service Request */
#define SRC_DMACH90	(*( SRC_CPU0SB_type *) 0xF00384D8U)	/* DMA Channel 90 Service Request */
#define SRC_DMACH91	(*( SRC_CPU0SB_type *) 0xF00384DCU)	/* DMA Channel 91 Service Request */
#define SRC_DMACH92	(*( SRC_CPU0SB_type *) 0xF00384E0U)	/* DMA Channel 92 Service Request */
#define SRC_DMACH93	(*( SRC_CPU0SB_type *) 0xF00384E4U)	/* DMA Channel 93 Service Request */
#define SRC_DMACH94	(*( SRC_CPU0SB_type *) 0xF00384E8U)	/* DMA Channel 94 Service Request */
#define SRC_DMACH95	(*( SRC_CPU0SB_type *) 0xF00384ECU)	/* DMA Channel 95 Service Request */
#define SRC_DMACH96	(*( SRC_CPU0SB_type *) 0xF00384F0U)	/* DMA Channel 96 Service Request */
#define SRC_DMACH97	(*( SRC_CPU0SB_type *) 0xF00384F4U)	/* DMA Channel 97 Service Request */
#define SRC_DMACH98	(*( SRC_CPU0SB_type *) 0xF00384F8U)	/* DMA Channel 98 Service Request */
#define SRC_DMACH99	(*( SRC_CPU0SB_type *) 0xF00384FCU)	/* DMA Channel 99 Service Request */
#define SRC_DMACH100	(*( SRC_CPU0SB_type *) 0xF0038500U)	/* DMA Channel 100 Service Request */
#define SRC_DMACH101	(*( SRC_CPU0SB_type *) 0xF0038504U)	/* DMA Channel 101 Service Request */
#define SRC_DMACH102	(*( SRC_CPU0SB_type *) 0xF0038508U)	/* DMA Channel 102 Service Request */
#define SRC_DMACH103	(*( SRC_CPU0SB_type *) 0xF003850CU)	/* DMA Channel 103 Service Request */
#define SRC_DMACH104	(*( SRC_CPU0SB_type *) 0xF0038510U)	/* DMA Channel 104 Service Request */
#define SRC_DMACH105	(*( SRC_CPU0SB_type *) 0xF0038514U)	/* DMA Channel 105 Service Request */
#define SRC_DMACH106	(*( SRC_CPU0SB_type *) 0xF0038518U)	/* DMA Channel 106 Service Request */
#define SRC_DMACH107	(*( SRC_CPU0SB_type *) 0xF003851CU)	/* DMA Channel 107 Service Request */
#define SRC_DMACH108	(*( SRC_CPU0SB_type *) 0xF0038520U)	/* DMA Channel 108 Service Request */
#define SRC_DMACH109	(*( SRC_CPU0SB_type *) 0xF0038524U)	/* DMA Channel 109 Service Request */
#define SRC_DMACH110	(*( SRC_CPU0SB_type *) 0xF0038528U)	/* DMA Channel 110 Service Request */
#define SRC_DMACH111	(*( SRC_CPU0SB_type *) 0xF003852CU)	/* DMA Channel 111 Service Request */
#define SRC_DMACH112	(*( SRC_CPU0SB_type *) 0xF0038530U)	/* DMA Channel 112 Service Request */
#define SRC_DMACH113	(*( SRC_CPU0SB_type *) 0xF0038534U)	/* DMA Channel 113 Service Request */
#define SRC_DMACH114	(*( SRC_CPU0SB_type *) 0xF0038538U)	/* DMA Channel 114 Service Request */
#define SRC_DMACH115	(*( SRC_CPU0SB_type *) 0xF003853CU)	/* DMA Channel 115 Service Request */
#define SRC_DMACH116	(*( SRC_CPU0SB_type *) 0xF0038540U)	/* DMA Channel 116 Service Request */
#define SRC_DMACH117	(*( SRC_CPU0SB_type *) 0xF0038544U)	/* DMA Channel 117 Service Request */
#define SRC_DMACH118	(*( SRC_CPU0SB_type *) 0xF0038548U)	/* DMA Channel 118 Service Request */
#define SRC_DMACH119	(*( SRC_CPU0SB_type *) 0xF003854CU)	/* DMA Channel 119 Service Request */
#define SRC_DMACH120	(*( SRC_CPU0SB_type *) 0xF0038550U)	/* DMA Channel 120 Service Request */
#define SRC_DMACH121	(*( SRC_CPU0SB_type *) 0xF0038554U)	/* DMA Channel 121 Service Request */
#define SRC_DMACH122	(*( SRC_CPU0SB_type *) 0xF0038558U)	/* DMA Channel 122 Service Request */
#define SRC_DMACH123	(*( SRC_CPU0SB_type *) 0xF003855CU)	/* DMA Channel 123 Service Request */
#define SRC_DMACH124	(*( SRC_CPU0SB_type *) 0xF0038560U)	/* DMA Channel 124 Service Request */
#define SRC_DMACH125	(*( SRC_CPU0SB_type *) 0xF0038564U)	/* DMA Channel 125 Service Request */
#define SRC_DMACH126	(*( SRC_CPU0SB_type *) 0xF0038568U)	/* DMA Channel 126 Service Request */
#define SRC_DMACH127	(*( SRC_CPU0SB_type *) 0xF003856CU)	/* DMA Channel 127 Service Request */
#define SRC_GETH0	(*( SRC_CPU0SB_type *) 0xF0038580U)	/* GETH Service Request 0 */
#define SRC_GETH1	(*( SRC_CPU0SB_type *) 0xF0038584U)	/* GETH Service Request 1 */
#define SRC_GETH2	(*( SRC_CPU0SB_type *) 0xF0038588U)	/* GETH Service Request 2 */
#define SRC_GETH3	(*( SRC_CPU0SB_type *) 0xF003858CU)	/* GETH Service Request 3 */
#define SRC_GETH4	(*( SRC_CPU0SB_type *) 0xF0038590U)	/* GETH Service Request 4 */
#define SRC_GETH5	(*( SRC_CPU0SB_type *) 0xF0038594U)	/* GETH Service Request 5 */
#define SRC_GETH6	(*( SRC_CPU0SB_type *) 0xF0038598U)	/* GETH Service Request 6 */
#define SRC_GETH7	(*( SRC_CPU0SB_type *) 0xF003859CU)	/* GETH Service Request 7 */
#define SRC_GETH8	(*( SRC_CPU0SB_type *) 0xF00385A0U)	/* GETH Service Request 8 */
#define SRC_GETH9	(*( SRC_CPU0SB_type *) 0xF00385A4U)	/* GETH Service Request 9 */
#define SRC_CAN0INT0	(*( SRC_CPU0SB_type *) 0xF00385B0U)	/* CAN0 Service Request 0 */
#define SRC_CAN0INT1	(*( SRC_CPU0SB_type *) 0xF00385B4U)	/* CAN0 Service Request 1 */
#define SRC_CAN0INT2	(*( SRC_CPU0SB_type *) 0xF00385B8U)	/* CAN0 Service Request 2 */
#define SRC_CAN0INT3	(*( SRC_CPU0SB_type *) 0xF00385BCU)	/* CAN0 Service Request 3 */
#define SRC_CAN0INT4	(*( SRC_CPU0SB_type *) 0xF00385C0U)	/* CAN0 Service Request 4 */
#define SRC_CAN0INT5	(*( SRC_CPU0SB_type *) 0xF00385C4U)	/* CAN0 Service Request 5 */
#define SRC_CAN0INT6	(*( SRC_CPU0SB_type *) 0xF00385C8U)	/* CAN0 Service Request 6 */
#define SRC_CAN0INT7	(*( SRC_CPU0SB_type *) 0xF00385CCU)	/* CAN0 Service Request 7 */
#define SRC_CAN0INT8	(*( SRC_CPU0SB_type *) 0xF00385D0U)	/* CAN0 Service Request 8 */
#define SRC_CAN0INT9	(*( SRC_CPU0SB_type *) 0xF00385D4U)	/* CAN0 Service Request 9 */
#define SRC_CAN0INT10	(*( SRC_CPU0SB_type *) 0xF00385D8U)	/* CAN0 Service Request 10 */
#define SRC_CAN0INT11	(*( SRC_CPU0SB_type *) 0xF00385DCU)	/* CAN0 Service Request 11 */
#define SRC_CAN0INT12	(*( SRC_CPU0SB_type *) 0xF00385E0U)	/* CAN0 Service Request 12 */
#define SRC_CAN0INT13	(*( SRC_CPU0SB_type *) 0xF00385E4U)	/* CAN0 Service Request 13 */
#define SRC_CAN0INT14	(*( SRC_CPU0SB_type *) 0xF00385E8U)	/* CAN0 Service Request 14 */
#define SRC_CAN0INT15	(*( SRC_CPU0SB_type *) 0xF00385ECU)	/* CAN0 Service Request 15 */
#define SRC_CAN1INT0	(*( SRC_CPU0SB_type *) 0xF00385F0U)	/* CAN1 Service Request 0 */
#define SRC_CAN1INT1	(*( SRC_CPU0SB_type *) 0xF00385F4U)	/* CAN1 Service Request 1 */
#define SRC_CAN1INT2	(*( SRC_CPU0SB_type *) 0xF00385F8U)	/* CAN1 Service Request 2 */
#define SRC_CAN1INT3	(*( SRC_CPU0SB_type *) 0xF00385FCU)	/* CAN1 Service Request 3 */
#define SRC_CAN1INT4	(*( SRC_CPU0SB_type *) 0xF0038600U)	/* CAN1 Service Request 4 */
#define SRC_CAN1INT5	(*( SRC_CPU0SB_type *) 0xF0038604U)	/* CAN1 Service Request 5 */
#define SRC_CAN1INT6	(*( SRC_CPU0SB_type *) 0xF0038608U)	/* CAN1 Service Request 6 */
#define SRC_CAN1INT7	(*( SRC_CPU0SB_type *) 0xF003860CU)	/* CAN1 Service Request 7 */
#define SRC_CAN1INT8	(*( SRC_CPU0SB_type *) 0xF0038610U)	/* CAN1 Service Request 8 */
#define SRC_CAN1INT9	(*( SRC_CPU0SB_type *) 0xF0038614U)	/* CAN1 Service Request 9 */
#define SRC_CAN1INT10	(*( SRC_CPU0SB_type *) 0xF0038618U)	/* CAN1 Service Request 10 */
#define SRC_CAN1INT11	(*( SRC_CPU0SB_type *) 0xF003861CU)	/* CAN1 Service Request 11 */
#define SRC_CAN1INT12	(*( SRC_CPU0SB_type *) 0xF0038620U)	/* CAN1 Service Request 12 */
#define SRC_CAN1INT13	(*( SRC_CPU0SB_type *) 0xF0038624U)	/* CAN1 Service Request 13 */
#define SRC_CAN1INT14	(*( SRC_CPU0SB_type *) 0xF0038628U)	/* CAN1 Service Request 14 */
#define SRC_CAN1INT15	(*( SRC_CPU0SB_type *) 0xF003862CU)	/* CAN1 Service Request 15 */
#define SRC_VADCG0SR0	(*( SRC_CPU0SB_type *) 0xF0038670U)	/* EVADC Group 0 Service Request 0 */
#define SRC_VADCG0SR1	(*( SRC_CPU0SB_type *) 0xF0038674U)	/* EVADC Group 0 Service Request 1 */
#define SRC_VADCG0SR2	(*( SRC_CPU0SB_type *) 0xF0038678U)	/* EVADC Group 0 Service Request 2 */
#define SRC_VADCG0SR3	(*( SRC_CPU0SB_type *) 0xF003867CU)	/* EVADC Group 0 Service Request 3 */
#define SRC_VADCG1SR0	(*( SRC_CPU0SB_type *) 0xF0038680U)	/* EVADC Group 1 Service Request 0 */
#define SRC_VADCG1SR1	(*( SRC_CPU0SB_type *) 0xF0038684U)	/* EVADC Group 1 Service Request 1 */
#define SRC_VADCG1SR2	(*( SRC_CPU0SB_type *) 0xF0038688U)	/* EVADC Group 1 Service Request 2 */
#define SRC_VADCG1SR3	(*( SRC_CPU0SB_type *) 0xF003868CU)	/* EVADC Group 1 Service Request 3 */
#define SRC_VADCG2SR0	(*( SRC_CPU0SB_type *) 0xF0038690U)	/* EVADC Group 2 Service Request 0 */
#define SRC_VADCG2SR1	(*( SRC_CPU0SB_type *) 0xF0038694U)	/* EVADC Group 2 Service Request 1 */
#define SRC_VADCG2SR2	(*( SRC_CPU0SB_type *) 0xF0038698U)	/* EVADC Group 2 Service Request 2 */
#define SRC_VADCG2SR3	(*( SRC_CPU0SB_type *) 0xF003869CU)	/* EVADC Group 2 Service Request 3 */
#define SRC_VADCG3SR0	(*( SRC_CPU0SB_type *) 0xF00386A0U)	/* EVADC Group 3 Service Request 0 */
#define SRC_VADCG3SR1	(*( SRC_CPU0SB_type *) 0xF00386A4U)	/* EVADC Group 3 Service Request 1 */
#define SRC_VADCG3SR2	(*( SRC_CPU0SB_type *) 0xF00386A8U)	/* EVADC Group 3 Service Request 2 */
#define SRC_VADCG3SR3	(*( SRC_CPU0SB_type *) 0xF00386ACU)	/* EVADC Group 3 Service Request 3 */
#define SRC_VADCG8SR0	(*( SRC_CPU0SB_type *) 0xF00386F0U)	/* EVADC Group 8 Service Request 0 */
#define SRC_VADCG8SR1	(*( SRC_CPU0SB_type *) 0xF00386F4U)	/* EVADC Group 8 Service Request 1 */
#define SRC_VADCG8SR2	(*( SRC_CPU0SB_type *) 0xF00386F8U)	/* EVADC Group 8 Service Request 2 */
#define SRC_VADCG8SR3	(*( SRC_CPU0SB_type *) 0xF00386FCU)	/* EVADC Group 8 Service Request 3 */
#define SRC_VADCG9SR0	(*( SRC_CPU0SB_type *) 0xF0038700U)	/* EVADC Group 9 Service Request 0 */
#define SRC_VADCG9SR1	(*( SRC_CPU0SB_type *) 0xF0038704U)	/* EVADC Group 9 Service Request 1 */
#define SRC_VADCG9SR2	(*( SRC_CPU0SB_type *) 0xF0038708U)	/* EVADC Group 9 Service Request 2 */
#define SRC_VADCG9SR3	(*( SRC_CPU0SB_type *) 0xF003870CU)	/* EVADC Group 9 Service Request 3 */
#define SRC_VADCG10SR0	(*( SRC_CPU0SB_type *) 0xF0038710U)	/* EVADC Group 10 Service Request 0 */
#define SRC_VADCG10SR1	(*( SRC_CPU0SB_type *) 0xF0038714U)	/* EVADC Group 10 Service Request 1 */
#define SRC_VADCG10SR2	(*( SRC_CPU0SB_type *) 0xF0038718U)	/* EVADC Group 10 Service Request 2 */
#define SRC_VADCG10SR3	(*( SRC_CPU0SB_type *) 0xF003871CU)	/* EVADC Group 10 Service Request 3 */
#define SRC_VADCG11SR0	(*( SRC_CPU0SB_type *) 0xF0038720U)	/* EVADC Group 11 Service Request 0 */
#define SRC_VADCG11SR1	(*( SRC_CPU0SB_type *) 0xF0038724U)	/* EVADC Group 11 Service Request 1 */
#define SRC_VADCG11SR2	(*( SRC_CPU0SB_type *) 0xF0038728U)	/* EVADC Group 11 Service Request 2 */
#define SRC_VADCG11SR3	(*( SRC_CPU0SB_type *) 0xF003872CU)	/* EVADC Group 11 Service Request 3 */
#define SRC_VADCFC0SR0	(*( SRC_CPU0SB_type *) 0xF0038730U)	/* EVADC Fast Compare 0 Service Request SR0 */
#define SRC_VADCFC1SR0	(*( SRC_CPU0SB_type *) 0xF0038734U)	/* EVADC Fast Compare 1 Service Request SR0 */
#define SRC_VADCFC2SR0	(*( SRC_CPU0SB_type *) 0xF0038738U)	/* EVADC Fast Compare 2 Service Request SR0 */
#define SRC_VADCFC3SR0	(*( SRC_CPU0SB_type *) 0xF003873CU)	/* EVADC Fast Compare 3 Service Request SR0 */
#define SRC_VADCCG0SR0	(*( SRC_CPU0SB_type *) 0xF0038750U)	/* EVADC Common Group 0 Service Request 0 */
#define SRC_VADCCG0SR1	(*( SRC_CPU0SB_type *) 0xF0038754U)	/* EVADC Common Group 0 Service Request 1 */
#define SRC_VADCCG0SR2	(*( SRC_CPU0SB_type *) 0xF0038758U)	/* EVADC Common Group 0 Service Request 2 */
#define SRC_VADCCG0SR3	(*( SRC_CPU0SB_type *) 0xF003875CU)	/* EVADC Common Group 0 Service Request 3 */
#define SRC_VADCCG1SR0	(*( SRC_CPU0SB_type *) 0xF0038760U)	/* EVADC Common Group 1 Service Request 0 */
#define SRC_VADCCG1SR1	(*( SRC_CPU0SB_type *) 0xF0038764U)	/* EVADC Common Group 1 Service Request 1 */
#define SRC_VADCCG1SR2	(*( SRC_CPU0SB_type *) 0xF0038768U)	/* EVADC Common Group 1 Service Request 2 */
#define SRC_VADCCG1SR3	(*( SRC_CPU0SB_type *) 0xF003876CU)	/* EVADC Common Group 1 Service Request 3 */
#define SRC_DSADCSRM0	(*( SRC_CPU0SB_type *) 0xF0038770U)	/* DSADC SRM0 Service Request */
#define SRC_DSADCSRM1	(*( SRC_CPU0SB_type *) 0xF0038778U)	/* DSADC SRM1 Service Request */
#define SRC_DSADCSRM2	(*( SRC_CPU0SB_type *) 0xF0038780U)	/* DSADC SRM2 Service Request */
#define SRC_DSADCSRM3	(*( SRC_CPU0SB_type *) 0xF0038788U)	/* DSADC SRM3 Service Request */
#define SRC_DSADCSRM4	(*( SRC_CPU0SB_type *) 0xF0038790U)	/* DSADC SRM4 Service Request */
#define SRC_DSADCSRM5	(*( SRC_CPU0SB_type *) 0xF0038798U)	/* DSADC SRM5 Service Request */
#define SRC_DSADCSRA0	(*( SRC_CPU0SB_type *) 0xF0038774U)	/* DSADC SRA0 Service Request */
#define SRC_DSADCSRA1	(*( SRC_CPU0SB_type *) 0xF003877CU)	/* DSADC SRA1 Service Request */
#define SRC_DSADCSRA2	(*( SRC_CPU0SB_type *) 0xF0038784U)	/* DSADC SRA2 Service Request */
#define SRC_DSADCSRA3	(*( SRC_CPU0SB_type *) 0xF003878CU)	/* DSADC SRA3 Service Request */
#define SRC_DSADCSRA4	(*( SRC_CPU0SB_type *) 0xF0038794U)	/* DSADC SRA4 Service Request */
#define SRC_DSADCSRA5	(*( SRC_CPU0SB_type *) 0xF003879CU)	/* DSADC SRA5 Service Request */
#define SRC_ERAY0INT0	(*( SRC_CPU0SB_type *) 0xF0038800U)	/* E-RAY 0 Service Request 0 */
#define SRC_ERAY0INT1	(*( SRC_CPU0SB_type *) 0xF0038804U)	/* E-RAY 0 Service Request 1 */
#define SRC_ERAY0TINT0	(*( SRC_CPU0SB_type *) 0xF0038808U)	/* E-RAY 0 Timer Interrupt 0 Service Request */
#define SRC_ERAY0TINT1	(*( SRC_CPU0SB_type *) 0xF003880CU)	/* E-RAY 0 Timer Interrupt 1 Service Request */
#define SRC_ERAY0NDAT0	(*( SRC_CPU0SB_type *) 0xF0038810U)	/* E-RAY 0 New Data 0 Service Request */
#define SRC_ERAY0NDAT1	(*( SRC_CPU0SB_type *) 0xF0038814U)	/* E-RAY 0 New Data 1 Service Request */
#define SRC_ERAY0MBSC0	(*( SRC_CPU0SB_type *) 0xF0038818U)	/* E-RAY 0 Message Buffer Status Changed 0 Service Request */
#define SRC_ERAY0MBSC1	(*( SRC_CPU0SB_type *) 0xF003881CU)	/* E-RAY 0 Message Buffer Status Changed 1 Service Request */
#define SRC_ERAY0OBUSY	(*( SRC_CPU0SB_type *) 0xF0038820U)	/* E-RAY 0 Output Buffer Busy */
#define SRC_ERAY0IBUSY	(*( SRC_CPU0SB_type *) 0xF0038824U)	/* E-RAY 0 Input Buffer Busy */
#define SRC_DMUHOST	(*( SRC_CPU0SB_type *) 0xF0038860U)	/* DMU Host Service Request */
#define SRC_DMUFSI	(*( SRC_CPU0SB_type *) 0xF0038864U)	/* DMU FSI Service Request */
#define SRC_HSM0	(*( SRC_CPU0SB_type *) 0xF0038870U)	/* HSM Service Request 0 */
#define SRC_HSM1	(*( SRC_CPU0SB_type *) 0xF0038874U)	/* HSM Service Request 1 */
#define SRC_SCUERU0	(*( SRC_CPU0SB_type *) 0xF0038880U)	/* SCU ERU Service Request 0 */
#define SRC_SCUERU1	(*( SRC_CPU0SB_type *) 0xF0038884U)	/* SCU ERU Service Request 1 */
#define SRC_SCUERU2	(*( SRC_CPU0SB_type *) 0xF0038888U)	/* SCU ERU Service Request 2 */
#define SRC_SCUERU3	(*( SRC_CPU0SB_type *) 0xF003888CU)	/* SCU ERU Service Request 3 */
#define SRC_PMSDTS	(*( SRC_CPU0SB_type *) 0xF00388ACU)	/* PMS DTS Service Request */
#define SRC_PMS0	(*( SRC_CPU0SB_type *) 0xF00388B0U)	/* Power Management System Service Request 0 */
#define SRC_PMS1	(*( SRC_CPU0SB_type *) 0xF00388B4U)	/* Power Management System Service Request 1 */
#define SRC_PMS2	(*( SRC_CPU0SB_type *) 0xF00388B8U)	/* Power Management System Service Request 2 */
#define SRC_PMS3	(*( SRC_CPU0SB_type *) 0xF00388BCU)	/* Power Management System Service Request 3 */
#define SRC_SCR	(*( SRC_CPU0SB_type *) 0xF00388C0U)	/* Stand By Controller Service Request */
#define SRC_SMU0	(*( SRC_CPU0SB_type *) 0xF00388D0U)	/* SMU Service Request 0 */
#define SRC_SMU1	(*( SRC_CPU0SB_type *) 0xF00388D4U)	/* SMU Service Request 1 */
#define SRC_SMU2	(*( SRC_CPU0SB_type *) 0xF00388D8U)	/* SMU Service Request 2 */
#define SRC_PSI50	(*( SRC_CPU0SB_type *) 0xF00388E0U)	/* PSI5 Service Request 0 */
#define SRC_PSI51	(*( SRC_CPU0SB_type *) 0xF00388E4U)	/* PSI5 Service Request 1 */
#define SRC_PSI52	(*( SRC_CPU0SB_type *) 0xF00388E8U)	/* PSI5 Service Request 2 */
#define SRC_PSI53	(*( SRC_CPU0SB_type *) 0xF00388ECU)	/* PSI5 Service Request 3 */
#define SRC_PSI54	(*( SRC_CPU0SB_type *) 0xF00388F0U)	/* PSI5 Service Request 4 */
#define SRC_PSI55	(*( SRC_CPU0SB_type *) 0xF00388F4U)	/* PSI5 Service Request 5 */
#define SRC_PSI56	(*( SRC_CPU0SB_type *) 0xF00388F8U)	/* PSI5 Service Request 6 */
#define SRC_PSI57	(*( SRC_CPU0SB_type *) 0xF00388FCU)	/* PSI5 Service Request 7 */
#define SRC_DAM0LI0	(*( SRC_CPU0SB_type *) 0xF0038910U)	/* DAM0 Limit 0 Service Request */
#define SRC_DAM0RI0	(*( SRC_CPU0SB_type *) 0xF0038914U)	/* DAM0 Ready 0 Service Reques */
#define SRC_DAM0LI1	(*( SRC_CPU0SB_type *) 0xF0038918U)	/* DAM0 Limit 1 Service Request */
#define SRC_DAM0RI1	(*( SRC_CPU0SB_type *) 0xF003891CU)	/* DAM0 Ready 1 Service Request */
#define SRC_DAM0DR	(*( SRC_CPU0SB_type *) 0xF0038920U)	/* DAM0 DMA Ready Service Request */
#define SRC_DAM0ERR	(*( SRC_CPU0SB_type *) 0xF0038924U)	/* DAM0 Error Service Request */
#define SRC_PSI5S0	(*( SRC_CPU0SB_type *) 0xF0038950U)	/* PSI5-S Service Request 0 */
#define SRC_PSI5S1	(*( SRC_CPU0SB_type *) 0xF0038954U)	/* PSI5-S Service Request 1 */
#define SRC_PSI5S2	(*( SRC_CPU0SB_type *) 0xF0038958U)	/* PSI5-S Service Request 2 */
#define SRC_PSI5S3	(*( SRC_CPU0SB_type *) 0xF003895CU)	/* PSI5-S Service Request 3 */
#define SRC_PSI5S4	(*( SRC_CPU0SB_type *) 0xF0038960U)	/* PSI5-S Service Request 4 */
#define SRC_PSI5S5	(*( SRC_CPU0SB_type *) 0xF0038964U)	/* PSI5-S Service Request 5 */
#define SRC_PSI5S6	(*( SRC_CPU0SB_type *) 0xF0038968U)	/* PSI5-S Service Request 6 */
#define SRC_PSI5S7	(*( SRC_CPU0SB_type *) 0xF003896CU)	/* PSI5-S Service Request 7 */
#define SRC_GPSR00	(*( SRC_CPU0SB_type *) 0xF0038990U)	/* General Purpose Group 0 Service Request 0 */
#define SRC_GPSR01	(*( SRC_CPU0SB_type *) 0xF0038994U)	/* General Purpose Group 0 Service Request 1 */
#define SRC_GPSR02	(*( SRC_CPU0SB_type *) 0xF0038998U)	/* General Purpose Group 0 Service Request 2 */
#define SRC_GPSR03	(*( SRC_CPU0SB_type *) 0xF003899CU)	/* General Purpose Group 0 Service Request 3 */
#define SRC_GPSR04	(*( SRC_CPU0SB_type *) 0xF00389A0U)	/* General Purpose Group 0 Service Request 4 */
#define SRC_GPSR05	(*( SRC_CPU0SB_type *) 0xF00389A4U)	/* General Purpose Group 0 Service Request 5 */
#define SRC_GPSR06	(*( SRC_CPU0SB_type *) 0xF00389A8U)	/* General Purpose Group 0 Service Request 6 */
#define SRC_GPSR07	(*( SRC_CPU0SB_type *) 0xF00389ACU)	/* General Purpose Group 0 Service Request 7 */
#define SRC_GPSR10	(*( SRC_CPU0SB_type *) 0xF00389B0U)	/* General Purpose Group 1 Service Request 0 */
#define SRC_GPSR11	(*( SRC_CPU0SB_type *) 0xF00389B4U)	/* General Purpose Group 1 Service Request 1 */
#define SRC_GPSR12	(*( SRC_CPU0SB_type *) 0xF00389B8U)	/* General Purpose Group 1 Service Request 2 */
#define SRC_GPSR13	(*( SRC_CPU0SB_type *) 0xF00389BCU)	/* General Purpose Group 1 Service Request 3 */
#define SRC_GPSR14	(*( SRC_CPU0SB_type *) 0xF00389C0U)	/* General Purpose Group 1 Service Request 4 */
#define SRC_GPSR15	(*( SRC_CPU0SB_type *) 0xF00389C4U)	/* General Purpose Group 1 Service Request 5 */
#define SRC_GPSR16	(*( SRC_CPU0SB_type *) 0xF00389C8U)	/* General Purpose Group 1 Service Request 6 */
#define SRC_GPSR17	(*( SRC_CPU0SB_type *) 0xF00389CCU)	/* General Purpose Group 1 Service Request 7 */
#define SRC_GPSR20	(*( SRC_CPU0SB_type *) 0xF00389D0U)	/* General Purpose Group 2 Service Request 0 */
#define SRC_GPSR21	(*( SRC_CPU0SB_type *) 0xF00389D4U)	/* General Purpose Group 2 Service Request 1 */
#define SRC_GPSR22	(*( SRC_CPU0SB_type *) 0xF00389D8U)	/* General Purpose Group 2 Service Request 2 */
#define SRC_GPSR23	(*( SRC_CPU0SB_type *) 0xF00389DCU)	/* General Purpose Group 2 Service Request 3 */
#define SRC_GPSR24	(*( SRC_CPU0SB_type *) 0xF00389E0U)	/* General Purpose Group 2 Service Request 4 */
#define SRC_GPSR25	(*( SRC_CPU0SB_type *) 0xF00389E4U)	/* General Purpose Group 2 Service Request 5 */
#define SRC_GPSR26	(*( SRC_CPU0SB_type *) 0xF00389E8U)	/* General Purpose Group 2 Service Request 6 */
#define SRC_GPSR27	(*( SRC_CPU0SB_type *) 0xF00389ECU)	/* General Purpose Group 2 Service Request 7 */
#define SRC_GTMAEIIRQ	(*( SRC_CPU0SB_type *) 0xF0038A70U)	/* AEI Shared Service Request */
#define SRC_GTMARUIRQ0	(*( SRC_CPU0SB_type *) 0xF0038A74U)	/* ARU Shared Service Request 0 */
#define SRC_GTMARUIRQ1	(*( SRC_CPU0SB_type *) 0xF0038A78U)	/* ARU Shared Service Request 1 */
#define SRC_GTMARUIRQ2	(*( SRC_CPU0SB_type *) 0xF0038A7CU)	/* ARU Shared Service Request 2 */
#define SRC_GTMBRCIRQ	(*( SRC_CPU0SB_type *) 0xF0038A80U)	/* BRC Shared Service Request */
#define SRC_GTMCMPIRQ	(*( SRC_CPU0SB_type *) 0xF0038A84U)	/* CMP Shared Service Request */
#define SRC_GTMSPE0IRQ	(*( SRC_CPU0SB_type *) 0xF0038A88U)	/* SPE0 Shared Service Request */
#define SRC_GTMSPE1IRQ	(*( SRC_CPU0SB_type *) 0xF0038A8CU)	/* SPE1 Shared Service Request */
#define SRC_GTMPSM00	(*( SRC_CPU0SB_type *) 0xF0038AA0U)	/* PSM0 Shared Service Request 0 */
#define SRC_GTMPSM01	(*( SRC_CPU0SB_type *) 0xF0038AA4U)	/* PSM0 Shared Service Request 1 */
#define SRC_GTMPSM02	(*( SRC_CPU0SB_type *) 0xF0038AA8U)	/* PSM0 Shared Service Request 2 */
#define SRC_GTMPSM03	(*( SRC_CPU0SB_type *) 0xF0038AACU)	/* PSM0 Shared Service Request 3 */
#define SRC_GTMPSM04	(*( SRC_CPU0SB_type *) 0xF0038AB0U)	/* PSM0 Shared Service Request 4 */
#define SRC_GTMPSM05	(*( SRC_CPU0SB_type *) 0xF0038AB4U)	/* PSM0 Shared Service Request 5 */
#define SRC_GTMPSM06	(*( SRC_CPU0SB_type *) 0xF0038AB8U)	/* PSM0 Shared Service Request 6 */
#define SRC_GTMPSM07	(*( SRC_CPU0SB_type *) 0xF0038ABCU)	/* PSM0 Shared Service Request 7 */
#define SRC_GTMDPLL0	(*( SRC_CPU0SB_type *) 0xF0038B00U)	/* DPLL Service Request 0 */
#define SRC_GTMDPLL1	(*( SRC_CPU0SB_type *) 0xF0038B04U)	/* DPLL Service Request 1 */
#define SRC_GTMDPLL2	(*( SRC_CPU0SB_type *) 0xF0038B08U)	/* DPLL Service Request 2 */
#define SRC_GTMDPLL3	(*( SRC_CPU0SB_type *) 0xF0038B0CU)	/* DPLL Service Request 3 */
#define SRC_GTMDPLL4	(*( SRC_CPU0SB_type *) 0xF0038B10U)	/* DPLL Service Request 4 */
#define SRC_GTMDPLL5	(*( SRC_CPU0SB_type *) 0xF0038B14U)	/* DPLL Service Request 5 */
#define SRC_GTMDPLL6	(*( SRC_CPU0SB_type *) 0xF0038B18U)	/* DPLL Service Request 6 */
#define SRC_GTMDPLL7	(*( SRC_CPU0SB_type *) 0xF0038B1CU)	/* DPLL Service Request 7 */
#define SRC_GTMDPLL8	(*( SRC_CPU0SB_type *) 0xF0038B20U)	/* DPLL Service Request 8 */
#define SRC_GTMDPLL9	(*( SRC_CPU0SB_type *) 0xF0038B24U)	/* DPLL Service Request 9 */
#define SRC_GTMDPLL10	(*( SRC_CPU0SB_type *) 0xF0038B28U)	/* DPLL Service Request 10 */
#define SRC_GTMDPLL11	(*( SRC_CPU0SB_type *) 0xF0038B2CU)	/* DPLL Service Request 11 */
#define SRC_GTMDPLL12	(*( SRC_CPU0SB_type *) 0xF0038B30U)	/* DPLL Service Request 12 */
#define SRC_GTMDPLL13	(*( SRC_CPU0SB_type *) 0xF0038B34U)	/* DPLL Service Request 13 */
#define SRC_GTMDPLL14	(*( SRC_CPU0SB_type *) 0xF0038B38U)	/* DPLL Service Request 14 */
#define SRC_GTMDPLL15	(*( SRC_CPU0SB_type *) 0xF0038B3CU)	/* DPLL Service Request 15 */
#define SRC_GTMDPLL16	(*( SRC_CPU0SB_type *) 0xF0038B40U)	/* DPLL Service Request 16 */
#define SRC_GTMDPLL17	(*( SRC_CPU0SB_type *) 0xF0038B44U)	/* DPLL Service Request 17 */
#define SRC_GTMDPLL18	(*( SRC_CPU0SB_type *) 0xF0038B48U)	/* DPLL Service Request 18 */
#define SRC_GTMDPLL19	(*( SRC_CPU0SB_type *) 0xF0038B4CU)	/* DPLL Service Request 19 */
#define SRC_GTMDPLL20	(*( SRC_CPU0SB_type *) 0xF0038B50U)	/* DPLL Service Request 20 */
#define SRC_GTMDPLL21	(*( SRC_CPU0SB_type *) 0xF0038B54U)	/* DPLL Service Request 21 */
#define SRC_GTMDPLL22	(*( SRC_CPU0SB_type *) 0xF0038B58U)	/* DPLL Service Request 22 */
#define SRC_GTMDPLL23	(*( SRC_CPU0SB_type *) 0xF0038B5CU)	/* DPLL Service Request 23 */
#define SRC_GTMDPLL24	(*( SRC_CPU0SB_type *) 0xF0038B60U)	/* DPLL Service Request 24 */
#define SRC_GTMDPLL25	(*( SRC_CPU0SB_type *) 0xF0038B64U)	/* DPLL Service Request 25 */
#define SRC_GTMDPLL26	(*( SRC_CPU0SB_type *) 0xF0038B68U)	/* DPLL Service Request 26 */
#define SRC_GTMERR	(*( SRC_CPU0SB_type *) 0xF0038B70U)	/* Error Service Request */
#define SRC_GTMTIM00	(*( SRC_CPU0SB_type *) 0xF0038B90U)	/* TIM0 Shared Service Request 0 */
#define SRC_GTMTIM01	(*( SRC_CPU0SB_type *) 0xF0038B94U)	/* TIM0 Shared Service Request 1 */
#define SRC_GTMTIM02	(*( SRC_CPU0SB_type *) 0xF0038B98U)	/* TIM0 Shared Service Request 2 */
#define SRC_GTMTIM03	(*( SRC_CPU0SB_type *) 0xF0038B9CU)	/* TIM0 Shared Service Request 3 */
#define SRC_GTMTIM04	(*( SRC_CPU0SB_type *) 0xF0038BA0U)	/* TIM0 Shared Service Request 4 */
#define SRC_GTMTIM05	(*( SRC_CPU0SB_type *) 0xF0038BA4U)	/* TIM0 Shared Service Request 5 */
#define SRC_GTMTIM06	(*( SRC_CPU0SB_type *) 0xF0038BA8U)	/* TIM0 Shared Service Request 6 */
#define SRC_GTMTIM07	(*( SRC_CPU0SB_type *) 0xF0038BACU)	/* TIM0 Shared Service Request 7 */
#define SRC_GTMTIM10	(*( SRC_CPU0SB_type *) 0xF0038BB0U)	/* TIM1 Shared Service Request 0 */
#define SRC_GTMTIM11	(*( SRC_CPU0SB_type *) 0xF0038BB4U)	/* TIM1 Shared Service Request 1 */
#define SRC_GTMTIM12	(*( SRC_CPU0SB_type *) 0xF0038BB8U)	/* TIM1 Shared Service Request 2 */
#define SRC_GTMTIM13	(*( SRC_CPU0SB_type *) 0xF0038BBCU)	/* TIM1 Shared Service Request 3 */
#define SRC_GTMTIM14	(*( SRC_CPU0SB_type *) 0xF0038BC0U)	/* TIM1 Shared Service Request 4 */
#define SRC_GTMTIM15	(*( SRC_CPU0SB_type *) 0xF0038BC4U)	/* TIM1 Shared Service Request 5 */
#define SRC_GTMTIM16	(*( SRC_CPU0SB_type *) 0xF0038BC8U)	/* TIM1 Shared Service Request 6 */
#define SRC_GTMTIM17	(*( SRC_CPU0SB_type *) 0xF0038BCCU)	/* TIM1 Shared Service Request 7 */
#define SRC_GTMTIM20	(*( SRC_CPU0SB_type *) 0xF0038BD0U)	/* TIM2 Shared Service Request 0 */
#define SRC_GTMTIM21	(*( SRC_CPU0SB_type *) 0xF0038BD4U)	/* TIM2 Shared Service Request 1 */
#define SRC_GTMTIM22	(*( SRC_CPU0SB_type *) 0xF0038BD8U)	/* TIM2 Shared Service Request 2 */
#define SRC_GTMTIM23	(*( SRC_CPU0SB_type *) 0xF0038BDCU)	/* TIM2 Shared Service Request 3 */
#define SRC_GTMTIM24	(*( SRC_CPU0SB_type *) 0xF0038BE0U)	/* TIM2 Shared Service Request 4 */
#define SRC_GTMTIM25	(*( SRC_CPU0SB_type *) 0xF0038BE4U)	/* TIM2 Shared Service Request 5 */
#define SRC_GTMTIM26	(*( SRC_CPU0SB_type *) 0xF0038BE8U)	/* TIM2 Shared Service Request 6 */
#define SRC_GTMTIM27	(*( SRC_CPU0SB_type *) 0xF0038BECU)	/* TIM2 Shared Service Request 7 */
#define SRC_GTMTIM30	(*( SRC_CPU0SB_type *) 0xF0038BF0U)	/* TIM3 Shared Service Request 0 */
#define SRC_GTMTIM31	(*( SRC_CPU0SB_type *) 0xF0038BF4U)	/* TIM3 Shared Service Request 1 */
#define SRC_GTMTIM32	(*( SRC_CPU0SB_type *) 0xF0038BF8U)	/* TIM3 Shared Service Request 2 */
#define SRC_GTMTIM33	(*( SRC_CPU0SB_type *) 0xF0038BFCU)	/* TIM3 Shared Service Request 3 */
#define SRC_GTMTIM34	(*( SRC_CPU0SB_type *) 0xF0038C00U)	/* TIM3 Shared Service Request 4 */
#define SRC_GTMTIM35	(*( SRC_CPU0SB_type *) 0xF0038C04U)	/* TIM3 Shared Service Request 5 */
#define SRC_GTMTIM36	(*( SRC_CPU0SB_type *) 0xF0038C08U)	/* TIM3 Shared Service Request 6 */
#define SRC_GTMTIM37	(*( SRC_CPU0SB_type *) 0xF0038C0CU)	/* TIM3 Shared Service Request 7 */
#define SRC_GTMTIM40	(*( SRC_CPU0SB_type *) 0xF0038C10U)	/* TIM4 Shared Service Request 0 */
#define SRC_GTMTIM41	(*( SRC_CPU0SB_type *) 0xF0038C14U)	/* TIM4 Shared Service Request 1 */
#define SRC_GTMTIM42	(*( SRC_CPU0SB_type *) 0xF0038C18U)	/* TIM4 Shared Service Request 2 */
#define SRC_GTMTIM43	(*( SRC_CPU0SB_type *) 0xF0038C1CU)	/* TIM4 Shared Service Request 3 */
#define SRC_GTMTIM44	(*( SRC_CPU0SB_type *) 0xF0038C20U)	/* TIM4 Shared Service Request 4 */
#define SRC_GTMTIM45	(*( SRC_CPU0SB_type *) 0xF0038C24U)	/* TIM4 Shared Service Request 5 */
#define SRC_GTMTIM46	(*( SRC_CPU0SB_type *) 0xF0038C28U)	/* TIM4 Shared Service Request 6 */
#define SRC_GTMTIM47	(*( SRC_CPU0SB_type *) 0xF0038C2CU)	/* TIM4 Shared Service Request 7 */
#define SRC_GTMTIM50	(*( SRC_CPU0SB_type *) 0xF0038C30U)	/* TIM5 Shared Service Request 0 */
#define SRC_GTMTIM51	(*( SRC_CPU0SB_type *) 0xF0038C34U)	/* TIM5 Shared Service Request 1 */
#define SRC_GTMTIM52	(*( SRC_CPU0SB_type *) 0xF0038C38U)	/* TIM5 Shared Service Request 2 */
#define SRC_GTMTIM53	(*( SRC_CPU0SB_type *) 0xF0038C3CU)	/* TIM5 Shared Service Request 3 */
#define SRC_GTMTIM54	(*( SRC_CPU0SB_type *) 0xF0038C40U)	/* TIM5 Shared Service Request 4 */
#define SRC_GTMTIM55	(*( SRC_CPU0SB_type *) 0xF0038C44U)	/* TIM5 Shared Service Request 5 */
#define SRC_GTMTIM56	(*( SRC_CPU0SB_type *) 0xF0038C48U)	/* TIM5 Shared Service Request 6 */
#define SRC_GTMTIM57	(*( SRC_CPU0SB_type *) 0xF0038C4CU)	/* TIM5 Shared Service Request 7 */
#define SRC_GTMMCS00	(*( SRC_CPU0SB_type *) 0xF0038CB0U)	/* MCS0 Shared Service Request 0 */
#define SRC_GTMMCS01	(*( SRC_CPU0SB_type *) 0xF0038CB4U)	/* MCS0 Shared Service Request 1 */
#define SRC_GTMMCS02	(*( SRC_CPU0SB_type *) 0xF0038CB8U)	/* MCS0 Shared Service Request 2 */
#define SRC_GTMMCS03	(*( SRC_CPU0SB_type *) 0xF0038CBCU)	/* MCS0 Shared Service Request 3 */
#define SRC_GTMMCS04	(*( SRC_CPU0SB_type *) 0xF0038CC0U)	/* MCS0 Shared Service Request 4 */
#define SRC_GTMMCS05	(*( SRC_CPU0SB_type *) 0xF0038CC4U)	/* MCS0 Shared Service Request 5 */
#define SRC_GTMMCS06	(*( SRC_CPU0SB_type *) 0xF0038CC8U)	/* MCS0 Shared Service Request 6 */
#define SRC_GTMMCS07	(*( SRC_CPU0SB_type *) 0xF0038CCCU)	/* MCS0 Shared Service Request 7 */
#define SRC_GTMMCS10	(*( SRC_CPU0SB_type *) 0xF0038CD0U)	/* MCS1 Shared Service Request 0 */
#define SRC_GTMMCS11	(*( SRC_CPU0SB_type *) 0xF0038CD4U)	/* MCS1 Shared Service Request 1 */
#define SRC_GTMMCS12	(*( SRC_CPU0SB_type *) 0xF0038CD8U)	/* MCS1 Shared Service Request 2 */
#define SRC_GTMMCS13	(*( SRC_CPU0SB_type *) 0xF0038CDCU)	/* MCS1 Shared Service Request 3 */
#define SRC_GTMMCS14	(*( SRC_CPU0SB_type *) 0xF0038CE0U)	/* MCS1 Shared Service Request 4 */
#define SRC_GTMMCS15	(*( SRC_CPU0SB_type *) 0xF0038CE4U)	/* MCS1 Shared Service Request 5 */
#define SRC_GTMMCS16	(*( SRC_CPU0SB_type *) 0xF0038CE8U)	/* MCS1 Shared Service Request 6 */
#define SRC_GTMMCS17	(*( SRC_CPU0SB_type *) 0xF0038CECU)	/* MCS1 Shared Service Request 7 */
#define SRC_GTMMCS20	(*( SRC_CPU0SB_type *) 0xF0038CF0U)	/* MCS2 Shared Service Request 0 */
#define SRC_GTMMCS21	(*( SRC_CPU0SB_type *) 0xF0038CF4U)	/* MCS2 Shared Service Request 1 */
#define SRC_GTMMCS22	(*( SRC_CPU0SB_type *) 0xF0038CF8U)	/* MCS2 Shared Service Request 2 */
#define SRC_GTMMCS23	(*( SRC_CPU0SB_type *) 0xF0038CFCU)	/* MCS2 Shared Service Request 3 */
#define SRC_GTMMCS24	(*( SRC_CPU0SB_type *) 0xF0038D00U)	/* MCS2 Shared Service Request 4 */
#define SRC_GTMMCS25	(*( SRC_CPU0SB_type *) 0xF0038D04U)	/* MCS2 Shared Service Request 5 */
#define SRC_GTMMCS26	(*( SRC_CPU0SB_type *) 0xF0038D08U)	/* MCS2 Shared Service Request 6 */
#define SRC_GTMMCS27	(*( SRC_CPU0SB_type *) 0xF0038D0CU)	/* MCS2 Shared Service Request 7 */
#define SRC_GTMMCS30	(*( SRC_CPU0SB_type *) 0xF0038D10U)	/* MCS3 Shared Service Request 0 */
#define SRC_GTMMCS31	(*( SRC_CPU0SB_type *) 0xF0038D14U)	/* MCS3 Shared Service Request 1 */
#define SRC_GTMMCS32	(*( SRC_CPU0SB_type *) 0xF0038D18U)	/* MCS3 Shared Service Request 2 */
#define SRC_GTMMCS33	(*( SRC_CPU0SB_type *) 0xF0038D1CU)	/* MCS3 Shared Service Request 3 */
#define SRC_GTMMCS34	(*( SRC_CPU0SB_type *) 0xF0038D20U)	/* MCS3 Shared Service Request 4 */
#define SRC_GTMMCS35	(*( SRC_CPU0SB_type *) 0xF0038D24U)	/* MCS3 Shared Service Request 5 */
#define SRC_GTMMCS36	(*( SRC_CPU0SB_type *) 0xF0038D28U)	/* MCS3 Shared Service Request 6 */
#define SRC_GTMMCS37	(*( SRC_CPU0SB_type *) 0xF0038D2CU)	/* MCS3 Shared Service Request 7 */
#define SRC_GTMMCS40	(*( SRC_CPU0SB_type *) 0xF0038D30U)	/* MCS4 Shared Service Request 0 */
#define SRC_GTMMCS41	(*( SRC_CPU0SB_type *) 0xF0038D34U)	/* MCS4 Shared Service Request 1 */
#define SRC_GTMMCS42	(*( SRC_CPU0SB_type *) 0xF0038D38U)	/* MCS4 Shared Service Request 2 */
#define SRC_GTMMCS43	(*( SRC_CPU0SB_type *) 0xF0038D3CU)	/* MCS4 Shared Service Request 3 */
#define SRC_GTMMCS44	(*( SRC_CPU0SB_type *) 0xF0038D40U)	/* MCS4 Shared Service Request 4 */
#define SRC_GTMMCS45	(*( SRC_CPU0SB_type *) 0xF0038D44U)	/* MCS4 Shared Service Request 5 */
#define SRC_GTMMCS46	(*( SRC_CPU0SB_type *) 0xF0038D48U)	/* MCS4 Shared Service Request 6 */
#define SRC_GTMMCS47	(*( SRC_CPU0SB_type *) 0xF0038D4CU)	/* MCS4 Shared Service Request 7 */
#define SRC_GTMTOM00	(*( SRC_CPU0SB_type *) 0xF0038E10U)	/* TOM0 Shared Service Request 0 */
#define SRC_GTMTOM01	(*( SRC_CPU0SB_type *) 0xF0038E14U)	/* TOM0 Shared Service Request 1 */
#define SRC_GTMTOM02	(*( SRC_CPU0SB_type *) 0xF0038E18U)	/* TOM0 Shared Service Request 2 */
#define SRC_GTMTOM03	(*( SRC_CPU0SB_type *) 0xF0038E1CU)	/* TOM0 Shared Service Request 3 */
#define SRC_GTMTOM04	(*( SRC_CPU0SB_type *) 0xF0038E20U)	/* TOM0 Shared Service Request 4 */
#define SRC_GTMTOM05	(*( SRC_CPU0SB_type *) 0xF0038E24U)	/* TOM0 Shared Service Request 5 */
#define SRC_GTMTOM06	(*( SRC_CPU0SB_type *) 0xF0038E28U)	/* TOM0 Shared Service Request 6 */
#define SRC_GTMTOM07	(*( SRC_CPU0SB_type *) 0xF0038E2CU)	/* TOM0 Shared Service Request 7 */
#define SRC_GTMTOM10	(*( SRC_CPU0SB_type *) 0xF0038E30U)	/* TOM1 Shared Service Request 0 */
#define SRC_GTMTOM11	(*( SRC_CPU0SB_type *) 0xF0038E34U)	/* TOM1 Shared Service Request 1 */
#define SRC_GTMTOM12	(*( SRC_CPU0SB_type *) 0xF0038E38U)	/* TOM1 Shared Service Request 2 */
#define SRC_GTMTOM13	(*( SRC_CPU0SB_type *) 0xF0038E3CU)	/* TOM1 Shared Service Request 3 */
#define SRC_GTMTOM14	(*( SRC_CPU0SB_type *) 0xF0038E40U)	/* TOM1 Shared Service Request 4 */
#define SRC_GTMTOM15	(*( SRC_CPU0SB_type *) 0xF0038E44U)	/* TOM1 Shared Service Request 5 */
#define SRC_GTMTOM16	(*( SRC_CPU0SB_type *) 0xF0038E48U)	/* TOM1 Shared Service Request 6 */
#define SRC_GTMTOM17	(*( SRC_CPU0SB_type *) 0xF0038E4CU)	/* TOM1 Shared Service Request 7 */
#define SRC_GTMTOM20	(*( SRC_CPU0SB_type *) 0xF0038E50U)	/* TOM2 Shared Service Request 0 */
#define SRC_GTMTOM21	(*( SRC_CPU0SB_type *) 0xF0038E54U)	/* TOM2 Shared Service Request 1 */
#define SRC_GTMTOM22	(*( SRC_CPU0SB_type *) 0xF0038E58U)	/* TOM2 Shared Service Request 2 */
#define SRC_GTMTOM23	(*( SRC_CPU0SB_type *) 0xF0038E5CU)	/* TOM2 Shared Service Request 3 */
#define SRC_GTMTOM24	(*( SRC_CPU0SB_type *) 0xF0038E60U)	/* TOM2 Shared Service Request 4 */
#define SRC_GTMTOM25	(*( SRC_CPU0SB_type *) 0xF0038E64U)	/* TOM2 Shared Service Request 5 */
#define SRC_GTMTOM26	(*( SRC_CPU0SB_type *) 0xF0038E68U)	/* TOM2 Shared Service Request 6 */
#define SRC_GTMTOM27	(*( SRC_CPU0SB_type *) 0xF0038E6CU)	/* TOM2 Shared Service Request 7 */
#define SRC_GTMATOM00	(*( SRC_CPU0SB_type *) 0xF0038EF0U)	/* ATOM0 Shared Service Request 0 */
#define SRC_GTMATOM01	(*( SRC_CPU0SB_type *) 0xF0038EF4U)	/* ATOM0 Shared Service Request 1 */
#define SRC_GTMATOM02	(*( SRC_CPU0SB_type *) 0xF0038EF8U)	/* ATOM0 Shared Service Request 2 */
#define SRC_GTMATOM03	(*( SRC_CPU0SB_type *) 0xF0038EFCU)	/* ATOM0 Shared Service Request 3 */
#define SRC_GTMATOM10	(*( SRC_CPU0SB_type *) 0xF0038F00U)	/* ATOM1 Shared Service Request 0 */
#define SRC_GTMATOM11	(*( SRC_CPU0SB_type *) 0xF0038F04U)	/* ATOM1 Shared Service Request 1 */
#define SRC_GTMATOM12	(*( SRC_CPU0SB_type *) 0xF0038F08U)	/* ATOM1 Shared Service Request 2 */
#define SRC_GTMATOM13	(*( SRC_CPU0SB_type *) 0xF0038F0CU)	/* ATOM1 Shared Service Request 3 */
#define SRC_GTMATOM20	(*( SRC_CPU0SB_type *) 0xF0038F10U)	/* ATOM2 Shared Service Request 0 */
#define SRC_GTMATOM21	(*( SRC_CPU0SB_type *) 0xF0038F14U)	/* ATOM2 Shared Service Request 1 */
#define SRC_GTMATOM22	(*( SRC_CPU0SB_type *) 0xF0038F18U)	/* ATOM2 Shared Service Request 2 */
#define SRC_GTMATOM23	(*( SRC_CPU0SB_type *) 0xF0038F1CU)	/* ATOM2 Shared Service Request 3 */
#define SRC_GTMATOM30	(*( SRC_CPU0SB_type *) 0xF0038F20U)	/* ATOM3 Shared Service Request 0 */
#define SRC_GTMATOM31	(*( SRC_CPU0SB_type *) 0xF0038F24U)	/* ATOM3 Shared Service Request 1 */
#define SRC_GTMATOM32	(*( SRC_CPU0SB_type *) 0xF0038F28U)	/* ATOM3 Shared Service Request 2 */
#define SRC_GTMATOM33	(*( SRC_CPU0SB_type *) 0xF0038F2CU)	/* ATOM3 Shared Service Request 3 */
#define SRC_GTMATOM40	(*( SRC_CPU0SB_type *) 0xF0038F30U)	/* ATOM4 Shared Service Request 0 */
#define SRC_GTMATOM41	(*( SRC_CPU0SB_type *) 0xF0038F34U)	/* ATOM4 Shared Service Request 1 */
#define SRC_GTMATOM42	(*( SRC_CPU0SB_type *) 0xF0038F38U)	/* ATOM4 Shared Service Request 2 */
#define SRC_GTMATOM43	(*( SRC_CPU0SB_type *) 0xF0038F3CU)	/* ATOM4 Shared Service Request 3 */
#define SRC_GTMATOM50	(*( SRC_CPU0SB_type *) 0xF0038F40U)	/* ATOM5 Shared Service Request 0 */
#define SRC_GTMATOM51	(*( SRC_CPU0SB_type *) 0xF0038F44U)	/* ATOM5 Shared Service Request 1 */
#define SRC_GTMATOM52	(*( SRC_CPU0SB_type *) 0xF0038F48U)	/* ATOM5 Shared Service Request 2 */
#define SRC_GTMATOM53	(*( SRC_CPU0SB_type *) 0xF0038F4CU)	/* ATOM5 Shared Service Request 3 */
#define SRC_GTMMCSW0	(*( SRC_CPU0SB_type *) 0xF0038FD0U)	/* GTM Multi Channel Sequencer Service Request 0 */
#define SRC_GTMMCSW1	(*( SRC_CPU0SB_type *) 0xF0038FD4U)	/* GTM Multi Channel Sequencer Service Request 1 */
#define SRC_GTMMCSW2	(*( SRC_CPU0SB_type *) 0xF0038FD8U)	/* GTM Multi Channel Sequencer Service Request 2 */
#define SRC_GTMMCSW3	(*( SRC_CPU0SB_type *) 0xF0038FDCU)	/* GTM Multi Channel Sequencer Service Request 3 */
#define SRC_GTMMCSW4	(*( SRC_CPU0SB_type *) 0xF0038FE0U)	/* GTM Multi Channel Sequencer Service Request 4 */
#define SRC_GTMMCSW5	(*( SRC_CPU0SB_type *) 0xF0038FE4U)	/* GTM Multi Channel Sequencer Service Request 5 */
#define SRC_GTMMCSW6	(*( SRC_CPU0SB_type *) 0xF0038FE8U)	/* GTM Multi Channel Sequencer Service Request 6 */
#define SRC_GTMMCSW7	(*( SRC_CPU0SB_type *) 0xF0038FECU)	/* GTM Multi Channel Sequencer Service Request 7 */
#define SRC_GTMMCSW8	(*( SRC_CPU0SB_type *) 0xF0038FF0U)	/* GTM Multi Channel Sequencer Service Request 8 */
#define SRC_GTMMCSW9	(*( SRC_CPU0SB_type *) 0xF0038FF4U)	/* GTM Multi Channel Sequencer Service Request 9 */
#define P00_OUT	(*( P00_OUT_type *) 0xF003A000U)	/* Port 00 Output Register */
#define P11_OUT	(*( P00_OUT_type *) 0xF003AB00U)	/* Port 11 Output Register */
#define P20_OUT	(*( P00_OUT_type *) 0xF003B400U)	/* Port 20 Output Register */
#define P33_OUT	(*( P00_OUT_type *) 0xF003C100U)	/* Port 33 Output Register */
#define P40_OUT	(*( P00_OUT_type *) 0xF003C800U)	/* Port 40 Output Register */
#define P01_OUT	(*( P01_OUT_type *) 0xF003A100U)	/* Port 01 Output Register */
#define P21_OUT	(*( P01_OUT_type *) 0xF003B500U)	/* Port 21 Output Register */
#define P23_OUT	(*( P01_OUT_type *) 0xF003B700U)	/* Port 23 Output Register */
#define P32_OUT	(*( P01_OUT_type *) 0xF003C000U)	/* Port 32 Output Register */
#define P34_OUT	(*( P01_OUT_type *) 0xF003C200U)	/* Port 34 Output Register */
#define P02_OUT	(*( P02_OUT_type *) 0xF003A200U)	/* Port 02 Output Register */
#define P10_OUT	(*( P02_OUT_type *) 0xF003AA00U)	/* Port 10 Output Register */
#define P14_OUT	(*( P02_OUT_type *) 0xF003AE00U)	/* Port 14 Output Register */
#define P15_OUT	(*( P02_OUT_type *) 0xF003AF00U)	/* Port 15 Output Register */
#define P22_OUT	(*( P02_OUT_type *) 0xF003B600U)	/* Port 22 Output Register */
#define P12_OUT	(*( P12_OUT_type *) 0xF003AC00U)	/* Port 12 Output Register */
#define P13_OUT	(*( P12_OUT_type *) 0xF003AD00U)	/* Port 13 Output Register */
#define P00_OMR	(*( P00_OMR_type *) 0xF003A004U)	/* Port 00 Output Modification Register */
#define P11_OMR	(*( P00_OMR_type *) 0xF003AB04U)	/* Port 11 Output Modification Register */
#define P20_OMR	(*( P00_OMR_type *) 0xF003B404U)	/* Port 20 Output Modification Register */
#define P33_OMR	(*( P00_OMR_type *) 0xF003C104U)	/* Port 33 Output Modification Register */
#define P40_OMR	(*( P00_OMR_type *) 0xF003C804U)	/* Port 40 Output Modification Register */
#define P01_OMR	(*( P01_OMR_type *) 0xF003A104U)	/* Port 01 Output Modification Register */
#define P21_OMR	(*( P01_OMR_type *) 0xF003B504U)	/* Port 21 Output Modification Register */
#define P23_OMR	(*( P01_OMR_type *) 0xF003B704U)	/* Port 23 Output Modification Register */
#define P32_OMR	(*( P01_OMR_type *) 0xF003C004U)	/* Port 32 Output Modification Register */
#define P34_OMR	(*( P01_OMR_type *) 0xF003C204U)	/* Port 34 Output Modification Register */
#define P02_OMR	(*( P02_OMR_type *) 0xF003A204U)	/* Port 02 Output Modification Register */
#define P10_OMR	(*( P02_OMR_type *) 0xF003AA04U)	/* Port 10 Output Modification Register */
#define P14_OMR	(*( P02_OMR_type *) 0xF003AE04U)	/* Port 14 Output Modification Register */
#define P15_OMR	(*( P02_OMR_type *) 0xF003AF04U)	/* Port 15 Output Modification Register */
#define P22_OMR	(*( P02_OMR_type *) 0xF003B604U)	/* Port 22 Output Modification Register */
#define P12_OMR	(*( P12_OMR_type *) 0xF003AC04U)	/* Port 12 Output Modification Register */
#define P13_OMR	(*( P12_OMR_type *) 0xF003AD04U)	/* Port 13 Output Modification Register */
#define P00_ID	(*( P00_ID_type *) 0xF003A008U)	/* Port 00 Identification Register */
#define P01_ID	(*( P00_ID_type *) 0xF003A108U)	/* Port 01 Identification Register */
#define P02_ID	(*( P00_ID_type *) 0xF003A208U)	/* Port 02 Identification Register */
#define P10_ID	(*( P00_ID_type *) 0xF003AA08U)	/* Port 10 Identification Register */
#define P11_ID	(*( P00_ID_type *) 0xF003AB08U)	/* Port 11 Identification Register */
#define P12_ID	(*( P00_ID_type *) 0xF003AC08U)	/* Port 12 Identification Register */
#define P13_ID	(*( P00_ID_type *) 0xF003AD08U)	/* Port 13 Identification Register */
#define P14_ID	(*( P00_ID_type *) 0xF003AE08U)	/* Port 14 Identification Register */
#define P15_ID	(*( P00_ID_type *) 0xF003AF08U)	/* Port 15 Identification Register */
#define P20_ID	(*( P00_ID_type *) 0xF003B408U)	/* Port 20 Identification Register */
#define P21_ID	(*( P00_ID_type *) 0xF003B508U)	/* Port 21 Identification Register */
#define P22_ID	(*( P00_ID_type *) 0xF003B608U)	/* Port 22 Identification Register */
#define P23_ID	(*( P00_ID_type *) 0xF003B708U)	/* Port 23 Identification Register */
#define P32_ID	(*( P00_ID_type *) 0xF003C008U)	/* Port 32 Identification Register */
#define P33_ID	(*( P00_ID_type *) 0xF003C108U)	/* Port 33 Identification Register */
#define P34_ID	(*( P00_ID_type *) 0xF003C208U)	/* Port 34 Identification Register */
#define P40_ID	(*( P00_ID_type *) 0xF003C808U)	/* Port 40 Identification Register */
#define P00_IOCR0	(*( P00_IOCR0_type *) 0xF003A010U)	/* Port 00 Input/Output Control Register 0 */
#define P01_IOCR0	(*( P00_IOCR0_type *) 0xF003A110U)	/* Port 01 Input/Output Control Register 0 */
#define P02_IOCR0	(*( P00_IOCR0_type *) 0xF003A210U)	/* Port 02 Input/Output Control Register 0 */
#define P10_IOCR0	(*( P00_IOCR0_type *) 0xF003AA10U)	/* Port 10 Input/Output Control Register 0 */
#define P11_IOCR0	(*( P00_IOCR0_type *) 0xF003AB10U)	/* Port 11 Input/Output Control Register 0 */
#define P12_IOCR0	(*( P00_IOCR0_type *) 0xF003AC10U)	/* Port 12 Input/Output Control Register 0 */
#define P13_IOCR0	(*( P00_IOCR0_type *) 0xF003AD10U)	/* Port 13 Input/Output Control Register 0 */
#define P14_IOCR0	(*( P00_IOCR0_type *) 0xF003AE10U)	/* Port 14 Input/Output Control Register 0 */
#define P15_IOCR0	(*( P00_IOCR0_type *) 0xF003AF10U)	/* Port 15 Input/Output Control Register 0 */
#define P20_IOCR0	(*( P00_IOCR0_type *) 0xF003B410U)	/* Port 20 Input/Output Control Register 0 */
#define P21_IOCR0	(*( P00_IOCR0_type *) 0xF003B510U)	/* Port 21 Input/Output Control Register 0 */
#define P22_IOCR0	(*( P00_IOCR0_type *) 0xF003B610U)	/* Port 22 Input/Output Control Register 0 */
#define P23_IOCR0	(*( P00_IOCR0_type *) 0xF003B710U)	/* Port 23 Input/Output Control Register 0 */
#define P32_IOCR0	(*( P00_IOCR0_type *) 0xF003C010U)	/* Port 32 Input/Output Control Register 0 */
#define P33_IOCR0	(*( P00_IOCR0_type *) 0xF003C110U)	/* Port 33 Input/Output Control Register 0 */
#define P34_IOCR0	(*( P00_IOCR0_type *) 0xF003C210U)	/* Port 34 Input/Output Control Register 0 */
#define P40_IOCR0	(*( P00_IOCR0_type *) 0xF003C810U)	/* Port 40 Input/Output Control Register 0 */
#define P00_IOCR4	(*( P00_IOCR4_type *) 0xF003A014U)	/* Port 00 Input/Output Control Register 4 */
#define P01_IOCR4	(*( P00_IOCR4_type *) 0xF003A114U)	/* Port 01 Input/Output Control Register 4 */
#define P02_IOCR4	(*( P00_IOCR4_type *) 0xF003A214U)	/* Port 02 Input/Output Control Register 4 */
#define P10_IOCR4	(*( P00_IOCR4_type *) 0xF003AA14U)	/* Port 10 Input/Output Control Register 4 */
#define P11_IOCR4	(*( P00_IOCR4_type *) 0xF003AB14U)	/* Port 11 Input/Output Control Register 4 */
#define P14_IOCR4	(*( P00_IOCR4_type *) 0xF003AE14U)	/* Port 14 Input/Output Control Register 4 */
#define P15_IOCR4	(*( P00_IOCR4_type *) 0xF003AF14U)	/* Port 15 Input/Output Control Register 4 */
#define P20_IOCR4	(*( P00_IOCR4_type *) 0xF003B414U)	/* Port 20 Input/Output Control Register 4 */
#define P21_IOCR4	(*( P00_IOCR4_type *) 0xF003B514U)	/* Port 21 Input/Output Control Register 4 */
#define P22_IOCR4	(*( P00_IOCR4_type *) 0xF003B614U)	/* Port 22 Input/Output Control Register 4 */
#define P23_IOCR4	(*( P23_IOCR4_type *) 0xF003B714U)	/* Port 23 Input/Output Control Register 4 */
#define P32_IOCR4	(*( P23_IOCR4_type *) 0xF003C014U)	/* Port 32 Input/Output Control Register 4 */
#define P33_IOCR4	(*( P23_IOCR4_type *) 0xF003C114U)	/* Port 33 Input/Output Control Register 4 */
#define P34_IOCR4	(*( P23_IOCR4_type *) 0xF003C214U)	/* Port 34 Input/Output Control Register 4 */
#define P40_IOCR4	(*( P23_IOCR4_type *) 0xF003C814U)	/* Port 40 Input/Output Control Register 4 */
#define P00_IOCR8	(*( P00_IOCR8_type *) 0xF003A018U)	/* Port 00 Input/Output Control Register 8 */
#define P02_IOCR8	(*( P00_IOCR8_type *) 0xF003A218U)	/* Port 02 Input/Output Control Register 8 */
#define P10_IOCR8	(*( P00_IOCR8_type *) 0xF003AA18U)	/* Port 10 Input/Output Control Register 8 */
#define P11_IOCR8	(*( P00_IOCR8_type *) 0xF003AB18U)	/* Port 11 Input/Output Control Register 8 */
#define P14_IOCR8	(*( P00_IOCR8_type *) 0xF003AE18U)	/* Port 14 Input/Output Control Register 8 */
#define P15_IOCR8	(*( P00_IOCR8_type *) 0xF003AF18U)	/* Port 15 Input/Output Control Register 8 */
#define P20_IOCR8	(*( P00_IOCR8_type *) 0xF003B418U)	/* Port 20 Input/Output Control Register 8 */
#define P22_IOCR8	(*( P00_IOCR8_type *) 0xF003B618U)	/* Port 22 Input/Output Control Register 8 */
#define P33_IOCR8	(*( P00_IOCR8_type *) 0xF003C118U)	/* Port 33 Input/Output Control Register 8 */
#define P40_IOCR8	(*( P00_IOCR8_type *) 0xF003C818U)	/* Port 40 Input/Output Control Register 8 */
#define P00_IOCR12	(*( P00_IOCR12_type *) 0xF003A01CU)	/* Port 00 Input/Output Control Register 12 */
#define P11_IOCR12	(*( P00_IOCR12_type *) 0xF003AB1CU)	/* Port 11 Input/Output Control Register 12 */
#define P20_IOCR12	(*( P00_IOCR12_type *) 0xF003B41CU)	/* Port 20 Input/Output Control Register 12 */
#define P33_IOCR12	(*( P00_IOCR12_type *) 0xF003C11CU)	/* Port 33 Input/Output Control Register 12 */
#define P40_IOCR12	(*( P00_IOCR12_type *) 0xF003C81CU)	/* Port 40 Input/Output Control Register 12 */
#define P00_IN	(*( P00_IN_type *) 0xF003A024U)	/* Port 00 Input Register */
#define P11_IN	(*( P00_IN_type *) 0xF003AB24U)	/* Port 11 Input Register */
#define P20_IN	(*( P00_IN_type *) 0xF003B424U)	/* Port 20 Input Register */
#define P33_IN	(*( P00_IN_type *) 0xF003C124U)	/* Port 33 Input Register */
#define P40_IN	(*( P00_IN_type *) 0xF003C824U)	/* Port 40 Input Register */
#define P01_IN	(*( P01_IN_type *) 0xF003A124U)	/* Port 01 Input Register */
#define P21_IN	(*( P01_IN_type *) 0xF003B524U)	/* Port 21 Input Register */
#define P23_IN	(*( P01_IN_type *) 0xF003B724U)	/* Port 23 Input Register */
#define P32_IN	(*( P01_IN_type *) 0xF003C024U)	/* Port 32 Input Register */
#define P34_IN	(*( P01_IN_type *) 0xF003C224U)	/* Port 34 Input Register */
#define P02_IN	(*( P02_IN_type *) 0xF003A224U)	/* Port 02 Input Register */
#define P10_IN	(*( P02_IN_type *) 0xF003AA24U)	/* Port 10 Input Register */
#define P14_IN	(*( P02_IN_type *) 0xF003AE24U)	/* Port 14 Input Register */
#define P15_IN	(*( P02_IN_type *) 0xF003AF24U)	/* Port 15 Input Register */
#define P22_IN	(*( P02_IN_type *) 0xF003B624U)	/* Port 22 Input Register */
#define P12_IN	(*( P12_IN_type *) 0xF003AC24U)	/* Port 12 Input Register */
#define P13_IN	(*( P12_IN_type *) 0xF003AD24U)	/* Port 13 Input Register */
#define P00_PDR0	(*( P00_PDR0_type *) 0xF003A040U)	/* Port 00 Pad Driver Mode Register 0 */
#define P01_PDR0	(*( P00_PDR0_type *) 0xF003A140U)	/* Port 01 Pad Driver Mode Register 0 */
#define P02_PDR0	(*( P00_PDR0_type *) 0xF003A240U)	/* Port 02 Pad Driver Mode Register 0 */
#define P10_PDR0	(*( P00_PDR0_type *) 0xF003AA40U)	/* Port 10 Pad Driver Mode Register 0 */
#define P11_PDR0	(*( P00_PDR0_type *) 0xF003AB40U)	/* Port 11 Pad Driver Mode Register 0 */
#define P14_PDR0	(*( P00_PDR0_type *) 0xF003AE40U)	/* Port 14 Pad Driver Mode Register 0 */
#define P15_PDR0	(*( P00_PDR0_type *) 0xF003AF40U)	/* Port 15 Pad Driver Mode Register 0 */
#define P20_PDR0	(*( P00_PDR0_type *) 0xF003B440U)	/* Port 20 Pad Driver Mode Register 0 */
#define P21_PDR0	(*( P00_PDR0_type *) 0xF003B540U)	/* Port 21 Pad Driver Mode Register 0 */
#define P22_PDR0	(*( P00_PDR0_type *) 0xF003B640U)	/* Port 22 Pad Driver Mode Register 0 */
#define P23_PDR0	(*( P00_PDR0_type *) 0xF003B740U)	/* Port 23 Pad Driver Mode Register 0 */
#define P32_PDR0	(*( P00_PDR0_type *) 0xF003C040U)	/* Port 32 Pad Driver Mode Register 0 */
#define P33_PDR0	(*( P00_PDR0_type *) 0xF003C140U)	/* Port 33 Pad Driver Mode Register 0 */
#define P34_PDR0	(*( P00_PDR0_type *) 0xF003C240U)	/* Port 34 Pad Driver Mode Register 0 */
#define P40_PDR0	(*( P00_PDR0_type *) 0xF003C840U)	/* Port 40 Pad Driver Mode Register 0 */
#define P12_PDR0	(*( P12_PDR0_type *) 0xF003AC40U)	/* Port 12 Pad Driver Mode Register 0 */
#define P13_PDR0	(*( P12_PDR0_type *) 0xF003AD40U)	/* Port 13 Pad Driver Mode Register 0 */
#define P00_PDR1	(*( P00_PDR1_type *) 0xF003A044U)	/* Port 00 Pad Driver Mode Register 1 */
#define P11_PDR1	(*( P00_PDR1_type *) 0xF003AB44U)	/* Port 11 Pad Driver Mode Register 1 */
#define P20_PDR1	(*( P00_PDR1_type *) 0xF003B444U)	/* Port 20 Pad Driver Mode Register 1 */
#define P33_PDR1	(*( P00_PDR1_type *) 0xF003C144U)	/* Port 33 Pad Driver Mode Register 1 */
#define P40_PDR1	(*( P00_PDR1_type *) 0xF003C844U)	/* Port 40 Pad Driver Mode Register 1 */
#define P02_PDR1	(*( P02_PDR1_type *) 0xF003A244U)	/* Port 02 Pad Driver Mode Register 1 */
#define P10_PDR1	(*( P02_PDR1_type *) 0xF003AA44U)	/* Port 10 Pad Driver Mode Register 1 */
#define P14_PDR1	(*( P02_PDR1_type *) 0xF003AE44U)	/* Port 14 Pad Driver Mode Register 1 */
#define P15_PDR1	(*( P02_PDR1_type *) 0xF003AF44U)	/* Port 15 Pad Driver Mode Register 1 */
#define P22_PDR1	(*( P02_PDR1_type *) 0xF003B644U)	/* Port 22 Pad Driver Mode Register 1 */
#define P00_ESR	(*( P00_ESR_type *) 0xF003A050U)	/* Port 00 Emergency Stop Register */
#define P11_ESR	(*( P00_ESR_type *) 0xF003AB50U)	/* Port 11 Emergency Stop Register */
#define P20_ESR	(*( P00_ESR_type *) 0xF003B450U)	/* Port 20 Emergency Stop Register */
#define P01_ESR	(*( P01_ESR_type *) 0xF003A150U)	/* Port 01 Emergency Stop Register */
#define P23_ESR	(*( P01_ESR_type *) 0xF003B750U)	/* Port 23 Emergency Stop Register */
#define P32_ESR	(*( P01_ESR_type *) 0xF003C050U)	/* Port 32 Emergency Stop Register */
#define P34_ESR	(*( P01_ESR_type *) 0xF003C250U)	/* Port 34 Emergency Stop Register */
#define P02_ESR	(*( P02_ESR_type *) 0xF003A250U)	/* Port 02 Emergency Stop Register */
#define P10_ESR	(*( P02_ESR_type *) 0xF003AA50U)	/* Port 10 Emergency Stop Register */
#define P14_ESR	(*( P02_ESR_type *) 0xF003AE50U)	/* Port 14 Emergency Stop Register */
#define P15_ESR	(*( P02_ESR_type *) 0xF003AF50U)	/* Port 15 Emergency Stop Register */
#define P22_ESR	(*( P02_ESR_type *) 0xF003B650U)	/* Port 22 Emergency Stop Register */
#define P12_ESR	(*( P12_ESR_type *) 0xF003AC50U)	/* Port 12 Emergency Stop Register */
#define P13_ESR	(*( P12_ESR_type *) 0xF003AD50U)	/* Port 13 Emergency Stop Register */
#define P21_ESR	(*( P21_ESR_type *) 0xF003B550U)	/* Port 21 Emergency Stop Register */
#define P33_ESR	(*( P33_ESR_type *) 0xF003C150U)	/* Port 33 Emergency Stop Register */
#define P40_ESR	(*( ASCLIN0_ACCEN1_type *) 0xF003C850U)	/* Port 40 Emergency Stop Register */
#define P00_PDISC	(*( P00_PDISC_type *) 0xF003A060U)	/* Port 00 Pin Function Decision Control Register */
#define P11_PDISC	(*( P00_PDISC_type *) 0xF003AB60U)	/* Port 11 Pin Function Decision Control Register */
#define P20_PDISC	(*( P00_PDISC_type *) 0xF003B460U)	/* Port 20 Pin Function Decision Control Register */
#define P33_PDISC	(*( P00_PDISC_type *) 0xF003C160U)	/* Port 33 Pin Function Decision Control Register */
#define P40_PDISC	(*( P00_PDISC_type *) 0xF003C860U)	/* Port 40 Pin Function Decision Control Register */
#define P01_PDISC	(*( P01_PDISC_type *) 0xF003A160U)	/* Port 01 Pin Function Decision Control Register */
#define P21_PDISC	(*( P01_PDISC_type *) 0xF003B560U)	/* Port 21 Pin Function Decision Control Register */
#define P23_PDISC	(*( P01_PDISC_type *) 0xF003B760U)	/* Port 23 Pin Function Decision Control Register */
#define P32_PDISC	(*( P01_PDISC_type *) 0xF003C060U)	/* Port 32 Pin Function Decision Control Register */
#define P34_PDISC	(*( P01_PDISC_type *) 0xF003C260U)	/* Port 34 Pin Function Decision Control Register */
#define P02_PDISC	(*( P02_PDISC_type *) 0xF003A260U)	/* Port 02 Pin Function Decision Control Register */
#define P10_PDISC	(*( P02_PDISC_type *) 0xF003AA60U)	/* Port 10 Pin Function Decision Control Register */
#define P14_PDISC	(*( P02_PDISC_type *) 0xF003AE60U)	/* Port 14 Pin Function Decision Control Register */
#define P15_PDISC	(*( P02_PDISC_type *) 0xF003AF60U)	/* Port 15 Pin Function Decision Control Register */
#define P22_PDISC	(*( P02_PDISC_type *) 0xF003B660U)	/* Port 22 Pin Function Decision Control Register */
#define P12_PDISC	(*( P12_PDISC_type *) 0xF003AC60U)	/* Port 12 Pin Function Decision Control Register */
#define P13_PDISC	(*( P12_PDISC_type *) 0xF003AD60U)	/* Port 13 Pin Function Decision Control Register */
#define P00_PCSR	(*( P00_PCSR_type *) 0xF003A064U)	/* Port 00 Pin Controller Select Register */
#define P01_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003A164U)	/* Port 01 Pin Controller Select Register */
#define P21_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003B564U)	/* Port 21 Pin Controller Select Register */
#define P23_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003B764U)	/* Port 23 Pin Controller Select Register */
#define P32_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003C064U)	/* Port 32 Pin Controller Select Register */
#define P02_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003A264U)	/* Port 02 Pin Controller Select Register */
#define P10_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003AA64U)	/* Port 10 Pin Controller Select Register */
#define P14_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003AE64U)	/* Port 14 Pin Controller Select Register */
#define P15_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003AF64U)	/* Port 15 Pin Controller Select Register */
#define P22_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003B664U)	/* Port 22 Pin Controller Select Register */
#define P11_PCSR	(*( P11_PCSR_type *) 0xF003AB64U)	/* Port 11 Pin Controller Select Register */
#define P12_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003AC64U)	/* Port 12 Pin Controller Select Register */
#define P13_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003AD64U)	/* Port 13 Pin Controller Select Register */
#define P20_PCSR	(*( ASCLIN0_ACCEN1_type *) 0xF003B464U)	/* Port 20 Pin Controller Select Register */
#define P33_PCSR	(*( P33_PCSR_type *) 0xF003C164U)	/* Port 33 Pin Controller Select Register */
#define P34_PCSR	(*( P34_PCSR_type *) 0xF003C264U)	/* Port 34 Pin Controller Select Register */
#define P40_PCSR	(*( P40_PCSR_type *) 0xF003C864U)	/* Port 40 Pin Controller Select Register */
#define P00_OMSR0	(*( P00_OMSR0_type *) 0xF003A070U)	/* Port 00 Output Modification Set Register 0 */
#define P01_OMSR0	(*( P00_OMSR0_type *) 0xF003A170U)	/* Port 01 Output Modification Set Register 0 */
#define P02_OMSR0	(*( P00_OMSR0_type *) 0xF003A270U)	/* Port 02 Output Modification Set Register 0 */
#define P10_OMSR0	(*( P00_OMSR0_type *) 0xF003AA70U)	/* Port 10 Output Modification Set Register 0 */
#define P11_OMSR0	(*( P00_OMSR0_type *) 0xF003AB70U)	/* Port 11 Output Modification Set Register 0 */
#define P12_OMSR0	(*( P00_OMSR0_type *) 0xF003AC70U)	/* Port 12 Output Modification Set Register 0 */
#define P13_OMSR0	(*( P00_OMSR0_type *) 0xF003AD70U)	/* Port 13 Output Modification Set Register 0 */
#define P14_OMSR0	(*( P00_OMSR0_type *) 0xF003AE70U)	/* Port 14 Output Modification Set Register 0 */
#define P15_OMSR0	(*( P00_OMSR0_type *) 0xF003AF70U)	/* Port 15 Output Modification Set Register 0 */
#define P20_OMSR0	(*( P00_OMSR0_type *) 0xF003B470U)	/* Port 20 Output Modification Set Register 0 */
#define P21_OMSR0	(*( P00_OMSR0_type *) 0xF003B570U)	/* Port 21 Output Modification Set Register 0 */
#define P22_OMSR0	(*( P00_OMSR0_type *) 0xF003B670U)	/* Port 22 Output Modification Set Register 0 */
#define P23_OMSR0	(*( P00_OMSR0_type *) 0xF003B770U)	/* Port 23 Output Modification Set Register 0 */
#define P32_OMSR0	(*( P00_OMSR0_type *) 0xF003C070U)	/* Port 32 Output Modification Set Register 0 */
#define P33_OMSR0	(*( P00_OMSR0_type *) 0xF003C170U)	/* Port 33 Output Modification Set Register 0 */
#define P34_OMSR0	(*( P00_OMSR0_type *) 0xF003C270U)	/* Port 34 Output Modification Set Register 0 */
#define P40_OMSR0	(*( P00_OMSR0_type *) 0xF003C870U)	/* Port 40 Output Modification Set Register 0 */
#define P00_OMSR4	(*( P00_OMSR4_type *) 0xF003A074U)	/* Port 00 Output Modification Set Register 4 */
#define P01_OMSR4	(*( P00_OMSR4_type *) 0xF003A174U)	/* Port 01 Output Modification Set Register 4 */
#define P02_OMSR4	(*( P00_OMSR4_type *) 0xF003A274U)	/* Port 02 Output Modification Set Register 4 */
#define P10_OMSR4	(*( P00_OMSR4_type *) 0xF003AA74U)	/* Port 10 Output Modification Set Register 4 */
#define P11_OMSR4	(*( P00_OMSR4_type *) 0xF003AB74U)	/* Port 11 Output Modification Set Register 4 */
#define P14_OMSR4	(*( P00_OMSR4_type *) 0xF003AE74U)	/* Port 14 Output Modification Set Register 4 */
#define P15_OMSR4	(*( P00_OMSR4_type *) 0xF003AF74U)	/* Port 15 Output Modification Set Register 4 */
#define P20_OMSR4	(*( P00_OMSR4_type *) 0xF003B474U)	/* Port 20 Output Modification Set Register 4 */
#define P21_OMSR4	(*( P00_OMSR4_type *) 0xF003B574U)	/* Port 21 Output Modification Set Register 4 */
#define P22_OMSR4	(*( P00_OMSR4_type *) 0xF003B674U)	/* Port 22 Output Modification Set Register 4 */
#define P23_OMSR4	(*( P00_OMSR4_type *) 0xF003B774U)	/* Port 23 Output Modification Set Register 4 */
#define P32_OMSR4	(*( P00_OMSR4_type *) 0xF003C074U)	/* Port 32 Output Modification Set Register 4 */
#define P33_OMSR4	(*( P00_OMSR4_type *) 0xF003C174U)	/* Port 33 Output Modification Set Register 4 */
#define P34_OMSR4	(*( P00_OMSR4_type *) 0xF003C274U)	/* Port 34 Output Modification Set Register 4 */
#define P40_OMSR4	(*( P00_OMSR4_type *) 0xF003C874U)	/* Port 40 Output Modification Set Register 4 */
#define P00_OMSR8	(*( P00_OMSR8_type *) 0xF003A078U)	/* Port 00 Output Modification Set Register 8 */
#define P02_OMSR8	(*( P00_OMSR8_type *) 0xF003A278U)	/* Port 02 Output Modification Set Register 8 */
#define P10_OMSR8	(*( P00_OMSR8_type *) 0xF003AA78U)	/* Port 10 Output Modification Set Register 8 */
#define P11_OMSR8	(*( P00_OMSR8_type *) 0xF003AB78U)	/* Port 11 Output Modification Set Register 8 */
#define P14_OMSR8	(*( P00_OMSR8_type *) 0xF003AE78U)	/* Port 14 Output Modification Set Register 8 */
#define P15_OMSR8	(*( P00_OMSR8_type *) 0xF003AF78U)	/* Port 15 Output Modification Set Register 8 */
#define P20_OMSR8	(*( P00_OMSR8_type *) 0xF003B478U)	/* Port 20 Output Modification Set Register 8 */
#define P22_OMSR8	(*( P00_OMSR8_type *) 0xF003B678U)	/* Port 22 Output Modification Set Register 8 */
#define P33_OMSR8	(*( P00_OMSR8_type *) 0xF003C178U)	/* Port 33 Output Modification Set Register 8 */
#define P40_OMSR8	(*( P00_OMSR8_type *) 0xF003C878U)	/* Port 40 Output Modification Set Register 8 */
#define P00_OMSR12	(*( P00_OMSR12_type *) 0xF003A07CU)	/* Port 00 Output Modification Set Register 12 */
#define P11_OMSR12	(*( P00_OMSR12_type *) 0xF003AB7CU)	/* Port 11 Output Modification Set Register 12 */
#define P20_OMSR12	(*( P00_OMSR12_type *) 0xF003B47CU)	/* Port 20 Output Modification Set Register 12 */
#define P33_OMSR12	(*( P00_OMSR12_type *) 0xF003C17CU)	/* Port 33 Output Modification Set Register 12 */
#define P40_OMSR12	(*( P00_OMSR12_type *) 0xF003C87CU)	/* Port 40 Output Modification Set Register 12 */
#define P00_OMCR0	(*( P00_OMCR0_type *) 0xF003A080U)	/* Port 00 Output Modification Clear Register 0 */
#define P01_OMCR0	(*( P00_OMCR0_type *) 0xF003A180U)	/* Port 01 Output Modification Clear Register 0 */
#define P02_OMCR0	(*( P00_OMCR0_type *) 0xF003A280U)	/* Port 02 Output Modification Clear Register 0 */
#define P10_OMCR0	(*( P00_OMCR0_type *) 0xF003AA80U)	/* Port 10 Output Modification Clear Register 0 */
#define P11_OMCR0	(*( P00_OMCR0_type *) 0xF003AB80U)	/* Port 11 Output Modification Clear Register 0 */
#define P12_OMCR0	(*( P00_OMCR0_type *) 0xF003AC80U)	/* Port 12 Output Modification Clear Register 0 */
#define P13_OMCR0	(*( P00_OMCR0_type *) 0xF003AD80U)	/* Port 13 Output Modification Clear Register 0 */
#define P14_OMCR0	(*( P00_OMCR0_type *) 0xF003AE80U)	/* Port 14 Output Modification Clear Register 0 */
#define P15_OMCR0	(*( P00_OMCR0_type *) 0xF003AF80U)	/* Port 15 Output Modification Clear Register 0 */
#define P20_OMCR0	(*( P00_OMCR0_type *) 0xF003B480U)	/* Port 20 Output Modification Clear Register 0 */
#define P21_OMCR0	(*( P00_OMCR0_type *) 0xF003B580U)	/* Port 21 Output Modification Clear Register 0 */
#define P22_OMCR0	(*( P00_OMCR0_type *) 0xF003B680U)	/* Port 22 Output Modification Clear Register 0 */
#define P23_OMCR0	(*( P00_OMCR0_type *) 0xF003B780U)	/* Port 23 Output Modification Clear Register 0 */
#define P32_OMCR0	(*( P00_OMCR0_type *) 0xF003C080U)	/* Port 32 Output Modification Clear Register 0 */
#define P33_OMCR0	(*( P00_OMCR0_type *) 0xF003C180U)	/* Port 33 Output Modification Clear Register 0 */
#define P34_OMCR0	(*( P00_OMCR0_type *) 0xF003C280U)	/* Port 34 Output Modification Clear Register 0 */
#define P40_OMCR0	(*( P00_OMCR0_type *) 0xF003C880U)	/* Port 40 Output Modification Clear Register 0 */
#define P00_OMCR4	(*( P00_OMCR4_type *) 0xF003A084U)	/* Port 00 Output Modification Clear Register 4 */
#define P01_OMCR4	(*( P00_OMCR4_type *) 0xF003A184U)	/* Port 01 Output Modification Clear Register 4 */
#define P02_OMCR4	(*( P00_OMCR4_type *) 0xF003A284U)	/* Port 02 Output Modification Clear Register 4 */
#define P10_OMCR4	(*( P00_OMCR4_type *) 0xF003AA84U)	/* Port 10 Output Modification Clear Register 4 */
#define P11_OMCR4	(*( P00_OMCR4_type *) 0xF003AB84U)	/* Port 11 Output Modification Clear Register 4 */
#define P14_OMCR4	(*( P00_OMCR4_type *) 0xF003AE84U)	/* Port 14 Output Modification Clear Register 4 */
#define P15_OMCR4	(*( P00_OMCR4_type *) 0xF003AF84U)	/* Port 15 Output Modification Clear Register 4 */
#define P20_OMCR4	(*( P00_OMCR4_type *) 0xF003B484U)	/* Port 20 Output Modification Clear Register 4 */
#define P21_OMCR4	(*( P00_OMCR4_type *) 0xF003B584U)	/* Port 21 Output Modification Clear Register 4 */
#define P22_OMCR4	(*( P00_OMCR4_type *) 0xF003B684U)	/* Port 22 Output Modification Clear Register 4 */
#define P23_OMCR4	(*( P00_OMCR4_type *) 0xF003B784U)	/* Port 23 Output Modification Clear Register 4 */
#define P32_OMCR4	(*( P00_OMCR4_type *) 0xF003C084U)	/* Port 32 Output Modification Clear Register 4 */
#define P33_OMCR4	(*( P00_OMCR4_type *) 0xF003C184U)	/* Port 33 Output Modification Clear Register 4 */
#define P34_OMCR4	(*( P00_OMCR4_type *) 0xF003C284U)	/* Port 34 Output Modification Clear Register 4 */
#define P40_OMCR4	(*( P00_OMCR4_type *) 0xF003C884U)	/* Port 40 Output Modification Clear Register 4 */
#define P00_OMCR8	(*( P00_OMCR8_type *) 0xF003A088U)	/* Port 00 Output Modification Clear Register 8 */
#define P02_OMCR8	(*( P00_OMCR8_type *) 0xF003A288U)	/* Port 02 Output Modification Clear Register 8 */
#define P10_OMCR8	(*( P00_OMCR8_type *) 0xF003AA88U)	/* Port 10 Output Modification Clear Register 8 */
#define P11_OMCR8	(*( P00_OMCR8_type *) 0xF003AB88U)	/* Port 11 Output Modification Clear Register 8 */
#define P14_OMCR8	(*( P00_OMCR8_type *) 0xF003AE88U)	/* Port 14 Output Modification Clear Register 8 */
#define P15_OMCR8	(*( P00_OMCR8_type *) 0xF003AF88U)	/* Port 15 Output Modification Clear Register 8 */
#define P20_OMCR8	(*( P00_OMCR8_type *) 0xF003B488U)	/* Port 20 Output Modification Clear Register 8 */
#define P22_OMCR8	(*( P00_OMCR8_type *) 0xF003B688U)	/* Port 22 Output Modification Clear Register 8 */
#define P33_OMCR8	(*( P00_OMCR8_type *) 0xF003C188U)	/* Port 33 Output Modification Clear Register 8 */
#define P40_OMCR8	(*( P00_OMCR8_type *) 0xF003C888U)	/* Port 40 Output Modification Clear Register 8 */
#define P00_OMCR12	(*( P00_OMCR12_type *) 0xF003A08CU)	/* Port 00 Output Modification Clear Register 12 */
#define P11_OMCR12	(*( P00_OMCR12_type *) 0xF003AB8CU)	/* Port 11 Output Modification Clear Register 12 */
#define P20_OMCR12	(*( P00_OMCR12_type *) 0xF003B48CU)	/* Port 20 Output Modification Clear Register 12 */
#define P33_OMCR12	(*( P00_OMCR12_type *) 0xF003C18CU)	/* Port 33 Output Modification Clear Register 12 */
#define P40_OMCR12	(*( P00_OMCR12_type *) 0xF003C88CU)	/* Port 40 Output Modification Clear Register 12 */
#define P00_OMSR	(*( P00_OMSR_type *) 0xF003A090U)	/* Port 00 Output Modification Set Register */
#define P11_OMSR	(*( P00_OMSR_type *) 0xF003AB90U)	/* Port 11 Output Modification Set Register */
#define P20_OMSR	(*( P00_OMSR_type *) 0xF003B490U)	/* Port 20 Output Modification Set Register */
#define P33_OMSR	(*( P00_OMSR_type *) 0xF003C190U)	/* Port 33 Output Modification Set Register */
#define P40_OMSR	(*( P00_OMSR_type *) 0xF003C890U)	/* Port 40 Output Modification Set Register */
#define P01_OMSR	(*( P01_OMSR_type *) 0xF003A190U)	/* Port 01 Output Modification Set Register */
#define P21_OMSR	(*( P01_OMSR_type *) 0xF003B590U)	/* Port 21 Output Modification Set Register */
#define P23_OMSR	(*( P01_OMSR_type *) 0xF003B790U)	/* Port 23 Output Modification Set Register */
#define P32_OMSR	(*( P01_OMSR_type *) 0xF003C090U)	/* Port 32 Output Modification Set Register */
#define P34_OMSR	(*( P01_OMSR_type *) 0xF003C290U)	/* Port 34 Output Modification Set Register */
#define P02_OMSR	(*( P02_OMSR_type *) 0xF003A290U)	/* Port 02 Output Modification Set Register */
#define P10_OMSR	(*( P02_OMSR_type *) 0xF003AA90U)	/* Port 10 Output Modification Set Register */
#define P14_OMSR	(*( P02_OMSR_type *) 0xF003AE90U)	/* Port 14 Output Modification Set Register */
#define P15_OMSR	(*( P02_OMSR_type *) 0xF003AF90U)	/* Port 15 Output Modification Set Register */
#define P22_OMSR	(*( P02_OMSR_type *) 0xF003B690U)	/* Port 22 Output Modification Set Register */
#define P12_OMSR	(*( P00_OMSR0_type *) 0xF003AC90U)	/* Port 12 Output Modification Set Register */
#define P13_OMSR	(*( P00_OMSR0_type *) 0xF003AD90U)	/* Port 13 Output Modification Set Register */
#define P00_OMCR	(*( P00_OMCR_type *) 0xF003A094U)	/* Port 00 Output Modification Clear Register */
#define P11_OMCR	(*( P00_OMCR_type *) 0xF003AB94U)	/* Port 11 Output Modification Clear Register */
#define P20_OMCR	(*( P00_OMCR_type *) 0xF003B494U)	/* Port 20 Output Modification Clear Register */
#define P33_OMCR	(*( P00_OMCR_type *) 0xF003C194U)	/* Port 33 Output Modification Clear Register */
#define P40_OMCR	(*( P00_OMCR_type *) 0xF003C894U)	/* Port 40 Output Modification Clear Register */
#define P01_OMCR	(*( P01_OMCR_type *) 0xF003A194U)	/* Port 01 Output Modification Clear Register */
#define P21_OMCR	(*( P01_OMCR_type *) 0xF003B594U)	/* Port 21 Output Modification Clear Register */
#define P23_OMCR	(*( P01_OMCR_type *) 0xF003B794U)	/* Port 23 Output Modification Clear Register */
#define P32_OMCR	(*( P01_OMCR_type *) 0xF003C094U)	/* Port 32 Output Modification Clear Register */
#define P34_OMCR	(*( P01_OMCR_type *) 0xF003C294U)	/* Port 34 Output Modification Clear Register */
#define P02_OMCR	(*( P02_OMCR_type *) 0xF003A294U)	/* Port 02 Output Modification Clear Register */
#define P10_OMCR	(*( P02_OMCR_type *) 0xF003AA94U)	/* Port 10 Output Modification Clear Register */
#define P14_OMCR	(*( P02_OMCR_type *) 0xF003AE94U)	/* Port 14 Output Modification Clear Register */
#define P15_OMCR	(*( P02_OMCR_type *) 0xF003AF94U)	/* Port 15 Output Modification Clear Register */
#define P22_OMCR	(*( P02_OMCR_type *) 0xF003B694U)	/* Port 22 Output Modification Clear Register */
#define P12_OMCR	(*( P00_OMCR0_type *) 0xF003AC94U)	/* Port 12 Output Modification Clear Register */
#define P13_OMCR	(*( P00_OMCR0_type *) 0xF003AD94U)	/* Port 13 Output Modification Clear Register */
#define P13_LPCR0	(*( P13_LPCR0_type *) 0xF003ADA0U)	/* Port 13 LVDS Pad Control Register 0 */
#define P13_LPCR1	(*( P13_LPCR0_type *) 0xF003ADA4U)	/* Port 13 LVDS Pad Control Register 1 */
#define P22_LPCR0	(*( P13_LPCR0_type *) 0xF003B6A0U)	/* Port 22 LVDS Pad Control Register 0 */
#define P22_LPCR1	(*( P13_LPCR0_type *) 0xF003B6A4U)	/* Port 22 LVDS Pad Control Register 1 */
#define P14_LPCR5	(*( P14_LPCR5_type *) 0xF003AEB4U)	/* Port 14 LVDS Pad Control Register 5 */
#define P21_LPCR0	(*( P14_LPCR5_type *) 0xF003B5A0U)	/* Port 21 LVDS Pad Control Register 0 */
#define P21_LPCR1	(*( P14_LPCR5_type *) 0xF003B5A4U)	/* Port 21 LVDS Pad Control Register 1 */
#define P21_LPCR2	(*( P13_LPCR0_type *) 0xF003B5A8U)	/* Port 21 LVDS Pad Control Register 2 */
#define P00_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003A0F8U)	/* Port 00 Access Enable Register 1 */
#define P01_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003A1F8U)	/* Port 01 Access Enable Register 1 */
#define P02_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003A2F8U)	/* Port 02 Access Enable Register 1 */
#define P10_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003AAF8U)	/* Port 10 Access Enable Register 1 */
#define P11_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003ABF8U)	/* Port 11 Access Enable Register 1 */
#define P12_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003ACF8U)	/* Port 12 Access Enable Register 1 */
#define P13_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003ADF8U)	/* Port 13 Access Enable Register 1 */
#define P14_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003AEF8U)	/* Port 14 Access Enable Register 1 */
#define P15_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003AFF8U)	/* Port 15 Access Enable Register 1 */
#define P20_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003B4F8U)	/* Port 20 Access Enable Register 1 */
#define P21_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003B5F8U)	/* Port 21 Access Enable Register 1 */
#define P22_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003B6F8U)	/* Port 22 Access Enable Register 1 */
#define P23_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003B7F8U)	/* Port 23 Access Enable Register 1 */
#define P32_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003C0F8U)	/* Port 32 Access Enable Register 1 */
#define P33_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003C1F8U)	/* Port 33 Access Enable Register 1 */
#define P34_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003C2F8U)	/* Port 34 Access Enable Register 1 */
#define P40_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF003C8F8U)	/* Port 40 Access Enable Register 1 */
#define P00_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003A0FCU)	/* Port 00 Access Enable Register 0 */
#define P01_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003A1FCU)	/* Port 01 Access Enable Register 0 */
#define P02_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003A2FCU)	/* Port 02 Access Enable Register 0 */
#define P10_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003AAFCU)	/* Port 10 Access Enable Register 0 */
#define P11_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003ABFCU)	/* Port 11 Access Enable Register 0 */
#define P12_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003ACFCU)	/* Port 12 Access Enable Register 0 */
#define P13_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003ADFCU)	/* Port 13 Access Enable Register 0 */
#define P14_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003AEFCU)	/* Port 14 Access Enable Register 0 */
#define P15_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003AFFCU)	/* Port 15 Access Enable Register 0 */
#define P20_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003B4FCU)	/* Port 20 Access Enable Register 0 */
#define P21_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003B5FCU)	/* Port 21 Access Enable Register 0 */
#define P22_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003B6FCU)	/* Port 22 Access Enable Register 0 */
#define P23_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003B7FCU)	/* Port 23 Access Enable Register 0 */
#define P32_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003C0FCU)	/* Port 32 Access Enable Register 0 */
#define P33_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003C1FCU)	/* Port 33 Access Enable Register 0 */
#define P34_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003C2FCU)	/* Port 34 Access Enable Register 0 */
#define P40_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF003C8FCU)	/* Port 40 Access Enable Register 0 */
#define SCU_ID	(*( P00_ID_type *) 0xF0036008U)	/* Identification Register */
#define SCU_SYSCON	(*( SCU_SYSCON_type *) 0xF003607CU)	/* System Control Register */
#define SCU_EMSR	(*( SCU_EMSR_type *) 0xF00360FCU)	/* Emergency Stop Register */
#define SCU_EMSSW	(*( SCU_EMSSW_type *) 0xF0036100U)	/* Emergency Stop Software set and clear register */
#define SCU_LCLCON0	(*( SCU_LCLCON0_type *) 0xF0036134U)	/* LCL CPU0 and CPU2 Control Register */
#define SCU_LCLCON1	(*( SCU_LCLCON1_type *) 0xF0036138U)	/* LCL CPU1 and CPU3 Control Register */
#define SCU_LCLTEST	(*( SCU_LCLTEST_type *) 0xF003613CU)	/* LCL Test Register */
#define SCU_CHIPID	(*( SCU_CHIPID_type *) 0xF0036140U)	/* Chip Identification Register */
#define SCU_MANID	(*( SCU_MANID_type *) 0xF0036144U)	/* Manufacturer Identification Register */
#define SCU_SWAPCTRL	(*( SCU_SWAPCTRL_type *) 0xF003614CU)	/* Address Map Control Register */
#define SCU_LBISTCTRL0	(*( SCU_LBISTCTRL0_type *) 0xF0036164U)	/* Logic BIST Control 0 Register */
#define SCU_LBISTCTRL1	(*( SCU_LBISTCTRL1_type *) 0xF0036168U)	/* Logic BIST Control 1 Register */
#define SCU_LBISTCTRL2	(*( SCU_LBISTCTRL2_type *) 0xF003616CU)	/* Logic BIST Control 2 Register */
#define SCU_LBISTCTRL3	(*( SCU_LBISTCTRL3_type *) 0xF0036170U)	/* Logic BIST Control 3 Register */
#define SCU_STMEM1	(*( SCU_STMEM1_type *) 0xF0036184U)	/* Start-up Memory Register 1 */
#define SCU_STMEM2	(*( SCU_STMEM1_type *) 0xF0036188U)	/* Start-up Memory Register 2 */
#define SCU_STMEM3	(*( SCU_STMEM1_type *) 0xF00361C0U)	/* Start-up Memory Register 3 */
#define SCU_STMEM4	(*( SCU_STMEM1_type *) 0xF00361C4U)	/* Start-up Memory Register 4 */
#define SCU_STMEM5	(*( SCU_STMEM1_type *) 0xF00361C8U)	/* Start-up Memory Register 5 */
#define SCU_STMEM6	(*( SCU_STMEM1_type *) 0xF00361CCU)	/* Start-up Memory Register 6 */
#define SCU_OVCENABLE	(*( SCU_OVCENABLE_type *) 0xF00361E0U)	/* Overlay Enable Register */
#define SCU_OVCCON	(*( SCU_OVCCON_type *) 0xF00361E4U)	/* Overlay Control Register */
#define SCU_EIFILT	(*( SCU_EIFILT_type *) 0xF003620CU)	/* External Input Filter Register */
#define SCU_EICR0	(*( SCU_EICR0_type *) 0xF0036210U)	/* External Input Channel Register 0 */
#define SCU_EICR1	(*( SCU_EICR0_type *) 0xF0036214U)	/* External Input Channel Register 1 */
#define SCU_EICR2	(*( SCU_EICR0_type *) 0xF0036218U)	/* External Input Channel Register 2 */
#define SCU_EICR3	(*( SCU_EICR0_type *) 0xF003621CU)	/* External Input Channel Register 3 */
#define SCU_EIFR	(*( SCU_EIFR_type *) 0xF0036220U)	/* External Input Flag Register */
#define SCU_FMR	(*( SCU_FMR_type *) 0xF0036224U)	/* Flag Modification Register */
#define SCU_PDRR	(*( SCU_PDRR_type *) 0xF0036228U)	/* Pattern Detection Result Register */
#define SCU_IGCR0	(*( SCU_IGCR0_type *) 0xF003622CU)	/* Flag Gating Register 0 */
#define SCU_IGCR1	(*( SCU_IGCR0_type *) 0xF0036230U)	/* Flag Gating Register 1 */
#define SCU_IGCR2	(*( SCU_IGCR0_type *) 0xF0036234U)	/* Flag Gating Register 2 */
#define SCU_IGCR3	(*( SCU_IGCR0_type *) 0xF0036238U)	/* Flag Gating Register 3 */
#define SCU_WDTCPU0CON0	(*( SCU_WDTCPU0CON0_type *) 0xF003624CU)	/* CPU0 WDT Control Register 0 */
#define SCU_WDTCPU1CON0	(*( SCU_WDTCPU0CON0_type *) 0xF0036258U)	/* CPU1 WDT Control Register 0 */
#define SCU_WDTCPU2CON0	(*( SCU_WDTCPU0CON0_type *) 0xF0036264U)	/* CPU2 WDT Control Register 0 */
#define SCU_WDTCPU0CON1	(*( SCU_WDTCPU0CON1_type *) 0xF0036250U)	/* CPU0 WDT Control Register 1 */
#define SCU_WDTCPU1CON1	(*( SCU_WDTCPU0CON1_type *) 0xF003625CU)	/* CPU1 WDT Control Register 1 */
#define SCU_WDTCPU2CON1	(*( SCU_WDTCPU0CON1_type *) 0xF0036268U)	/* CPU2 WDT Control Register 1 */
#define SCU_WDTCPU0SR	(*( SCU_WDTCPU0SR_type *) 0xF0036254U)	/* CPU0 WDT Status Register */
#define SCU_WDTCPU1SR	(*( SCU_WDTCPU0SR_type *) 0xF0036260U)	/* CPU1 WDT Status Register */
#define SCU_WDTCPU2SR	(*( SCU_WDTCPU0SR_type *) 0xF003626CU)	/* CPU2 WDT Status Register */
#define SCU_EICON0	(*( SCU_EICON0_type *) 0xF003629CU)	/* ENDINIT Global Control Register 0 */
#define SCU_EICON1	(*( SCU_EICON1_type *) 0xF00362A0U)	/* ENDINIT Global Control Register 1 */
#define SCU_EISR	(*( SCU_EISR_type *) 0xF00362A4U)	/* ENDINIT Timeout Counter Status Register */
#define SCU_WDTSCON0	(*( SCU_WDTCPU0CON0_type *) 0xF00362A8U)	/* Safety WDT Control Register 0 */
#define SCU_WDTSCON1	(*( SCU_WDTSCON1_type *) 0xF00362ACU)	/* Safety WDT Control Register 1 */
#define SCU_WDTSSR	(*( SCU_WDTCPU0SR_type *) 0xF00362B0U)	/* Safety WDT Status Register */
#define SCU_SEICON0	(*( SCU_SEICON0_type *) 0xF00362B4U)	/* Safety ENDINIT Control Register 0 */
#define SCU_SEICON1	(*( SCU_EICON1_type *) 0xF00362B8U)	/* Safety ENDINIT Control Register 1 */
#define SCU_SEISR	(*( SCU_SEISR_type *) 0xF00362BCU)	/* Safety ENDINIT Timeout Status Register */
#define SCU_ACCEN11	(*( ASCLIN0_ACCEN1_type *) 0xF00363F0U)	/* Access Enable Register 11 */
#define SCU_ACCEN10	(*( ASCLIN0_ACCEN0_type *) 0xF00363F4U)	/* Access Enable Register 10 */
#define SCU_ACCEN01	(*( ASCLIN0_ACCEN1_type *) 0xF00363F8U)	/* Access Enable Register 01 */
#define SCU_ACCEN00	(*( ASCLIN0_ACCEN0_type *) 0xF00363FCU)	/* Access Enable Register 00 */
#define SCU_RSTSTAT	(*( SCU_RSTSTAT_type *) 0xF0036050U)	/* Reset Status Register */
#define SCU_RSTCON	(*( SCU_RSTCON_type *) 0xF0036058U)	/* Reset Configuration Register */
#define SCU_ARSTDIS	(*( SCU_ARSTDIS_type *) 0xF003605CU)	/* Application Reset Disable Register */
#define SCU_SWRSTCON	(*( SCU_SWRSTCON_type *) 0xF0036060U)	/* Software Reset Configuration Register */
#define SCU_RSTCON2	(*( SCU_RSTCON2_type *) 0xF0036064U)	/* Additional Reset Control Register */
#define SCU_RSTCON3	(*( ASCLIN0_ACCEN1_type *) 0xF0036068U)	/* Reset Configuration Register 3 */
#define SCU_ESRCFG0	(*( SCU_ESRCFG0_type *) 0xF0036070U)	/* ESR0 Input Configuration Register */
#define SCU_ESRCFG1	(*( SCU_ESRCFG0_type *) 0xF0036074U)	/* ESR1 Input Configuration Register */
#define SCU_ESROCFG	(*( SCU_ESROCFG_type *) 0xF0036078U)	/* ESR Output Configuration Register */
#define SCU_PDR	(*( SCU_PDR_type *) 0xF003609CU)	/* ESR Pad Driver Mode Register */
#define SCU_IOCR	(*( SCU_IOCR_type *) 0xF00360A0U)	/* Input/Output Control Register */
#define SCU_OUT	(*( SCU_OUT_type *) 0xF00360A4U)	/* ESR Output Register */
#define SCU_OMR	(*( SCU_OMR_type *) 0xF00360A8U)	/* ESR Output Modification Register */
#define SCU_IN	(*( SCU_IN_type *) 0xF00360ACU)	/* ESR Input Register */
#define SCU_STSTAT	(*( SCU_STSTAT_type *) 0xF00360C0U)	/* Start-up Status Register */
#define SCU_STCON	(*( SCU_STCON_type *) 0xF00360C4U)	/* Start-up Configuration Register */
#define SCU_TRAPDIS1	(*( ASCLIN0_ACCEN1_type *) 0xF0036120U)	/* Trap Disable Register 1 */
#define SCU_TRAPSTAT	(*( SCU_TRAPSTAT_type *) 0xF0036124U)	/* Trap Status Register */
#define SCU_TRAPSET	(*( SCU_TRAPSET_type *) 0xF0036128U)	/* Trap Set Register */
#define SCU_TRAPCLR	(*( SCU_TRAPCLR_type *) 0xF003612CU)	/* Trap Clear Register */
#define SCU_TRAPDIS0	(*( SCU_TRAPDIS0_type *) 0xF0036130U)	/* Trap Disable Register 0 */
#define SCU_PDISC	(*( SCU_PDISC_type *) 0xF003618CU)	/* Pad Disable Control Register */
#define SCU_OSCCON	(*( SCU_OSCCON_type *) 0xF0036010U)	/* OSC Control Register */
#define SCU_SYSPLLSTAT	(*( SCU_SYSPLLSTAT_type *) 0xF0036014U)	/* System PLL Status Register */
#define SCU_SYSPLLCON0	(*( SCU_SYSPLLCON0_type *) 0xF0036018U)	/* System PLL Configuration 0 Register */
#define SCU_SYSPLLCON1	(*( SCU_SYSPLLCON1_type *) 0xF003601CU)	/* System PLL Configuration 1 Register */
#define SCU_SYSPLLCON2	(*( SCU_SYSPLLCON2_type *) 0xF0036020U)	/* System PLL Configuration 2 Register */
#define SCU_PERPLLSTAT	(*( SCU_PERPLLSTAT_type *) 0xF0036024U)	/* Peripheral PLL Status Register */
#define SCU_PERPLLCON0	(*( SCU_PERPLLCON0_type *) 0xF0036028U)	/* Peripheral PLL Configuration 0 Register */
#define SCU_PERPLLCON1	(*( SCU_PERPLLCON1_type *) 0xF003602CU)	/* Peripheral PLL Configuration 1 Register */
#define SCU_CCUCON0	(*( SCU_CCUCON0_type *) 0xF0036030U)	/* CCU Clock Control Register 0 */
#define SCU_CCUCON1	(*( SCU_CCUCON1_type *) 0xF0036034U)	/* CCU Clock Control Register 1 */
#define SCU_FDR	(*( SCU_FDR_type *) 0xF0036038U)	/* Fractional Divider Register */
#define SCU_EXTCON	(*( SCU_EXTCON_type *) 0xF003603CU)	/* External Clock Control Register */
#define SCU_CCUCON2	(*( SCU_CCUCON2_type *) 0xF0036040U)	/* CCU Clock Control Register 2 */
#define SCU_CCUCON3	(*( SCU_CCUCON3_type *) 0xF0036044U)	/* CCU Clock Control Register 3 */
#define SCU_CCUCON4	(*( SCU_CCUCON4_type *) 0xF0036048U)	/* CCU Clock Control Register 4 */
#define SCU_CCUCON5	(*( SCU_CCUCON5_type *) 0xF003604CU)	/* CCU Clock Control Register 5 */
#define SCU_CCUCON6	(*( SCU_CCUCON6_type *) 0xF0036080U)	/* CCU Clock Control Register 6 */
#define SCU_CCUCON7	(*( SCU_CCUCON7_type *) 0xF0036084U)	/* CCU Clock Control Register 7 */
#define SCU_CCUCON8	(*( SCU_CCUCON8_type *) 0xF0036088U)	/* CCU Clock Control Register 8 */
#define SCU_PMCSR0	(*( SCU_PMCSR0_type *) 0xF00360C8U)	/* Power Management Control and Status Register */
#define SCU_PMCSR1	(*( SCU_PMCSR0_type *) 0xF00360CCU)	/* Power Management Control and Status Register */
#define SCU_PMCSR2	(*( SCU_PMCSR0_type *) 0xF00360D0U)	/* Power Management Control and Status Register */
#define SCU_PMCSR3	(*( SCU_PMCSR0_type *) 0xF00360D4U)	/* Power Management Control and Status Register */
#define SCU_PMCSR4	(*( SCU_PMCSR0_type *) 0xF00360D8U)	/* Power Management Control and Status Register */
#define SCU_PMCSR5	(*( SCU_PMCSR0_type *) 0xF00360DCU)	/* Power Management Control and Status Register */
#define SCU_PMSTAT0	(*( SCU_PMSTAT0_type *) 0xF00360E4U)	/* Power Management Status Register 0 */
#define SCU_PMSWCR1	(*( SCU_PMSWCR1_type *) 0xF00360E8U)	/* Standby and Wake-up Control Register 1 */
#define SCU_DTSCSTAT	(*( SCU_DTSCSTAT_type *) 0xF0036104U)	/* Core Die Temperature Sensor Status Register */
#define SCU_DTSCLIM	(*( SCU_DTSCLIM_type *) 0xF0036108U)	/* Core Die Temperature Sensor Limit Register */
#define SCU_PMTRCSR0	(*( SCU_PMTRCSR0_type *) 0xF0036198U)	/* Power Management Transition Control and Status Register 0 */
#define SCU_PMTRCSR1	(*( SCU_PMTRCSR1_type *) 0xF003619CU)	/* Power Management Transition Control and Status Register 1 */
#define SCU_PMTRCSR2	(*( SCU_PMTRCSR2_type *) 0xF00361A0U)	/* Power Management Transition Control and Status Register 2 */
#define SCU_PMTRCSR3	(*( SCU_PMTRCSR3_type *) 0xF00361A4U)	/* Power Management Transition Control and Status Register 3 */
#define STM0_CLC	(*( ASCLIN0_CLC_type *) 0xF0001000U)	/* Clock Control Register */
#define STM1_CLC	(*( ASCLIN0_CLC_type *) 0xF0001100U)	/* Clock Control Register */
#define STM2_CLC	(*( ASCLIN0_CLC_type *) 0xF0001200U)	/* Clock Control Register */
#define STM0_ID	(*( STM0_ID_type *) 0xF0001008U)	/* Module Identification Register */
#define STM1_ID	(*( STM0_ID_type *) 0xF0001108U)	/* Module Identification Register */
#define STM2_ID	(*( STM0_ID_type *) 0xF0001208U)	/* Module Identification Register */
#define STM0_TIM0	(*( STM0_TIM0_type *) 0xF0001010U)	/* Timer Register 0 */
#define STM1_TIM0	(*( STM0_TIM0_type *) 0xF0001110U)	/* Timer Register 0 */
#define STM2_TIM0	(*( STM0_TIM0_type *) 0xF0001210U)	/* Timer Register 0 */
#define STM0_TIM1	(*( STM0_TIM1_type *) 0xF0001014U)	/* Timer Register 1 */
#define STM1_TIM1	(*( STM0_TIM1_type *) 0xF0001114U)	/* Timer Register 1 */
#define STM2_TIM1	(*( STM0_TIM1_type *) 0xF0001214U)	/* Timer Register 1 */
#define STM0_TIM2	(*( STM0_TIM2_type *) 0xF0001018U)	/* Timer Register 2 */
#define STM1_TIM2	(*( STM0_TIM2_type *) 0xF0001118U)	/* Timer Register 2 */
#define STM2_TIM2	(*( STM0_TIM2_type *) 0xF0001218U)	/* Timer Register 2 */
#define STM0_TIM3	(*( STM0_TIM3_type *) 0xF000101CU)	/* Timer Register 3 */
#define STM1_TIM3	(*( STM0_TIM3_type *) 0xF000111CU)	/* Timer Register 3 */
#define STM2_TIM3	(*( STM0_TIM3_type *) 0xF000121CU)	/* Timer Register 3 */
#define STM0_TIM4	(*( STM0_TIM4_type *) 0xF0001020U)	/* Timer Register 4 */
#define STM1_TIM4	(*( STM0_TIM4_type *) 0xF0001120U)	/* Timer Register 4 */
#define STM2_TIM4	(*( STM0_TIM4_type *) 0xF0001220U)	/* Timer Register 4 */
#define STM0_TIM5	(*( STM0_TIM5_type *) 0xF0001024U)	/* Timer Register 5 */
#define STM1_TIM5	(*( STM0_TIM5_type *) 0xF0001124U)	/* Timer Register 5 */
#define STM2_TIM5	(*( STM0_TIM5_type *) 0xF0001224U)	/* Timer Register 5 */
#define STM0_TIM6	(*( STM0_TIM6_type *) 0xF0001028U)	/* Timer Register 6 */
#define STM1_TIM6	(*( STM0_TIM6_type *) 0xF0001128U)	/* Timer Register 6 */
#define STM2_TIM6	(*( STM0_TIM6_type *) 0xF0001228U)	/* Timer Register 6 */
#define STM0_CAP	(*( STM0_CAP_type *) 0xF000102CU)	/* Timer Capture Register */
#define STM1_CAP	(*( STM0_CAP_type *) 0xF000112CU)	/* Timer Capture Register */
#define STM2_CAP	(*( STM0_CAP_type *) 0xF000122CU)	/* Timer Capture Register */
#define STM0_CMP0	(*( STM0_CMP0_type *) 0xF0001030U)	/* Compare Register 0 */
#define STM0_CMP1	(*( STM0_CMP1_type *) 0xF0001034U)	/* Compare Register 1 */
#define STM1_CMP0	(*( STM0_CMP0_type *) 0xF0001130U)	/* Compare Register 0 */
#define STM1_CMP1	(*( STM0_CMP1_type *) 0xF0001134U)	/* Compare Register 1 */
#define STM2_CMP0	(*( STM0_CMP0_type *) 0xF0001230U)	/* Compare Register 0 */
#define STM2_CMP1	(*( STM0_CMP1_type *) 0xF0001234U)	/* Compare Register 1 */
#define STM0_CMCON	(*( STM0_CMCON_type *) 0xF0001038U)	/* Compare Match Control Register */
#define STM1_CMCON	(*( STM0_CMCON_type *) 0xF0001138U)	/* Compare Match Control Register */
#define STM2_CMCON	(*( STM0_CMCON_type *) 0xF0001238U)	/* Compare Match Control Register */
#define STM0_ICR	(*( STM0_ICR_type *) 0xF000103CU)	/* Interrupt Control Register */
#define STM1_ICR	(*( STM0_ICR_type *) 0xF000113CU)	/* Interrupt Control Register */
#define STM2_ICR	(*( STM0_ICR_type *) 0xF000123CU)	/* Interrupt Control Register */
#define STM0_ISCR	(*( STM0_ISCR_type *) 0xF0001040U)	/* Interrupt Set/Clear Register */
#define STM1_ISCR	(*( STM0_ISCR_type *) 0xF0001140U)	/* Interrupt Set/Clear Register */
#define STM2_ISCR	(*( STM0_ISCR_type *) 0xF0001240U)	/* Interrupt Set/Clear Register */
#define STM0_TIM0SV	(*( STM0_TIM0_type *) 0xF0001050U)	/* Timer Register 0 Second View */
#define STM1_TIM0SV	(*( STM0_TIM0_type *) 0xF0001150U)	/* Timer Register 0 Second View */
#define STM2_TIM0SV	(*( STM0_TIM0_type *) 0xF0001250U)	/* Timer Register 0 Second View */
#define STM0_CAPSV	(*( STM0_CAP_type *) 0xF0001054U)	/* Timer Capture Register Second View */
#define STM1_CAPSV	(*( STM0_CAP_type *) 0xF0001154U)	/* Timer Capture Register Second View */
#define STM2_CAPSV	(*( STM0_CAP_type *) 0xF0001254U)	/* Timer Capture Register Second View */
#define STM0_OCS	(*( ASCLIN0_OCS_type *) 0xF00010E8U)	/* OCDS Control and Status Register */
#define STM1_OCS	(*( ASCLIN0_OCS_type *) 0xF00011E8U)	/* OCDS Control and Status Register */
#define STM2_OCS	(*( ASCLIN0_OCS_type *) 0xF00012E8U)	/* OCDS Control and Status Register */
#define STM0_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF00010ECU)	/* Kernel Reset Status Clear Register */
#define STM1_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF00011ECU)	/* Kernel Reset Status Clear Register */
#define STM2_KRSTCLR	(*( ASCLIN0_KRSTCLR_type *) 0xF00012ECU)	/* Kernel Reset Status Clear Register */
#define STM0_KRST1	(*( ASCLIN0_KRST1_type *) 0xF00010F0U)	/* Kernel Reset Register 1 */
#define STM1_KRST1	(*( ASCLIN0_KRST1_type *) 0xF00011F0U)	/* Kernel Reset Register 1 */
#define STM2_KRST1	(*( ASCLIN0_KRST1_type *) 0xF00012F0U)	/* Kernel Reset Register 1 */
#define STM0_KRST0	(*( ASCLIN0_KRST0_type *) 0xF00010F4U)	/* Kernel Reset Register 0 */
#define STM1_KRST0	(*( ASCLIN0_KRST0_type *) 0xF00011F4U)	/* Kernel Reset Register 0 */
#define STM2_KRST0	(*( ASCLIN0_KRST0_type *) 0xF00012F4U)	/* Kernel Reset Register 0 */
#define STM0_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF00010F8U)	/* Access Enable Register 1 */
#define STM1_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF00011F8U)	/* Access Enable Register 1 */
#define STM2_ACCEN1	(*( ASCLIN0_ACCEN1_type *) 0xF00012F8U)	/* Access Enable Register 1 */
#define STM0_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF00010FCU)	/* Access Enable Register 0 */
#define STM1_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF00011FCU)	/* Access Enable Register 0 */
#define STM2_ACCEN0	(*( ASCLIN0_ACCEN0_type *) 0xF00012FCU)	/* Access Enable Register 0 */
/*lint -restore */
#endif /* Os_TC37X_DEFS_H */

