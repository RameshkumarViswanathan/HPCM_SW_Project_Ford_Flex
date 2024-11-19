#ifndef UCC5880_REGS_H
#define UCC5880_REGS_H

#include "Std_Types.h"

/****************************************************************************
 Register Addresses
*****************************************************************************
GD Register Addresses*/
#define  GD_ADDR_CFG1            0x00
#define  GD_ADDR_CFG2            0x01
#define  GD_ADDR_CFG3            0x02
#define  GD_ADDR_CFG4            0x03
#define  GD_ADDR_CFG5            0x04
#define  GD_ADDR_CFG6            0x05
#define  GD_ADDR_ACT1            0x06
#define  GD_ADDR_ACT2            0x07
#define  GD_ADDR_ACT3            0x08
#define  GD_ADDR_DIGCOMP1        0x09
#define  GD_ADDR_DIGCOMP2        0x0A
#define  GD_ADDR_ADC1            0x0B
#define  GD_ADDR_ADC2            0x0C
#define  GD_ADDR_ADC3            0x0D
#define  GD_ADDR_ADC4            0x0E
#define  GD_ADDR_ADC5            0x0F
#define  GD_ADDR_ADC6            0x10
#define  GD_ADDR_CRC             0x11
#define  GD_ADDR_STATUS          0x12
#define  GD_ADDR_FAULT1          0x13
#define  GD_ADDR_FAULT2          0x14
#define  GD_ADDR_CONTROL1        0x15
#define  GD_ADDR_CONTROL2        0x16
#define  GD_ADDR_CONTROL3        0x17
#define  GD_ADDR_ID              0x18

/* ============================================================================
===============================================================================
      REGISTER BIT FIELD DEFINITIONS
 ===============================================================================
 ===============================================================================*/
/* UCC5880 CFG1 Register bit definitions: */

struct  GD_CFG1_REG_BITS
{                                           /* bit     description */
    uint16   GD_RESET_MUTE_EN               : 1; /*  0      Enables the reset mute function*/
    uint16   GD_IO_DG                       : 2; /*  2:1    Deglitch for the INN and INP inputs*/
    uint16   GD_TDEAD                       : 5; /*  7:3    Dead-time*/
	uint16   GD_RESERVED_CFG1_8_TO_11       : 4; /* 11:8    RESERVED*/
	uint16   GD_NFLT2_MUX                   : 2; /* 13:12   NFLT2 output*/
	uint16   GD_OVLO1_TH                    : 1; /* 14	   OVLO threshold*/
	uint16   GD_UVLO1_TH                    : 1; /* 15      UVLO threshold*/
};

typedef union
{
   uint16               		all;
   struct GD_CFG1_REG_BITS	    bit;
} GD_CFG1_REG;

#define  GD_RESET_MUTE_EN_OFFSET            0u
#define  GD_IO_DG_OFFSET            		1u
#define  GD_TDEAD_OFFSET                    3u
#define  GD_NFLT2_MUX_OFFSET                12u
#define  GD_OVLO1_TH_OFFSET                 14u
#define  GD_UVLO1_TH_OFFSET                 15u

#define  GD_RESET_MUTE_EN_MASK            (0x1u << GD_RESET_MUTE_EN_OFFSET)
#define  GD_IO_DG_MASK            		  (0x3u << GD_IO_DG_OFFSET)
#define  GD_TDEAD_MASK                    (0x1Fu << GD_TDEAD_OFFSET)
#define  GD_NFLT2_MUX_MASK                (0x3u << GD_NFLT2_MUX_OFFSET)
#define  GD_OVLO1_TH_MASK                 (0x1u << GD_OVLO1_TH_OFFSET)
#define  GD_UVLO1_TH_MASK                 (0x1u << GD_UVLO1_TH_OFFSET)

#define  GD_Tdead(GD_Time_in_ns)   ((((GD_Time_in_ns)-122)/68) + 1)   /* T in ns*/
#define  GD_TDEAD_RESET     0u

typedef unsigned char GD_TDEAD_type; 
GD_TDEAD_type GD_Time_in_ns;

typedef enum {
	GD_RESET_MUTE_DISABLE  = 0,
	GD_RESET_MUTE_ENABLE   = 1
}GD_RESET_MUTE_EN_type;

typedef enum {
    GD_IO_DEGLITCH_BYPASS = 0,
    GD_IO_DEGLITCH_87ns   = 1,
    GD_IO_DEGLITCH_157ns  = 2,
    GD_IO_DEGLITCH_228ns  = 3
}GD_IO_DG_type;

typedef enum {
    GD_nFLT2_MUX_nFLT2       = 0,
    GD_nFLT2_MUX_DOUT        = 1,  /* all warnings of nFLT2 output on nFLT1*/
	GD_nFLT2_MUX_GM_STATE_1  = 2, 
	GD_nFLT2_MUX_GM_STATE_2  = 3
}GD_NFLT2_MUX_type;

typedef enum {
    GD_VCC1_OVLO_VTH_4V15  = 0,
    GD_VCC1_OVLO_VTH_5V65  = 1

}GD_OVLO1_TH_type;

typedef enum {
    GD_VCC1_UVLO_VTH_2V45  = 0,
    GD_VCC1_UVLO_VTH_4V35  = 1

}GD_UVLO1_TH_type;

/* GD CFG2 Register bit definitions:*/
struct  GD_CFG2_REG_BITS
{                                        /* bit    description*/
    uint16   GD_MCLP_EN            : 1;  /*  0      Miller clamp*/
    uint16   GD_DESAT_SC_SEL       : 2;  /*  2:1    DESAT or SC function*/
    uint16   GD_OC_EN              : 1;  /*  3      OC function on DESAT(CS) pin*/
    uint16   GD_GM_BLK             : 2;  /*  5:4    gate monitoring function*/
    uint16   GD_OVLO3_TH           : 2;  /*  7:6    OVLO threshold for VEE2*/
    uint16   GD_UVLO3_TH           : 2;  /*  9:8    UVLO threshold for VEE2*/
    uint16   GD_OVLO2_TH           : 2;  /* 11:10   OVLO threshold for VCC2*/
    uint16   GD_UVLO2_TH           : 2;  /* 13:12   UVLO threshold for VCC2*/
    uint16   GD_MCLP_TH            : 2;  /* 15:14   threshold for the active miller clamp*/

};

typedef union
{
    uint16                      all;
    struct GD_CFG2_REG_BITS bit;
} GD_CFG2_REG;

#define  GD_MCLP_EN_OFFSET            0u
#define  GD_DESAT_SC_SEL_OFFSET       1u
#define  GD_OC_EN_OFFSET              3u
#define  GD_GM_BLK_OFFSET             4u
#define  GD_OVLO3_TH_OFFSET           6u
#define  GD_UVLO3_TH_OFFSET           8u
#define  GD_OVLO2_TH_OFFSET           10u
#define  GD_UVLO2_TH_OFFSET           12u
#define  GD_MCLP_TH_OFFSET            14u

#define  GD_MCLP_EN_MASK            (0x1u << GD_MCLP_EN_OFFSET)
#define  GD_DESAT_SC_SEL_MASK       (0x3u << GD_DESAT_SC_SEL_OFFSET)
#define  GD_OC_EN_MASK              (0x1u << GD_OC_EN_OFFSET)
#define  GD_GM_BLK_MASK             (0x3u << GD_GM_BLK_OFFSET)
#define  GD_OVLO3_TH_MASK           (0x3u << GD_OVLO3_TH_OFFSET)
#define  GD_UVLO3_TH_MASK           (0x3u << GD_UVLO3_TH_OFFSET)
#define  GD_OVLO2_TH_MASK           (0x3u << GD_OVLO2_TH_OFFSET)
#define  GD_UVLO2_TH_MASK           (0x3u << GD_UVLO2_TH_OFFSET)
#define  GD_MCLP_TH_MASK            (0x3u << GD_MCLP_TH_OFFSET)

typedef enum {
	GD_MCLP_DISABLE  = 0u,
	GD_MCLP_ENABLE   = 1u
}GD_MCLP_EN_type;


typedef enum {
	GD_DESAT_ENABLE       = 0u,
	GD_SC_ENABLE          = 1u,
	GD_DESAT_SC_DISABLE_1  = 2u,
	GD_DESAT_SC_DISABLE_2  = 3u
}GD_DESAT_SC_SEL_type;

typedef enum {
	GD_OC_DISABLE  = 0u,
	GD_OC_ENABLE   = 1u
}GD_OC_EN_type;

typedef enum {
    GD_GM_BLK_543ns   = 0u,
    GD_GM_BLK_1035ns  = 1u,
    GD_GM_BLK_2543ns  = 2u,
    GD_GM_BLK_4052ns  = 3u
}GD_GM_BLK_type;

typedef enum {
    GD_VEE2_OVLO3_VTH_M6V  = 0u,
    GD_VEE2_OVLO3_VTH_M8V  = 1u,
    GD_VEE2_OVLO3_VTH_M11V = 2u,
    GD_VEE2_OVLO3_VTH_M13V = 3u
}GD_OVLO3_TH_type;

typedef enum {
    GD_VEE2_UVLO3_VTH_M2V  = 0u,
    GD_VEE2_UVLO3_VTH_M4V  = 1u,
    GD_VEE2_UVLO3_VTH_M7V  = 2u,
    GD_VEE2_UVLO3_VTH_M9V  = 3u
}GD_UVLO3_TH_type;

typedef enum {
    GD_VCC2_OVLO2_VTH_P18V  = 0u,
    GD_VCC2_OVLO2_VTH_P20V  = 1u,
    GD_VCC2_OVLO2_VTH_P22V  = 2u,
    GD_VCC2_OVLO2_VTH_P24V  = 3u
}GD_OVLO2_TH_type;

typedef enum {
    GD_VCC2_UVLO2_VTH_P9V   = 0u,
    GD_VCC2_UVLO2_VTH_P11V  = 1u,
    GD_VCC2_UVLO2_VTH_P13V  = 2u,
    GD_VCC2_UVLO2_VTH_P15V  =3u
}GD_UVLO2_TH_type;

typedef enum {
    GD_MCLP_TH_1V   = 0u,
    GD_MCLP_TH_2V   = 1u,
    GD_MCLP_TH_3V   = 2u,
	GD_MCLP_TH_4V   = 3u
}GD_MCLP_TH_type;

/* GD CFG3 Register bit definitions: */
struct  GD_CFG3_REG_BITS
{                                            /* bit description*/
    uint16   GD_VGTH_MEAS_EN            : 1; /*  0 */
    uint16   GD_STO_2STO_CURR           : 2; /*  2:1*/
    uint16   GD_DESAT_ICHG              : 2; /*  4:3*/
    uint16   GD_DESAT_SC_TH             : 3; /*  7:5*/
    uint16   GD_DESAT_SCP_DG_EN         : 1; /*  8*/
    uint16   GD_OC_TH                   : 3; /* 11:9*/
    uint16   GD_SC_BLK                  : 4; /* 15:12*/
};

typedef union
{
    uint16                      all;
    struct GD_CFG3_REG_BITS bit;
} GD_CFG3_REG;

#define  GD_VGTH_MEAS_EN_OFFSET           0u
#define  GD_STO_2STO_CURR_OFFSET          1u
#define  GD_DESAT_ICHG_OFFSET             3u
#define  GD_DESAT_SC_TH_OFFSET            5u
#define  GD_DESAT_SCP_DG_EN_OFFSET        8u
#define  GD_OC_TH_OFFSET                  9u
#define  GD_SC_BLK_OFFSET                 12u

#define  GD_VGTH_MEAS_EN_MASK            (0x1u << GD_VGTH_MEAS_EN_OFFSET)
#define  GD_STO_2STO_CURR_MASK           (0x3u << GD_STO_2STO_CURR_OFFSET)
#define  GD_DESAT_ICHG_MASK              (0x3u << GD_DESAT_ICHG_OFFSET)
#define  GD_DESAT_SC_TH_MASK             (0x7u << GD_DESAT_SC_TH_OFFSET)
#define  GD_DESAT_SCP_DG_EN_MASK         (0x1u << GD_DESAT_SCP_DG_EN_OFFSET)
#define  GD_OC_TH_MASK                   (0x7u << GD_OC_TH_OFFSET)
#define  GD_SC_BLK_MASK                  (0xFu << GD_SC_BLK_OFFSET)

typedef enum {
	GD_VGTH_MEAS_NO    = 0,
	GD_VGTH_MEAS_YES   = 1
}GD_VGTH_MEAS_EN_type;

typedef enum {
    GD_PULLDOWN_CUR_0_3A = 0,
	GD_PULLDOWN_CUR_0_6A = 1,
	GD_PULLDOWN_CUR_0_9A = 2,
	GD_PULLDOWN_CUR_1_2A = 3
}GD_STO_2STO_CURR_type;

typedef enum {
    GD_BLANK_CAP_CHRG_CUR_500uA  = 0,
    GD_BLANK_CAP_CHRG_CUR_1000uA = 1,
    GD_BLANK_CAP_CHRG_CUR_1500uA = 2,
    GD_BLANK_CAP_CHRG_CUR_2000uA = 3
}GD_DESAT_ICHG_type;

typedef enum {
    /*If DESAT enabled (DESAT_SCP_SEL = 00b) Selects the threshold for the DESAT function*/
    GD_DESAT_SCP_VTH_4V  = 0,  
    GD_DESAT_SCP_VTH_6V  = 1,
    GD_DESAT_SCP_VTH_8V  = 2,
    GD_DESAT_SCP_VTH_10V = 3,
    GD_DESAT_SCP_VTH_11V = 4,
    GD_DESAT_SCP_VTH_12V = 5,
    GD_DESAT_SCP_VTH_13V = 6,
    GD_DESAT_SCP_VTH_14V = 7,
    /*If SC enabled (DESAT_SCP_SEL = 01b) Selects the threshold for the short circuit protection function*/
    GD_DESAT_SCP_VTH_0V25  = 0,  
    GD_DESAT_SCP_VTH_0V5   = 1,
    GD_DESAT_SCP_VTH_0V6   = 2,
    GD_DESAT_SCP_VTH_0V75  = 3,
    GD_DESAT_SCP_VTH_1V    = 4,
    GD_DESAT_SCP_VTH_1V25  = 5,
    GD_DESAT_SCP_VTH_1V5   = 6,
    GD_DESAT_SCP_VTH_2V    = 7

}GD_DESAT_SC_TH_type;

typedef enum {
    GD_DESAT_SCP_DG_disable = 0,
    GD_DESAT_SCP_DG_enable  = 1
}GD_DESAT_SCP_DG_EN_type;

typedef enum {
    GD_OCD_VTH_0p25V  = 0,
    GD_OCD_VTH_0p5V   = 1,
    GD_OCD_VTH_0p6V   = 2,
    GD_OCD_VTH_0p75V  = 3,
    GD_OCD_VTH_1V     = 4,
    GD_OCD_VTH_1p25V  = 5,
    GD_OCD_VTH_1p5V   = 6,
    GD_OCD_VTH_2V     = 7
}GD_OC_TH_type;

typedef enum {
    GD_SCD_BLANK_TIME_0p087us  = 0,
    GD_SCD_BLANK_TIME_0p122us  = 1,
    GD_SCD_BLANK_TIME_0p198us  = 2,
    GD_SCD_BLANK_TIME_0p228us  = 3,
    GD_SCD_BLANK_TIME_0p298us  = 4,
    GD_SCD_BLANK_TIME_0p333us  = 5,
    GD_SCD_BLANK_TIME_0p403us  = 6,
    GD_SCD_BLANK_TIME_0p508us  = 7,
	GD_SCD_BLANK_TIME_0p614us  = 8,
    GD_SCD_BLANK_TIME_1us      = 9,
    GD_SCD_BLANK_TIME_1p526us  = 10,
    GD_SCD_BLANK_TIME_5p035us  = 11,
	GD_SCD_BLANK_TIME_10p017us_1 = 12,
	GD_SCD_BLANK_TIME_10p017us_2 = 13,
	GD_SCD_BLANK_TIME_10p017us_3 = 14,
	GD_SCD_BLANK_TIME_10p017us_4 = 15
}GD_SC_BLK_type;


/* GD CFG4 Register bit definitions:*/
struct  GD_CFG4_REG_BITS
{                                      /* bit     description*/
    uint16   GD_DOUT_CH_SEL       : 3; /*  2:0*/
    uint16   GD_DOUT_FREQ         : 1; /*  3*/
    uint16   GD_IZTC_EN           : 1; /*  4*/
    uint16   GD_VCECLP_EN         : 1; /*  5*/
    uint16   GD_STO_STO_SEL2      : 2; /*  7:6*/
    uint16   GD_VCE_CLMP_HLD_TIME : 2; /*  9:8*/
    uint16   GD_MCLP_EXT_EN       : 1; /* 10*/
    uint16   GD_STO_TIME2         : 5; /* 15:11*/
};

typedef union  {
    uint16                      all;
    struct GD_CFG4_REG_BITS bit;
} GD_CFG4_REG;

#define  GD_DOUT_CH_SEL_OFFSET            0u
#define  GD_DOUT_FREQ_OFFSET              3u
#define  GD_IZTC_EN_OFFSET                4u
#define  GD_VCECLP_EN_OFFSET              5u
#define  GD_STO_STO_SEL2_OFFSET           6u
#define  GD_VCE_CLMP_HLD_TIME_OFFSET      8u
#define  GD_MCLP_EXT_EN_OFFSET            10u
#define  GD_STO_TIME2_OFFSET              11u

#define  GD_DOUT_CH_SEL_MASK            (0x7u << GD_DOUT_CH_SEL_OFFSET)
#define  GD_DOUT_FREQ_MASK              (0x1u << GD_DOUT_FREQ_OFFSET)
#define  GD_IZTC_EN_MASK                (0x1u << GD_IZTC_EN_OFFSET)
#define  GD_VCECLP_EN_MASK              (0x1u << GD_VCECLP_EN_OFFSET)
#define  GD_STO_STO_SEL2_MASK           (0x3u << GD_STO_STO_SEL2_OFFSET)
#define  GD_VCE_CLMP_HLD_TIME_MASK      (0x3u << GD_VCE_CLMP_HLD_TIME_OFFSET)
#define  GD_MCLP_EXT_EN_MASK            (0x1u << GD_MCLP_EXT_EN_OFFSET)
#define  GD_STO_TIME2_MASK              (0x1F << GD_STO_TIME2_OFFSET)

typedef enum {
    GD_DOUT_CH_DIS  = 0,
    GD_DOUT_CH_AI1  = 1,
	GD_DOUT_CH_AI2  = 2,
    GD_DOUT_CH_GTDRV_TEMP  = 3,
	GD_DOUT_CH_VCC2  = 4,
    GD_DOUT_CH_DESAT  = 5
}GD_DOUT_CH_SEL_type;

typedef enum {
    GD_FREQ_DOUT_13p9KHz  = 0,
    GD_FREQ_DOUT_111p4KHz = 1
}GD_DOUT_FREQ_type;

typedef enum {
    GD_IZTC_disable = 0,
    GD_IZTC_enable  = 1
}GD_IZTC_EN_type;

typedef enum {
    GD_VCE_CLAMP_disable = 0,
    GD_VCE_CLAMP_enable  = 1
}GD_VCECLP_EN_type;

typedef enum {
    GD_STO_STO2_0  = 0,
    GD_STO_STO2_1  = 1,
	GD_STO_STO2_2  = 2,  /*Disabled*/
    GD_STO_STO2_3  = 3   /*Disabled*/

}GD_STO_STO_SEL2_type;

typedef enum {
    GD_VCE_CLAMP_HOLD_TIME_100ns = 0,
    GD_VCE_CLAMP_HOLD_TIME_200ns = 1,
    GD_VCE_CLAMP_HOLD_TIME_303ns = 2,
    GD_VCE_CLAMP_HOLD_TIME_408ns = 3
}GD_VCE_CLMP_HLD_TIME_type;

typedef enum {
    GD_MCLP_EXT_Internal = 0,
    GD_MCLP_EXT_External = 1
}GD_MCLP_EXT_EN_type;


typedef enum {
    GD_STO_TIME2_0p122us  = 0,
    GD_STO_TIME2_0p157us  = 1,
	GD_STO_TIME2_0p228us  = 2,
    GD_STO_TIME2_0p263us  = 3,
    GD_STO_TIME2_0p333us  = 4,
	GD_STO_TIME2_0p368us  = 5,
	GD_STO_TIME2_0p403us  = 6,
	GD_STO_TIME2_0p473us  = 7,
	GD_STO_TIME2_0p508us  = 8,
	GD_STO_TIME2_0p578us  = 9,
    GD_STO_TIME2_0p614us  = 10,
	GD_STO_TIME2_0p684us  = 11,
	GD_STO_TIME2_0p719us  = 12,
	GD_STO_TIME2_0p754us  = 13,
	GD_STO_TIME2_0p824us  = 14,
	GD_STO_TIME2_0p859us  = 15,
	GD_STO_TIME2_0p929us  = 16,
	GD_STO_TIME2_0p964us  = 17,
	GD_STO_TIME2_1p035us  = 18,
	GD_STO_TIME2_1p210us  = 19,
	GD_STO_TIME2_1p421us  = 20,
	GD_STO_TIME2_1p631us  = 21,
	GD_STO_TIME2_1p807us  = 22,
	GD_STO_TIME2_2p017us  = 23,
	GD_STO_TIME2_2p228us  = 24,
    GD_STO_TIME2_2p438us  = 25,
	GD_STO_TIME2_2p614us  = 26,
	GD_STO_TIME2_3p035us  = 27,
	GD_STO_TIME2_3p526us  = 28,
	GD_STO_TIME2_4p017us  = 29,
	GD_STO_TIME2_6p017us  = 30,
	GD_STO_TIME2_10p052us = 31
}GD_STO_TIME2_type;

/* GD CFG5 Register bit definitions:*/
struct  GD_CFG5_REG_BITS
{                                  /* bit     description*/
    uint16   GD_RESERVED_CFG5_0 : 1; /*  0*/
    uint16   GD_IZTC_SEL        : 2; /*  2:1*/
    uint16   GD_ADC_OFF_CH1_SEL : 1; /*  3*/
    uint16   GD_ADC_OFF_CH2_SEL : 1; /*  4*/
    uint16   GD_ADC_OFF_TEMP_SEL: 1; /*  5*/
    uint16   GD_ADC_OFF_VCC2_SEL: 1; /*  6*/
    uint16   GD_ADC_ON_CH1_SEL  : 1; /*  7*/
    uint16   GD_ADC_ON_CH2_SEL  : 1; /*  8*/
    uint16   GD_ADC_ON_TEMP_SEL : 1; /*  9*/
    uint16   GD_ADC_ON_VCC2_SEL : 1; /* 10*/
    uint16   GD_ADC_ON_DESAT_SEL: 1; /* 11*/
    uint16   GD_ADC_SAMP_DLY    : 2; /* 13:12*/
    uint16   GD_ADC_SAMP_MODE   : 2; /* 15:14*/
};

typedef union
{
    uint16                      all;
    struct GD_CFG5_REG_BITS bit;
} GD_CFG5_REG;

#define  GD_IZTC_SEL_OFFSET               1u
#define  GD_ADC_OFF_CH1_SEL_OFFSET        3u
#define  GD_ADC_OFF_CH2_SEL_OFFSET        4u
#define  GD_ADC_OFF_TEMP_SEL_OFFSET       5u
#define  GD_ADC_OFF_VCC2_SEL_OFFSET       6u
#define  GD_ADC_ON_CH1_SEL_OFFSET         7u
#define  GD_ADC_ON_CH2_SEL_OFFSET         8u
#define  GD_ADC_ON_TEMP_SEL_OFFSET        9u
#define  GD_ADC_ON_VCC2_SEL_OFFSET        10u
#define  GD_ADC_ON_DESAT_SEL_OFFSET       11u
#define  GD_ADC_SAMP_DLY_OFFSET           12u
#define  GD_ADC_SAMP_MODE_OFFSET          14u

#define  GD_IZTC_SEL_MASK               (0x1u << GD_IZTC_SEL_OFFSET)
#define  GD_ADC_OFF_CH1_SEL_MASK        (0x3u << GD_ADC_OFF_CH1_SEL_OFFSET)
#define  GD_ADC_OFF_CH2_SEL_MASK        (0x1u << GD_ADC_OFF_CH2_SEL_OFFSET)
#define  GD_ADC_OFF_TEMP_SEL_MASK       (0x1u << GD_ADC_OFF_TEMP_SEL_OFFSET)
#define  GD_ADC_OFF_VCC2_SEL_MASK       (0x1u << GD_ADC_OFF_VCC2_SEL_OFFSET)
#define  GD_ADC_ON_CH1_SEL_MASK         (0x1u << GD_ADC_ON_CH1_SEL_OFFSET)
#define  GD_ADC_ON_CH2_SEL_MASK         (0x1u << GD_ADC_ON_CH2_SEL_OFFSET)
#define  GD_ADC_ON_TEMP_SEL_MASK        (0x1u << GD_ADC_ON_TEMP_SEL_OFFSET)
#define  GD_ADC_ON_VCC2_SEL_MASK        (0x1u << GD_ADC_ON_VCC2_SEL_OFFSET)
#define  GD_ADC_ON_DESAT_SEL_MASK       (0x1u << GD_ADC_ON_DESAT_SEL_OFFSET)
#define  GD_ADC_SAMP_DLY_MASK           (0x3u << GD_ADC_SAMP_DLY_OFFSET)
#define  GD_ADC_SAMP_MODE_MASK          (0x3u << GD_ADC_SAMP_MODE_OFFSET)

typedef enum {
    GD_ZERO_TC_100uA  = 0,
    GD_ZERO_TC_300uA  = 1,
	GD_ZERO_TC_600uA  = 2,
	GD_ZERO_TC_1000uA = 3
}GD_IZTC_SEL_type;

typedef enum {
    GD_ADC_OFF_CH1_DISABLED = 0,
    GD_ADC_OFF_CH1_ENABLED  = 1
}GD_ADC_OFF_CH1_SEL_type;

typedef enum {
    GD_ADC_OFF_CH2_DISABLED = 0,
    GD_ADC_OFF_CH2_ENABLED  = 1
}GD_ADC_OFF_CH2_SEL_type;

typedef enum {
    GD_ADC_OFF_TEMP_DISABLED = 0,
    GD_ADC_OFF_TEMP_ENABLED  = 1
}GD_ADC_OFF_TEMP_SEL_type;

typedef enum {
    GD_ADC_OFF_VCC2_DISABLED = 0,
    GD_ADC_OFF_VCC2_ENABLED  = 1
}GD_ADC_OFF_VCC2_SEL_type;

typedef enum {
    GD_ADC_ON_CH1_DISABLED = 0,
    GD_ADC_ON_CH1_ENABLED  = 1
}GD_ADC_ON_CH1_SEL_type;

typedef enum {
    GD_ADC_ON_CH2_DISABLED = 0,
    GD_ADC_ON_CH2_ENABLED  = 1
}GD_ADC_ON_CH2_SEL_type;

typedef enum {
    GD_ADC_ON_TEMP_DISABLED = 0,
    GD_ADC_ON_TEMP_ENABLED  = 1
}GD_ADC_ON_TEMP_SEL_type;

typedef enum {
    GD_ADC_ON_VCC2_DISABLED = 0,
    GD_ADC_ON_VCC2_ENABLED  = 1
}GD_ADC_ON_VCC2_SEL_type;

typedef enum {
    GD_ADC_ON_DESAT_DISABLED = 0,
    GD_ADC_ON_DESAT_ENABLED  = 1
}GD_ADC_ON_DESAT_SEL_type;

typedef enum {
    GD_ADC_SAMP_DELAY_280ns  = 0,
    GD_ADC_SAMP_DELAY_560ns  = 1,
    GD_ADC_SAMP_DELAY_840ns  = 2,
    GD_ADC_SAMP_DELAY_1120ns = 3
}GD_ADC_SAMP_DLY_type;

typedef enum {
    GD_ADC_SAMP_Disabled    = 0,
    GD_ADC_SAMP_Center      = 1,
    GD_ADC_SAMP_Edge        = 2,
    GD_ADC_SAMP_Continuous  = 3
}GD_ADC_SAMP_MODE_type;

/* GD CFG6 Register bit definitions:*/
struct  GD_CFG6_REG_BITS
{                                      /* bit     description*/
    uint16   GD_OC_BLK                 : 3;     /*  2:0*/
    uint16   GD_RESERVED_CFG6_6_TO_8   : 6;     /*  8:3*/
    uint16   GD_RESERVED_CFG6_9_TO_15  : 6;     /* 15:9*/
};

typedef union  {
    uint16                      all;
    struct GD_CFG6_REG_BITS bit;
} GD_CFG6_REG;

#define  GD_OC_BLK_OFFSET               0u
#define  GD_OC_BLK_MASK               (0x7u << GD_OC_BLK_OFFSET)

typedef enum {
    GD_OCD_BLANK_TIME_0p49us = 0,
    GD_OCD_BLANK_TIME_1p015us = 1,
    GD_OCD_BLANK_TIME_1p505us = 2,
    GD_OCD_BLANK_TIME_1p995us = 3,
    GD_OCD_BLANK_TIME_2p485us = 4,
    GD_OCD_BLANK_TIME_3p010us = 5,
    GD_OCD_BLANK_TIME_5p005us = 6,
    GD_OCD_BLANK_TIME_10p010us = 7
}GD_OC_BLK_type;

/* GD ACT1 Register bit definitions:*/
struct  GD_ACT1_REG_BITS
{                                       /* bit     description*/
    uint16   GD_CFG_CRC_ACT        : 2; /*  1:0*/
    uint16   GD_SPI_ACT            : 2; /*  3:2*/
    uint16   GD_ADC_ACT            : 2; /*  5:4*/
    uint16   GD_OVUV3_ACT          : 2; /*  7:6*/
    uint16   GD_UVLO2_ACT          : 2; /*  9:8*/
    uint16   GD_OVLO2_ACT          : 2; /* 11:10*/
    uint16   GD_UVLO1_ACT          : 2; /* 13:12*/
    uint16   GD_OVLO1_ACT          : 2; /* 15:14*/
};

typedef union  {
    uint16                      all;
    struct GD_ACT1_REG_BITS bit;
} GD_ACT1_REG;

#define  GD_CFG_CRC_ACT_MASK               (0x3u << GD_CFG_CRC_ACT_OFFSET)
#define  GD_SPI_ACT_MASK                   (0x3u << GD_SPI_ACT_OFFSET)
#define  GD_ADC_ACT_MASK                   (0x3u << GD_ADC_ACT_OFFSET)
#define  GD_OVUV3_ACT_MASK                 (0x3u << GD_OVUV3_ACT_OFFSET)
#define  GD_UVLO2_ACT_MASK                 (0x3u << GD_UVLO2_ACT_OFFSET)
#define  GD_OVLO2_ACT_MASK                 (0x3u << GD_OVLO2_ACT_OFFSET)
#define  GD_UVLO1_ACT_MASK                 (0x3u << GD_UVLO1_ACT_OFFSET)
#define  GD_OVLO1_ACT_MASK                 (0x3u << GD_OVLO1_ACT_OFFSET)

#define  GD_CFG_CRC_ACT_OFFSET               0u
#define  GD_SPI_ACT_OFFSET                   2u
#define  GD_ADC_ACT_OFFSET                   4u
#define  GD_OVUV3_ACT_OFFSET                 6u
#define  GD_UVLO2_ACT_OFFSET                 8u
#define  GD_OVLO2_ACT_OFFSET                 10u
#define  GD_UVLO1_ACT_OFFSET                 12u
#define  GD_OVLO1_ACT_OFFSET                 14u

typedef enum {
    GD_CFG_CRC_Disabled      = 0,
    GD_CFG_CRC_FLT_nFLT1     = 1,
    GD_CFG_CRC_FLT_nFLT2     = 2,
    GD_CFG_CRC_FLT_nFLT1_OUT = 3
}GD_CFG_CRC_ACT_type;

typedef enum {
    GD_SPI_Disabled      = 0,
    GD_SPI_FLT_nFLT1     = 1,
    GD_SPI_FLT_nFLT2     = 2,
    GD_SPI_FLT_nFLT1_OUT = 3
}GD_SPI_ACT_type;

typedef enum {
	GD_ADC_Disabled      = 0,
	GD_ADC_FLT_nFLT1     = 1,
	GD_ADC_FLT_nFLT2     = 2,
	GD_ADC_FLT_nFLT1_OUT = 3
}GD_ADC_ACT_type;

typedef enum {
	GD_OVUV3_Disabled      = 0,
	GD_OVUV3_FLT_nFLT1     = 1,
	GD_OVUV3_FLT_nFLT2     = 2,
	GD_OVUV3_FLT_nFLT1_OUT = 3
}GD_OVUV3_ACT_type;

typedef enum {
	GD_UVLO2_Disabled      = 0,
	GD_UVLO2_FLT_nFLT1     = 1,
	GD_UVLO2_FLT_nFLT2     = 2,
	GD_UVLO2_FLT_nFLT1_OUT = 3
}GD_UVLO2_ACT_type;

typedef enum {
	GD_OVLO2_Disabled      = 0,
	GD_OVLO2_FLT_nFLT1     = 1,
	GD_OVLO2_FLT_nFLT2     = 2,
	GD_OVLO2_FLT_nFLT1_OUT = 3
}GD_OVLO2_ACT_type;

typedef enum {
	GD_UVLO1_Disabled      = 0,
	GD_UVLO1_FLT_nFLT1     = 1,
	GD_UVLO1_FLT_nFLT2     = 2,
	GD_UVLO1_FLT_nFLT1_OUT = 3
}GD_UVLO1_ACT_type;

typedef enum {
	GD_OVLO1_Disabled      = 0,
	GD_OVLO1_FLT_nFLT1     = 1,
	GD_OVLO1_FLT_nFLT2     = 2,
	GD_OVLO1_FLT_nFLT1_OUT = 3
}GD_OVLO1_ACT_type;

/* GD ACT2 Register bit definitions: */
struct  GD_ACT2_REG_BITS
{                                        /* bit     description*/
    uint16   GD_SC_DESAT_ACT     : 2;    /*   1:0*/
    uint16   GD_INT_COMM_ACT     : 2;    /*   3:2*/
    uint16   GD_PWM_LANE_ACT     : 2;    /*   5:4*/
    uint16   GD_STP_ACT          : 2;    /*   7:6*/
    uint16   GD_RESERVED_ACT2_8  : 1;    /*   8*/
    uint16   GD_OC_ACT           : 2;    /*  10:9*/
    uint16   GD_CLK_MON_ACT      : 1;    /*  11*/
    uint16   GD_TWN_ACT          : 2;    /*  13:12*/
    uint16   GD_TRIM_CRC_ACT     : 1;    /*  14*/
    uint16   GD_INT_REG_ACT      : 1;    /*  15*/
};

typedef union  {
    uint16                      all;
    struct GD_ACT2_REG_BITS bit;
} GD_ACT2_REG;

#define  GD_SC_DESAT_ACT_OFFSET            0u
#define  GD_INT_COMM_ACT_OFFSET            2u
#define  GD_PWM_LANE_ACT_OFFSET            4u
#define  GD_STP_ACT_OFFSET                 6u
#define  GD_OC_ACT_OFFSET                  9u
#define  GD_CLK_MON_ACT_OFFSET             11u
#define  GD_TWN_ACT_OFFSET                 12u
#define  GD_TRIM_CRC_ACT_OFFSET            14u
#define  GD_INT_REG_ACT_OFFSET             15u

#define  GD_SC_DESAT_ACT_MASK            (0x3u << GD_SC_DESAT_ACT_OFFSET)
#define  GD_INT_COMM_ACT_MASK            (0x3u << GD_INT_COMM_ACT_OFFSET)
#define  GD_PWM_LANE_ACT_MASK            (0x3u << GD_PWM_LANE_ACT_OFFSET)
#define  GD_STP_ACT_MASK                 (0x3u << GD_STP_ACT_OFFSET)
#define  GD_OC_ACT_MASK                  (0x3u << GD_OC_ACT_OFFSET)
#define  GD_CLK_MON_ACT_MASK             (0x1u << GD_CLK_MON_ACT_OFFSET)
#define  GD_TWN_ACT_MASK                 (0x3u << GD_TWN_ACT_OFFSET)
#define  GD_TRIM_CRC_ACT_MASK            (0x1u << GD_TRIM_CRC_ACT_OFFSET)
#define  GD_INT_REG_ACT_MASK             (0x1u << GD_INT_REG_ACT_OFFSET)

typedef enum {
	GD_SC_DESAT_Disabled      = 0u,
	GD_SC_DESAT_FLT_nFLT1     = 1u,
	GD_SC_DESAT_FLT_nFLT2     = 2u,
	GD_SC_DESAT_FLT_nFLT1_OUT = 3u
}GD_SC_DESAT_ACT_type;

typedef enum {
	GD_INT_COMM_Disabled      = 0u,
	GD_INT_COMM_FLT_nFLT1     = 1u,
	GD_INT_COMM_FLT_nFLT2     = 2u,
	GD_INT_COMM_FLT_nFLT1_OUT = 3u
}GD_INT_COMM_ACT_type;

typedef enum {
	GD_PWM_LANE_Disabled      = 0u,
	GD_PWM_LANE_FLT_nFLT1     = 1u,
	GD_PWM_LANE_FLT_nFLT2     = 2u,
	GD_PWM_LANE_FLT_nFLT1_OUT = 3u
}GD_PWM_LANE_ACT_type;

typedef enum {
	GD_STP_Disabled      = 0u,
	GD_STP_FLT_nFLT1     = 1u,
	GD_STP_FLT_nFLT2     = 2u,
	GD_STP_FLT_nFLT1_OUT = 3u
}GD_STP_ACT_type;

typedef enum {
	GD_OC_Disabled      = 0u,
	GD_OC_FLT_nFLT1     = 1u,
	GD_OC_FLT_nFLT2     = 2u,
	GD_OC_FLT_nFLT1_OUT = 3u
}GD_OC_ACT_type;

typedef enum {
	GD_CLK_MON_FLT           = 0u,
	GD_CLK_MON_FLT_nFLT1_OUT = 1u
}GD_CLK_MON_ACT_type;

typedef enum {
	GD_TWN_Disabled      = 0u,
	GD_TWN_FLT_nFLT1     = 1u,
	GD_TWN_FLT_nFLT2     = 2u,
	GD_TWN_FLT_nFLT1_OUT = 3u
}GD_TWN_ACT_type;

typedef enum {
	GD_TRIM_CRC_Disabled      = 0u,
	GD_TRIM_CRC_FLT_nFLT1_OUT = 1u
}GD_TRIM_CRC_ACT_type;

typedef enum {
	GD_INT_REG_FLT           = 0u,
	GD_INT_REG_FLT_nFLT1_OUT = 1u
}GD_INT_REG_ACT_type;

/* GD ACT3 Register bit definitions:*/
struct  GD_ACT3_REG_BITS
{                                              /* bit     description*/
    uint16   GD_RESERVED_ACT3_0_TO_8           : 9;  /*   8:0*/
    uint16   GD_RESERVED_ACT3_9_TO_12          : 4;  /*  12:9*/
    uint16   GD_GM_ACT                         : 3;  /*  15:13*/
};

typedef union  {
    uint16                      all;
    struct GD_ACT3_REG_BITS bit;
} GD_ACT3_REG;

#define  GD_GM_ACT_OFFSET           13u
#define  GD_GM_ACT_MASK            (0x7u << GD_GM_ACT_OFFSET)

typedef enum {
    GD_GM_FAULT_Disabled   = 0,
    GD_GM_FAULT_nFLT1      = 1,
    GD_GM_FAULT_nFLT2      = 2,
    GD_GM_FAULT_nFLT1_OUTL = 3,
	GD_GM_FAULT_nFLT1_OUTH = 4
}GD_GM_ACT_type;

/* GD DIGCOMP1 Register bit definitions:*/
struct  GD_DIGCOMP1_REG_BITS
{                                           /* bit     description*/
    uint16   GD_RESERVED_DIGCOMP1_0_TO_1  : 2; /*   1:0*/
    uint16   GD_DCOMP1_DEGLITCH           : 2; /*   3:2*/
    uint16   GD_DCOMP1_ACT                : 2; /*   5:4*/
    uint16   GD_DCOMP1_DIR                : 1; /*   6*/
    uint16   GD_DCOMP1_EN                 : 1; /*   7*/
    uint16   GD_THRESH_AI1                : 8; /*  15:8*/
};

typedef union  {
    uint16                       all;
    struct GD_DIGCOMP1_REG_BITS bit;
} GD_DIGCOMP1_REG;

#define  GD_DCOMP1_DEGLITCH_OFFSET       2u
#define  GD_DCOMP1_ACT_OFFSET            4u
#define  GD_DCOMP1_DIR_OFFSET            6u
#define  GD_DCOMP1_EN_OFFSET             7u
#define  GD_THRESH_AI1_OFFSET            8u

#define  GD_DCOMP1_DEGLITCH_MASK       (0x3u << GD_DCOMP1_DEGLITCH_OFFSET)
#define  GD_DCOMP1_ACT_MASK            (0x3u << GD_DCOMP1_ACT_OFFSET)
#define  GD_DCOMP1_DIR_MASK            (0x1u << GD_DCOMP1_DIR_OFFSET)
#define  GD_DCOMP1_EN_MASK             (0x1u << GD_DCOMP1_EN_OFFSET)
#define  GD_THRESH_AI1_MASK            (0xFFu << GD_THRESH_AI1_OFFSET)

typedef enum {
	GD_DCOMP1_DEGLITCH_1 = 0,
	GD_DCOMP1_DEGLITCH_2 = 1,
	GD_DCOMP1_DEGLITCH_3 = 2,
	GD_DCOMP1_DEGLITCH_4 = 3
}GD_DCOMP1_DEGLITCH_type;

typedef enum {
	GD_THRESH_AI1_1 = 0,
	GD_THRESH_AI1_2 = 1,
}GD_THRESH_AI1_type;

typedef enum {
	GD_DCOMP1_Disabled      = 0,
	GD_DCOMP1_FLT_nFLT1     = 1,
	GD_DCOMP1_FLT_nFLT2     = 2,
	GD_DCOMP1_FLT_nFLT1_OUT = 3
}GD_DCOMP1_ACT_type;

typedef enum {
	GD_DCOMP1_FAULT_LTHRESH  = 0,
	GD_DCOMP1_FAULT_HTHRESH  = 1
}GD_DCOMP1_DIR_type;

typedef enum {
	GD_DCOMP1_DISABLED = 0,
	GD_DCOMP1_ENABLED  = 1
}GD_DCOMP1_EN_type;

/* GD DIGCOMP2 Register bit definitions:*/
struct  GD_DIGCOMP2_REG_BITS
{                                                 /* bit     description*/
    uint16   GD_RESERVED_DIGCOMP2_0_TO_1    : 2;  /*   1:0*/
    uint16   GD_DCOMP2_DEGLITCH             : 2;  /*   3:2*/
    uint16   GD_DCOMP2_ACT                  : 2;  /*   5:4*/
    uint16   GD_DCOMP2_DIR                  : 1;  /*   6*/
    uint16   GD_DCOMP2_EN                   : 1;  /*   7*/
    uint16   GD_THRESH_AI2                  : 8;  /*  15:8*/
};

typedef union  {
    uint16                       all;
    struct GD_DIGCOMP2_REG_BITS bit;
} GD_DIGCOMP2_REG;

#define  GD_DCOMP2_DEGLITCH_OFFSET       2u
#define  GD_DCOMP2_ACT_OFFSET            4u
#define  GD_DCOMP2_DIR_OFFSET            6u
#define  GD_DCOMP2_EN_OFFSET             7u
#define  GD_THRESH_AI2_OFFSET            8u

#define  GD_DCOMP2_DEGLITCH_MASK       (0x3u << GD_DCOMP2_DEGLITCH_OFFSET)
#define  GD_DCOMP2_ACT_MASK            (0x3u << GD_DCOMP2_ACT_OFFSET)
#define  GD_DCOMP2_DIR_MASK            (0x1u << GD_DCOMP2_DIR_OFFSET)
#define  GD_DCOMP2_EN_MASK             (0x1u << GD_DCOMP2_EN_OFFSET)
#define  GD_THRESH_AI2_MASK            (0xFFu << GD_THRESH_AI2_OFFSET)

typedef enum {
	GD_DCOMP2_DEGLITCH_1 = 0,
	GD_DCOMP2_DEGLITCH_2 = 1,
	GD_DCOMP2_DEGLITCH_3 = 2,
	GD_DCOMP2_DEGLITCH_4 = 3
}GD_DCOMP2_DEGLITCH_type;

typedef enum {
	GD_DCOMP2_Disabled      = 0,
	GD_DCOMP2_FLT_nFLT1     = 1,
	GD_DCOMP2_FLT_nFLT2     = 2,
	GD_DCOMP2_FLT_nFLT1_OUT = 3
}GD_DCOMP2_ACT_type;

typedef enum {
	GD_DCOMP2_FAULT_LTHRESH  = 0,
	GD_DCOMP2_FAULT_HTHRESH  = 1
}GD_DCOMP2_DIR_type;


typedef enum {
	GD_DCOMP2_DISABLED = 0,
	GD_DCOMP2_ENABLED  = 1
}GD_DCOMP2_EN_type;

typedef enum {
	GD_THRESH_AI2_1 = 0,
	GD_THRESH_AI2_2 = 1,
}GD_THRESH_AI2_type;

/* GD ADC1 Register bit definitions:*/
struct  GD_ADC1_REG_BITS
{                                       /* bit     description*/
    uint16  GD_NEWDATA1                 : 1;     /*   0*/
    uint16  GD_RESERVED_ADC1_1_TO_5     : 5;     /*   5:1*/
    uint16  GD_ADCDATA1                 :10;     /*  15:6*/
};

typedef union  {
    uint16                  all;
    struct GD_ADC1_REG_BITS bit;
} GD_ADC1_REG;

enum {
	GD_ADC1_ODATA     = 0,
	GD_ADC1_NRD_DATA  = 1
};

/* GD ADC2 Register bit definitions:*/
struct  GD_ADC2_REG_BITS
{                                       /* bit     description*/
    uint16  GD_NEWDATA2                 : 1;     /*   0*/
    uint16  GD_RESERVED_ADC2_1_TO_5     : 5;     /*   5:1*/
    uint16  GD_ADCDATA2                 :10;     /*  15:6*/
};

typedef union  {
    uint16                          all;
    struct GD_ADC2_REG_BITS bit;
} GD_ADC2_REG;

enum {
	GD_ADC2_ODATA     = 0,
	GD_ADC2_NRD_DATA  = 1
};

/* GD ADC3 Register bit definitions:*/
struct  GD_ADC3_REG_BITS
{                                       /* bit     description*/
    uint16  GD_NEWDATA3                 : 1;     /*   0*/
    uint16  GD_RESERVED_ADC3_1_TO_5     : 5;     /*   5:1*/
    uint16  GD_ADCDATA3                 :10;     /*  15:6*/
};

typedef union  {
    uint16                          all;
    struct GD_ADC3_REG_BITS bit;
} GD_ADC3_REG;

enum {
	GD_ADC3_ODATA     = 0,
	GD_ADC3_NRD_DATA  = 1
};

/* GD ADC4 Register bit definitions:*/
struct  GD_ADC4_REG_BITS
{                                       /* bit     description*/
    uint16  GD_NEWDATA4                 : 1;     /*   0*/
    uint16  GD_RESERVED_ADC4_1_TO_5     : 5;     /*   5:1*/
    uint16  GD_ADCDATA4                 :10;     /*  15:6*/
};

typedef union  {
    uint16                          all;
    struct GD_ADC4_REG_BITS bit;
} GD_ADC4_REG;

enum {
	GD_ADC4_ODATA     = 0,
	GD_ADC4_NRD_DATA  = 1
};

/* GD ADC5 Register bit definitions:*/
struct  GD_ADC5_REG_BITS
{                                       /* bit     description*/
    uint16  GD_NEWDATA5                 : 1;     /*   0*/
    uint16  GD_RESERVED_ADC5_1_TO_5     : 5;     /*   5:1*/
    uint16  GD_ADCDATA5                 :10;     /*  15:6*/
};

typedef union  {
    uint16                          all;
    struct GD_ADC5_REG_BITS bit;
} GD_ADC5_REG;

enum {
	GD_ADC5_ODATA     = 0,
	GD_ADC5_NRD_DATA  = 1
};

/* GD ADC6 Register bit definitions:*/
struct  GD_ADC6_REG_BITS
{                                       /* bit     description*/
    uint16  GD_NEWDATA6                 : 1;     /*  0*/
    uint16  GD_RESERVED_ADC6_1_TO_5     : 5;     /*  5:1*/
    uint16  GD_ADCDATA6                 :10;     /* 15:6*/
};

typedef union  {
    uint16                          all;
    struct GD_ADC6_REG_BITS bit;
} GD_ADC6_REG;

enum {
	GD_ADC6_ODATA     = 0,
	GD_ADC6_NRD_DATA  = 1
};

/* GD CRC Register bit definitions:*/
struct  GD_CRC_REG_BITS
{                                  /* bit     description*/
    uint16  GD_CRC_RX     :  8;    /*  7-0*/
    uint16  GD_CRC_TX     :  8;    /* 15-8*/
};

typedef union  {
    uint16                          all;
    struct GD_CRC_REG_BITS bit;
} GD_CRC_REG;

#define  GD_CRC_TX_MASK            (0xFFu << GD_CRC_TX_OFFSET)
#define  GD_CRC_TX_OFFSET           8u

typedef enum {
    GD_TX_DATA_CRC = 255,
}GD_CRC_TX_type;

/* GD STATUS Register bit definitions:*/
struct  GD_STATUS_REG_BITS
{                                     /* bit     description*/
    uint16  GD_OR_NFLT2      :  1;    /*  0*/
    uint16  GD_OR_NFLT1      :  1;    /*  1*/
    uint16  GD_SEC_RDY       :  1;    /*  2*/
    uint16  GD_PRI_RDY       :  1;    /*  3*/
    uint16  GD_VCECLP_ACTIVE :  1;    /*  4*/
    uint16  GD_VCE_STATE     :  1;    /*  5*/
    uint16  GD_MCLP_STATE    :  1;    /*  6*/
    uint16  GD_GM_STATE      :  1;    /*  7*/
    uint16  GD_CFG_STATE     :  1;    /*  8*/
    uint16  GD_ASC_SEC_STATE :  1;    /*  9*/
    uint16  GD_ASC_PRI_STATE :  1;    /* 10*/
    uint16  GD_INN_STATE     :  1;    /* 11*/
    uint16  GD_INP_STATE     :  1;    /* 12*/
    uint16  GD_STATE         :  3;    /* 15:13*/
};

#define  GD_OR_NFLT2_MASK       (1U << GD_OR_NFLT2_OFFSET)       /* 1*/
#define  GD_OR_NFLT1_MASK       (1U << GD_OR_NFLT1_OFFSET)       /* 2*/
#define  GD_SEC_RDY_MASK        (1U << GD_SEC_RDY_OFFSET)        /* 3*/
#define  GD_PRI_RDY_MASK        (1U << GD_PRI_RDY_OFFSET)        /* 4*/
#define  GD_VCECLP_ACTIVE_MASK  (1U << GD_VCECLP_ACTIVE_OFFSET)  /* 5*/
#define  GD_VCE_STATE_MASK      (1U << GD_VCE_STATE_OFFSET)      /* 6*/
#define  GD_MCLP_STATE_MASK     (1U << GD_MCLP_STATE_OFFSET)     /* 7*/
#define  GD_GM_STATE_MASK       (1U << GD_GM_STATE_OFFSET)       /* 8*/
#define  GD_CFG_STATE_MASK      (1U << GD_CFG_STATE_OFFSET)      /*10*/
#define  GD_ASC_SEC_STATE_MASK  (1U << GD_ASC_SEC_STATE_OFFSET)  /*11*/
#define  GD_ASC_PRI_STATE_MASK  (1U << GD_ASC_PRI_STATE_OFFSET)  /*12*/
#define  GD_INN_STATE_MASK      (1U << GD_INN_STATE_OFFSET)      /*13*/
#define  GD_INP_STATE_MASK      (1U << GD_INP_STATE_OFFSET)      /*14*/
#define  GD_STATE_MASK          (1U << GD_STATE_OFFSET)          /*15*/

#define  GD_OR_NFLT2_OFFSET       0       /* 1*/
#define  GD_OR_NFLT1_OFFSET       1       /* 2*/
#define  GD_SEC_RDY_OFFSET        2       /* 3*/
#define  GD_PRI_RDY_OFFSET        3       /* 4*/
#define  GD_VCECLP_ACTIVE_OFFSET  4       /* 5*/
#define  GD_VCE_STATE_OFFSET      5       /* 6*/
#define  GD_MCLP_STATE_OFFSET     6       /* 7*/
#define  GD_GM_STATE_OFFSET       7       /* 8*/
#define  GD_CFG_STATE_OFFSET      8       /*10*/
#define  GD_ASC_SEC_STATE_OFFSET  9       /*11*/
#define  GD_ASC_PRI_STATE_OFFSET  10      /*12*/
#define  GD_INN_STATE_OFFSET      11      /*13*/
#define  GD_INP_STATE_OFFSET      12      /*14*/
#define  GD_STATE_OFFSET          13      /*15*/

typedef union  {
    uint16                          all;
    struct GD_STATUS_REG_BITS bit;
} GD_STATUS_REG;

typedef enum {
    GD_NO_FAULT_STATE = 0,
    GD_FAULT_STATE    = 1
}GD_OR_NFLT2_NFLT1_type;

typedef enum {
    GD_NOT_READY = 0,
    GD_READY     = 1
}GD_PRI_SEC_RDY_type;

typedef enum {
	GD_VCECLP_NOT_ACTIVE = 0,
	GD_VCECLP_ACTIVE     = 1
}GD_VCECLP_ACTIVE_type;

typedef enum {
	GD_VCECLP_BELOW_TH = 0,
	GD_VCECLP_ABOVE_TH     = 1
}GD_VCE_STATE_type;

typedef enum {
	GD_MCLP_OFF = 0,
	GD_MCLP_ON = 1
}GD_MCLP_STATE_type;

typedef enum {
	GD_ACTIVE_MODE = 0,
	GD_CONF_MODE = 1
}GD_CFG_STATE_type;

typedef enum {
    GD_GM_LOW  = 0,
    GD_GM_HIGH = 1
}GD_GM_STATE_type;

typedef enum {
    GD_ASC_SEC_STATE_LOW  = 0,
    GD_ASC_SEC_STATE_HIGH = 1
}GD_ASC_SEC_STATE_type;

typedef enum {
    GD_ASC_PRI_STATE_LOW  = 0,
    GD_ASC_PRI_STATE_HIGH = 1
}GD_ASC_PRI_STATE_type;

typedef enum {
    GD_INN_STATE_LOW  = 0,
    GD_INN_STATE_HIGH = 1
}GD_INN_STATE_type;

typedef enum {
    GD_INP_STATE_LOW  = 0,
    GD_INP_STATE_HIGH = 1
}GD_INP_STATE_type;

typedef enum {
    GD_OUT            = 0,
    GD_OUTL1_OUTH2    = 1,
	GD_OUTL2_OUTH1    = 2,
	GD_OUTL1_OUTH1    = 3,
	GD_OUTL2_OUTH12   = 4,
	GD_OUTL12_OUTH2   = 5,
	GD_OUTL12_OUTH12  = 6,
	GD_RESET          = 7
}GD_OUT_STATE_type;

/* GD FAULT1 Register bit definitions:*/
struct  GD_FAULT1_REG_BITS
{                                            /* bit     description*/
    uint16  GD_RESERVED_FAULT1_0_TO_6        : 7;     /*  6-0*/
    uint16  GD_ADC_FAULT                     : 1;     /*  7*/
    uint16  GD_OC_FAULT                      : 1;     /*  8*/
    uint16  GD_TRIM_CRC_FAULT                : 1;     /*  9*/
    uint16  GD_INT_REG_FAULT                 : 1;     /* 10*/
    uint16  GD_CFG_CRC_FAULT                 : 1;     /* 11*/
    uint16  GD_CLK_MON_FAULT                 : 1;     /* 12*/
    uint16  GD_PWM_LANE_FAULT                : 1;     /* 13*/
    uint16  GD_INT_COMM_FAULT                : 1;     /* 14*/
    uint16  GD_BIST_FAULT                    : 1;     /* 15*/
};

typedef union  {
    uint16                         all;
    struct GD_FAULT1_REG_BITS bit;
} GD_FAULT1_REG;

#define  GD_ADC_FAULT_MASK            (1U << 7)
#define  GD_OC_FAULT_MASK             (1U << 8)
#define  GD_TRIM_CRC_FAULT_MASK       (1U << 9)
#define  GD_INT_REG_FAULT_MASK        (1U << 10)
#define  GD_CFG_CRC_FAULT_MASK        (1U << 11)
#define  GD_CLK_MON_FAULT_MASK        (1U << 12)
#define  GD_PWM_LANE_FAULT_MASK       (1U << 13)
#define  GD_INT_COMM_FAULT_MASK       (1U << 14)
#define  GD_BIST_FAULT_MASK           (1U << 15)
/* GD FAULT2 Register bit definitions:*/
struct  GD_FAULT2_REG_BITS
{                                        /* bit description*/
    uint16  GD_RESERVED_FAULT2_0        : 1;       /* 0*/
    uint16  GD_DIGCOMP2_FAULT           : 1;       /* 1*/
    uint16  GD_DIGCOMP1_FAULT           : 1;       /* 2*/
    uint16  GD_SPI_FAULT                : 1;       /* 3*/
    uint16  GD_STP_FAULT                : 1;       /* 4*/
    uint16  GD_TSD_FAULT                : 1;       /* 5*/
    uint16  GD_TWN_FAULT                : 1;       /* 6*/
    uint16  GD_GM_FAULT                 : 1;       /* 7*/
    uint16  GD_RESERVED_FAULT2_8        : 1;       /* 8*/
    uint16  GD_SC_DESAT_FAULT           : 1;       /* 9*/
    uint16  GD_OVLO3_FAULT              : 1;       /*10*/
    uint16  GD_OVLO2_FAULT              : 1;       /*11*/
    uint16  GD_OVLO1_FAULT              : 1;       /*12*/
    uint16  GD_UVLO3_FAULT              : 1;       /*13*/
    uint16  GD_UVLO2_FAULT              : 1;       /*14*/
    uint16  GD_UVLO1_FAULT              : 1;       /*15*/
};

typedef union  {
    uint16                         all;
    struct GD_FAULT2_REG_BITS bit;
} GD_FAULT2_REG;

#define  GD_DIGCOMP2_FAULT_MASK            (1U << 1)
#define  GD_DIGCOMP1_FAULT_MASK            (1U << 2)
#define  GD_SPI_FAULT_MASK                 (1U << 3)
#define  GD_STP_FAULT_MASK                 (1U << 4)
#define  GD_TSD_FAULT_MASK                 (1U << 5)
#define  GD_TWN_FAULT_MASK                 (1U << 6)
#define  GD_GM_FAULT_MASK                  (1U << 7)
#define  GD_SC_DESAT_FAULT_MASK            (1U << 9)
#define  GD_OVLO3_FAULT_MASK               (1U << 10)
#define  GD_OVLO2_FAULT_MASK               (1U << 11)
#define  GD_OVLO1_FAULT_MASK               (1U << 12)
#define  GD_UVLO3_FAULT_MASK               (1U << 13)
#define  GD_UVLO2_FAULT_MASK               (1U << 14)
#define  GD_UVLO1_FAULT_MASK               (1U << 15)
/* ==================================================================
 GD CONTROL1 Register bit definitions:
*/
struct  GD_CONTROL1_REG_BITS
{                                     /* bit     description*/
    uint16  GD_RESERVED_CONTROL1_0      : 1;  /* 0*/
    uint16  GD_STP_CHK                  : 1;       /* 1*/
    uint16  GD_PWM_LANE_CHK             : 1;       /* 2*/
    uint16  GD_CLR_SPI_CRC              : 1;       /* 3*/
    uint16  GD_DCOMP2_CHK               : 1;       /* 4*/
    uint16  GD_DCOMP1_CHK               : 1;       /* 5*/
    uint16  GD_CFG_CRC_CHK              : 1;       /* 6*/
    uint16  GD_CLK_MON_PRI_CHK          : 1;       /* 7*/
    uint16  GD_CLK_MON_SEC_CHK          : 1;       /* 8*/
    uint16  GD_RESERVED_CONTROL1_9      : 1;       /* 9*/
    uint16  GD_SCP_CHK                  : 1;       /*10*/
    uint16  GD_DESAT_CHK                : 1;       /*11*/
    uint16  GD_OC_CHK                   : 1;       /*12*/
    uint16  GD_GATE_ON_CHK              : 1;       /*13*/
    uint16  GD_GATE_OFF_CHK             : 1;       /*14*/
    uint16  GD_CLR_FAULT                : 1;       /*15*/
};

typedef union  {
    uint16                         all;
    struct GD_CONTROL1_REG_BITS bit;
} GD_CONTROL1_REG;

#define  GD_STP_CHK_OFFSET            1u
#define  GD_PWM_LANE_CHK_OFFSET       2u
#define  GD_CLR_SPI_CRC_OFFSET        3u
#define  GD_DCOMP2_CHK_OFFSET         4u
#define  GD_DCOMP1_CHK_OFFSET         5u
#define  GD_CFG_CRC_CHK_OFFSET        6u
#define  GD_CLK_MON_PRI_CHK_OFFSET    7u
#define  GD_CLK_MON_SEC_CHK_OFFSET    8u
#define  GD_SCP_CHK_OFFSET            10u
#define  GD_DESAT_CHK_OFFSET          11u
#define  GD_OC_CHK_OFFSET             12u
#define  GD_GATE_ON_CHK_OFFSET        13u
#define  GD_GATE_OFF_CHK_OFFSET       14u
#define  GD_CLR_FAULT_OFFSET          15u

#define  GD_STP_CHK_MASK            (0x1u << GD_STP_CHK_OFFSET)
#define  GD_PWM_LANE_CHK_MASK       (0x1u << GD_PWM_LANE_CHK_OFFSET)
#define  GD_CLR_SPI_CRC_MASK        (0x1u << GD_CLR_SPI_CRC_OFFSET)
#define  GD_DCOMP2_CHK_MASK         (0x1u << GD_DCOMP2_CHK_OFFSET)
#define  GD_DCOMP1_CHK_MASK         (0x1u << GD_DCOMP1_CHK_OFFSET)
#define  GD_CFG_CRC_CHK_MASK        (0x1u << GD_CFG_CRC_CHK_OFFSET)
#define  GD_CLK_MON_PRI_CHK_MASK    (0x1u << GD_CLK_MON_PRI_CHK_OFFSET)
#define  GD_CLK_MON_SEC_CHK_MASK    (0x1u << GD_CLK_MON_SEC_CHK_OFFSET)
#define  GD_SCP_CHK_MASK            (0x1u << GD_SCP_CHK_OFFSET)
#define  GD_DESAT_CHK_MASK          (0x1u << GD_DESAT_CHK_OFFSET)
#define  GD_OC_CHK_MASK             (0x1u << GD_OC_CHK_OFFSET)
#define  GD_GATE_ON_CHK_MASK        (0x1u << GD_GATE_ON_CHK_OFFSET)
#define  GD_GATE_OFF_CHK_MASK       (0x1u << GD_GATE_OFF_CHK_OFFSET)
#define  GD_CLR_FAULT_MASK          (0x1u << GD_CLR_FAULT_OFFSET)

typedef enum {
    GD_NO_ACTION = 0,
    GD_CLEAR_FAULT    = 1
}GD_CLR_FAULT_type;

typedef enum {
    GD_NO_FAULT = 0,
    GD_FAULT    = 1
}GD_STATUS_type;

/* ==================================================================
 GD CONTROL2 Register bit definitions:
*/
struct  GD_CONTROL2_REG_BITS
{                                       /* bit     description*/
    uint16   GD_PARITY1            : 1;   /*  0*/
    uint16   GD_ASC_EN_HIZ_EN      : 1;   /*  1*/
    uint16   GD_ASC_DELAY_SEL      : 2;   /*  3:2*/
    uint16   GD_ASC_LEV_SEL        : 2;   /*  5:4*/
    uint16   GD_AI2_PUPD           : 2;   /*  7:6*/
    uint16   GD_PARITY2            : 1;   /*  8*/
    uint16   GD_CURPROT_ASC_EN     : 1;   /*  9*/
    uint16   GD_ASC_STRENGTH       : 2;   /* 11:10*/
    uint16   GD_OUTL_SEL           : 2;   /* 13:12*/
    uint16   GD_OUTH_SEL           : 2;   /* 15:14*/
};

typedef union  {
    uint16                         all;
    struct GD_CONTROL2_REG_BITS bit;
} GD_CONTROL2_REG;

#define  GD_PARITY1_OFFSET            0u
#define  GD_ASC_EN_HIZ_EN_OFFSET      1u
#define  GD_ASC_DELAY_SEL_OFFSET      2u
#define  GD_ASC_LEV_SEL_OFFSET        4u
#define  GD_AI2_PUPD_OFFSET           6u
#define  GD_PARITY2_OFFSET            8u
#define  GD_CURPROT_ASC_EN_OFFSET     9u
#define  GD_ASC_STRENGTH_OFFSET       10u
#define  GD_OUTL_SEL_OFFSET           12u
#define  GD_OUTH_SEL_OFFSET           14u

#define  GD_PARITY1_MASK            (0x1u << GD_PARITY1_OFFSET)
#define  GD_ASC_EN_HIZ_EN_MASK      (0x1u << GD_ASC_EN_HIZ_EN_OFFSET)
#define  GD_ASC_DELAY_SEL_MASK      (0x3u << GD_ASC_DELAY_SEL_OFFSET)
#define  GD_ASC_LEV_SEL_MASK        (0x3u << GD_ASC_LEV_SEL_OFFSET)
#define  GD_AI2_PUPD_MASK           (0x3u << GD_AI2_PUPD_OFFSET)
#define  GD_PARITY2_MASK            (0x1u << GD_PARITY2_OFFSET)
#define  GD_CURPROT_ASC_EN_MASK     (0x1u << GD_CURPROT_ASC_EN_OFFSET)
#define  GD_ASC_STRENGTH_MASK       (0x3u << GD_ASC_STRENGTH_OFFSET)
#define  GD_OUTL_SEL_MASK           (0x3u << GD_OUTL_SEL_OFFSET)
#define  GD_OUTH_SEL_MASK           (0x3u << GD_OUTH_SEL_OFFSET)

typedef enum {
    GD_SET_PARITY = 1,
    GD_RESET_PARITY = 0
}GD_PARITY_type;

typedef enum {
    GD_OUTH12_EN = 0,
	GD_OUTH1_EN  = 1,
	GD_OUTH2_EN  = 2,
	GD_OUTH_DIS  = 3
}GD_OUTH_SEL_type;

typedef enum {
    GD_OUTL12_EN = 0,
	GD_OUTL1_EN  = 1,
	GD_OUTL2_EN  = 2,
	GD_OUTL_2STO = 3
}GD_OUTL_SEL_type;

typedef enum {
    GD_OUTL12_H12_EN = 0,
	GD_OUTL1_H1_EN  = 1,
	GD_OUTL2_H2_EN  = 2,
	GD_OUTH1_STO = 3
}GD_ASC_STRENGTH_type;

typedef enum {
    GD_ENABLE = 0,
	GD_DISABLE  = 1,
}GD_CURPROT_ASC_EN_type;

typedef enum {
    GD_PULLUP_DOWN_DIS = 0,
	GD_PULL_DOWN_EN = 1,
	GD_PULL_UP_EN  = 2
}GD_AI2_PUPD_type;

typedef enum {
    GD_ASC_LOW = 0,
	GD_ASC_HIGH = 1,
	GD_ASC_SEC_ST  = 2,
    GD_ASC_SEC_ST_  = 3,
}GD_ASC_LEV_SEL_type;

typedef enum {
    GD_ASC_2us = 0,
	GD_ASC_10us = 1,
	GD_ASC_103us  = 2,
	GD_ASC_206us = 3
}GD_ASC_DELAY_SEL_type;

typedef enum {
    GD_ASC_PULL_LOW = 0,
	GD_ASC_OUT_HIGH_IMP = 1
}GD_ASC_EN_HIZ_EN_type;

/* ==================================================================
GD CONTROL3 Register bit definitions:
*/
struct  GD_CONTROL3_REG_BITS
{                                     /* bit     description*/
    uint16   GD_SPITEST   : 16;       /*  15:0*/

};

typedef union  {
    uint16                         all;
    struct GD_CONTROL3_REG_BITS bit;
} GD_CONTROL3_REG;

#define  GD_SPITEST_OFFSET          0u
#define  GD_SPITEST_MASK            (0xFFFFu << GD_SPITEST_OFFSET)

typedef enum {
    GD_SPITEST_DATA = 0
}GD_SPITEST_type;

/* GD ID Register bit definitions:*/
struct  GD_ID_REG_BITS
{                                              /* bit     description*/
    uint16   GD_TX_CHIP_ID                     : 4;  /*  3:0*/
    uint16   GD_TX_REV_ID                      : 4;  /*  7:4*/
    uint16   GD_DR_CHIP_ID                     : 4;  /*  11:8*/
    uint16   GD_RESERVED_ID_12_TO_15           : 4;  /*  15:12*/
};

typedef union  {
    uint16                         all;
    struct GD_ID_REG_BITS bit;
} GD_ID_REG;

/*snapshot struct*/
typedef struct 
{
	GD_STATUS_REG        status;   
    GD_FAULT1_REG        fault1;      
    GD_FAULT2_REG        fault2;
    uint16               Reserved_Snapshot;
}GD_DiagSnapshot_type;

/*Chip fault state*/
typedef enum
{
	GD_ALL_GOOD = 0x0u,
	GD_INIT_FAULT = 0x1u,
    GD_PWR_FAIL = 0x2u,
	GD_FAULT1 = 0x4u,
	GD_FAULT2 = 0x8u,
	GD_PRI_RDY_FAULT = 0x10u,
	GD_SEC_RDY_FAULT = 0x20u,
    GD_DEVICE_ERROR  = 0x40u
} GD_Status_e;

typedef struct  {
    GD_CFG1_REG          cfg1;         /* 0x00*/ 
    GD_CFG2_REG          cfg2;         /* 0x01*/ 
    GD_CFG3_REG          cfg3;         /* 0x02*/ 
    GD_CFG4_REG          cfg4;         /* 0x03*/ 
    GD_CFG5_REG          cfg5;         /* 0x04*/ 
    GD_CFG6_REG          cfg6;         /* 0x05*/ 
    GD_ACT1_REG          act1;         /* 0x06*/ 
    GD_ACT2_REG          act2;         /* 0x07*/ 
    GD_ACT3_REG          act3;         /* 0x08*/ 
    GD_DIGCOMP1_REG      digcomp1;     /* 0x09*/ 
    GD_DIGCOMP2_REG      digcomp2;     /* 0x0A*/ 
    GD_ADC1_REG          adc1;         /* 0x0B*/ 
    GD_ADC2_REG          adc2;         /* 0x0C*/ 
    GD_ADC3_REG          adc3;         /* 0x0D*/ 
    GD_ADC4_REG          adc4;         /* 0x0E*/ 
    GD_ADC5_REG          adc5;         /* 0x0F*/ 
    GD_ADC6_REG          adc6;         /* 0x10*/ 
    GD_CRC_REG           crc;          /* 0x11*/ 
    GD_STATUS_REG        status;       /* 0x12*/ 
    GD_FAULT1_REG        fault1;       /* 0x13*/ 
    GD_FAULT2_REG        fault2;       /* 0x14*/ 
    GD_CONTROL1_REG      control1;     /* 0x15*/ 
    GD_CONTROL2_REG      control2;     /* 0x16*/ 
    GD_CONTROL3_REG      control3;     /* 0x17*/ 
    GD_ID_REG            id;           /* 0x18*/ 
} GD_Vars;

typedef enum{
	GD_RESET_MUTE_EN 				= 0u,
	GD_IO_DG 						= 1u,
	GD_TDEAD 						= 2u,
	GD_NFLT2_MUX 					= 3u,
	GD_OVLO1_TH 					= 4u,
	GD_UVLO1_TH 					= 5u,

	GD_MCLP_EN 					    = 6u,
	GD_DESAT_SC_SEL 				= 7u,
	GD_OC_EN 						= 8u,
	GD_GM_BLK 						= 9u,
	GD_OVLO3_TH 					= 10u,
	GD_UVLO3_TH 					= 11u,
	GD_OVLO2_TH 					= 12u,
	GD_UVLO2_TH 					= 13u,
	GD_MCLP_TH 					    = 14u,

	GD_VGTH_MEAS_EN 				= 15u,
	GD_STO_2STO_CURR 				= 16u,
	GD_DESAT_ICHG 					= 17u,
	GD_DESAT_SC_TH 				    = 18u,
	GD_DESAT_SCP_DG_EN 			    = 19u,
	GD_OC_TH 						= 20u,
	GD_SC_BLK 						= 21u,

	GD_DOUT_CH_SEL 				    = 22u,
	GD_DOUT_FREQ 					= 23u,
	GD_IZTC_EN 					    = 24u,
	GD_VCECLP_EN 					= 25u,
	GD_STO_STO_SEL2 				= 26u,
	GD_VCE_CLMP_HLD_TIME 			= 27u,
	GD_MCLP_EXT_EN 				    = 28u,
	GD_STO_TIME2     				= 29u,

	GD_IZTC_SEL 					= 30u,
	GD_ADC_OFF_CH1_SEL  			= 31u,
	GD_ADC_OFF_CH2_SEL 			    = 32u,
	GD_ADC_OFF_TEMP_SEL			    = 33u,
	GD_ADC_OFF_VCC2_SEL			    = 34u,
	GD_ADC_ON_CH1_SEL				= 35u,
	GD_ADC_ON_CH2_SEL				= 36u,
	GD_ADC_ON_TEMP_SEL				= 37u,
	GD_ADC_ON_VCC2_SEL				= 38u,
	GD_ADC_ON_DESAT_SEL			    = 39u,
	GD_ADC_SAMP_DLY 				= 40u,
	GD_ADC_SAMP_MODE				= 41u,

	GD_OC_BLK						= 42u,

	GD_CFG_CRC_ACT					= 43u,
	GD_SPI_ACT						= 44u,
	GD_ADC_ACT						= 45u,
	GD_OVUV3_ACT					= 46u,
	GD_UVLO2_ACT					= 47u,
	GD_OVLO2_ACT 					= 48u,
	GD_UVLO1_ACT					= 49u,
	GD_OVLO1_ACT					= 50u,

	GD_SC_DESAT_ACT 				= 51u,
	GD_INT_COMM_ACT				    = 52u,
	GD_PWM_LANE_ACT				    = 53u,
	GD_STP_ACT						= 54u,
	GD_OC_ACT						= 55u,
	GD_CLK_MON_ACT					= 56u,
    GD_TWN_ACT					    = 57u,
	GD_TRIM_CRC_ACT				    = 58u,
	GD_INT_REG_ACT					= 59u,

	GD_GM_ACT						= 60u,

	GD_DCOMP1_DEGLITCH				= 61u,
	GD_DCOMP1_ACT					= 62u,
	GD_DCOMP1_DIR					= 63u,
	GD_DCOMP1_EN					= 64u,
	GD_THRESH_AI1					= 65u,

	GD_DCOMP2_DEGLITCH				= 66u,
	GD_DCOMP2_ACT					= 67u,
	GD_DCOMP2_DIR					= 68u,
	GD_DCOMP2_EN					= 69u,
	GD_THRESH_AI2					= 70u,

	GD_CRC_TX						= 71u,

	GD_STP_CHK						= 72u,
	GD_PWM_LANE_CHK				    = 73u,
	GD_CLR_SPI_CRC 				    = 74u,
	GD_DCOMP2_CHK					= 75u,
	GD_DCOMP1_CHK					= 76u,
	GD_CFG_CRC_CHK					= 77u,
	GD_CLK_MON_PRI_CHK				= 78u,
	GD_CLK_MON_SEC_CHK				= 79u,
	GD_SCP_CHK						= 80u,
	GD_DESAT_CHK     				= 81u,
	GD_OC_CHK						= 82u,
	GD_GATE_ON_CHK					= 83u,
	GD_GATE_OFF_CHK				    = 84u,
	GD_CLR_FAULT					= 85u,

	GD_PARITY1						= 86u,
	GD_ASC_EN_HIZ_EN				= 87u,
	GD_ASC_DELAY_SEL				= 88u,
	GD_ASC_LEV_SEL					= 89u,
	GD_AI2_PUPD					    = 90u,
	GD_PARITY2						= 91u,
	GD_CURPROT_ASC_EN				= 92u,
	GD_ASC_STRENGTH				    = 93u,
	GD_OUTL_SEL					    = 94u,
	GD_OUTH_SEL					    = 95u,

	GD_SPITEST						= 96u
}CONG_REG_type;

#define DEFAULT_Value_CFG1                                                    \
  ((GD_RESET_MUTE_ENABLE  << GD_RESET_MUTE_EN_OFFSET) & GD_RESET_MUTE_EN_MASK)\
| ((GD_IO_DEGLITCH_BYPASS << GD_IO_DG_OFFSET)         & GD_IO_DG_MASK)        \
| ((GD_TDEAD_RESET       << GD_TDEAD_OFFSET)         & GD_TDEAD_MASK)        \
| ((GD_nFLT2_MUX_nFLT2    << GD_NFLT2_MUX_OFFSET)     & GD_NFLT2_MUX_MASK )   \
| ((GD_VCC1_OVLO_VTH_5V65 << GD_OVLO1_TH_OFFSET)      & GD_OVLO1_TH_MASK )    \
| ((GD_VCC1_UVLO_VTH_2V45 << GD_UVLO1_TH_OFFSET)      & GD_UVLO1_TH_MASK )

#define DEFAULT_Value_CFG2                                                     \
  ((GD_MCLP_ENABLE         << GD_MCLP_EN_OFFSET)      & GD_MCLP_EN_MASK)       \
| ((GD_DESAT_ENABLE  << GD_DESAT_SC_SEL_OFFSET) & GD_DESAT_SC_SEL_MASK)  \
| ((GD_OC_DISABLE          << GD_OC_EN_OFFSET)        & GD_OC_EN_MASK)         \
| ((GD_GM_BLK_4052ns       << GD_GM_BLK_OFFSET)       & GD_GM_BLK_MASK )       \
| ((GD_VEE2_OVLO3_VTH_M8V << GD_OVLO3_TH_OFFSET)     & GD_OVLO3_TH_MASK )     \
| ((GD_VEE2_UVLO3_VTH_M2V  << GD_UVLO3_TH_OFFSET)     & GD_UVLO3_TH_MASK )     \
| ((GD_VCC2_OVLO2_VTH_P22V << GD_OVLO2_TH_OFFSET)     & GD_OVLO2_TH_MASK)      \
| ((GD_VCC2_UVLO2_VTH_P13V << GD_UVLO2_TH_OFFSET)     & GD_UVLO2_TH_MASK)      \
| ((GD_MCLP_TH_2V          << GD_MCLP_TH_OFFSET)      & GD_MCLP_TH_MASK)

#define DEFAULT_Value_CFG3                                                              \
   ((GD_VGTH_MEAS_NO            << GD_VGTH_MEAS_EN_OFFSET)    & GD_VGTH_MEAS_EN_MASK)   \
| ((GD_PULLDOWN_CUR_0_3A        << GD_STO_2STO_CURR_OFFSET)   & GD_STO_2STO_CURR_MASK)  \
| ((GD_BLANK_CAP_CHRG_CUR_500uA << GD_DESAT_ICHG_OFFSET)      & GD_DESAT_ICHG_MASK)     \
| ((GD_DESAT_SCP_VTH_4V       << GD_DESAT_SC_TH_OFFSET)     & GD_DESAT_SC_TH_MASK )   \
| ((GD_DESAT_SCP_DG_disable     << GD_DESAT_SCP_DG_EN_OFFSET) & GD_DESAT_SCP_DG_EN_MASK)\
| ((GD_OCD_VTH_0p25V             << GD_OC_TH_OFFSET)           & GD_OC_TH_MASK )         \
| ((GD_SCD_BLANK_TIME_0p087us   << GD_SC_BLK_OFFSET)          & GD_SC_BLK_MASK)

#define DEFAULT_Value_CFG4                                                                   \
   ((GD_DOUT_CH_DIS              << GD_DOUT_CH_SEL_OFFSET)       & GD_DOUT_CH_SEL_MASK)      \
| ((GD_FREQ_DOUT_13p9KHz        << GD_DOUT_FREQ_OFFSET)         & GD_DOUT_FREQ_MASK)        \
| ((GD_IZTC_disable              << GD_IZTC_EN_OFFSET)           & GD_IZTC_EN_MASK)          \
| ((GD_VCE_CLAMP_enable          << GD_VCECLP_EN_OFFSET)         & GD_VCECLP_EN_MASK )       \
| ((GD_STO_STO2_0                << GD_STO_STO_SEL2_OFFSET)      & GD_STO_STO_SEL2_MASK )    \
| ((GD_VCE_CLAMP_HOLD_TIME_100ns << GD_VCE_CLMP_HLD_TIME_OFFSET) & GD_VCE_CLMP_HLD_TIME_MASK )\
| ((GD_MCLP_EXT_Internal         << GD_MCLP_EXT_EN_OFFSET)       & GD_MCLP_EXT_EN_MASK)       \
| ((GD_STO_TIME2_0p122us         << GD_STO_TIME2_OFFSET)         & GD_STO_TIME2_MASK)

#define DEFAULT_Value_CFG5                                                               \
  ((GD_ZERO_TC_100uA         << GD_IZTC_SEL_OFFSET)          & GD_IZTC_SEL_MASK)         \
| ((GD_ADC_OFF_CH1_DISABLED  << GD_ADC_OFF_CH1_SEL_OFFSET)   & GD_ADC_OFF_CH1_SEL_MASK)  \
| ((GD_ADC_OFF_CH2_DISABLED  << GD_ADC_OFF_CH2_SEL_OFFSET)   & GD_ADC_OFF_CH2_SEL_MASK)  \
| ((GD_ADC_OFF_TEMP_DISABLED << GD_ADC_OFF_TEMP_SEL_OFFSET)  & GD_ADC_OFF_TEMP_SEL_MASK )\
| ((GD_ADC_OFF_VCC2_DISABLED << GD_ADC_OFF_VCC2_SEL_OFFSET)  & GD_ADC_OFF_VCC2_SEL_MASK )\
| ((GD_ADC_ON_CH1_DISABLED   << GD_ADC_ON_CH1_SEL_OFFSET)    & GD_ADC_ON_CH1_SEL_MASK )  \
| (( GD_ADC_ON_CH2_DISABLED  << GD_ADC_ON_CH2_SEL_OFFSET)    & GD_ADC_ON_CH2_SEL_MASK)   \
| ((GD_ADC_ON_TEMP_DISABLED  << GD_ADC_ON_TEMP_SEL_OFFSET)   & GD_ADC_ON_TEMP_SEL_MASK)  \
| ((GD_ADC_ON_VCC2_DISABLED  << GD_ADC_ON_VCC2_SEL_OFFSET)   & GD_ADC_ON_VCC2_SEL_MASK)  \
| ((GD_ADC_ON_DESAT_DISABLED << GD_ADC_ON_DESAT_SEL_OFFSET)  & GD_ADC_ON_DESAT_SEL_MASK) \
| ((GD_ADC_SAMP_DELAY_280ns  << GD_ADC_SAMP_DLY_OFFSET)      & GD_ADC_SAMP_DLY_MASK)     \
| ((GD_ADC_SAMP_Disabled     << GD_ADC_SAMP_MODE_OFFSET)     & GD_ADC_SAMP_MODE_MASK)

#define DEFAULT_Value_CFG6 \
 ((GD_OCD_BLANK_TIME_0p49us << GD_OC_BLK_OFFSET)   & GD_OC_BLK_MASK)

#define DEFAULT_Value_ACT1                                                \
  ((GD_CFG_CRC_FLT_nFLT2 << GD_CFG_CRC_ACT_OFFSET) & GD_CFG_CRC_ACT_MASK) \
| ((GD_SPI_FLT_nFLT2     << GD_SPI_ACT_OFFSET)     & GD_SPI_ACT_MASK)     \
| ((GD_ADC_FLT_nFLT2      << GD_ADC_ACT_OFFSET)     & GD_ADC_ACT_MASK)     \
| ((GD_OVUV3_Disabled   << GD_OVUV3_ACT_OFFSET)   & GD_OVUV3_ACT_MASK )  \
| ((GD_UVLO2_FLT_nFLT1_OUT   << GD_UVLO2_ACT_OFFSET)   & GD_UVLO2_ACT_MASK )  \
| ((GD_OVLO2_Disabled   << GD_OVLO2_ACT_OFFSET)   & GD_OVLO2_ACT_MASK )  \
| ((GD_UVLO1_FLT_nFLT1_OUT   << GD_UVLO1_ACT_OFFSET)   & GD_UVLO1_ACT_MASK)   \
| ((GD_OVLO1_FLT_nFLT1_OUT   << GD_OVLO1_ACT_OFFSET)   & GD_OVLO1_ACT_MASK)

#define DEFAULT_Value_ACT2                                                          \
  ((GD_SC_DESAT_FLT_nFLT1_OUT      << GD_SC_DESAT_ACT_OFFSET)  & GD_SC_DESAT_ACT_MASK)  \
| ((GD_INT_COMM_FLT_nFLT1_OUT      << GD_INT_COMM_ACT_OFFSET)  & GD_INT_COMM_ACT_MASK)  \
| ((GD_PWM_LANE_FLT_nFLT1_OUT      << GD_PWM_LANE_ACT_OFFSET)  & GD_PWM_LANE_ACT_MASK)  \
| ((GD_STP_FLT_nFLT1_OUT           << GD_STP_ACT_OFFSET)       & GD_STP_ACT_MASK )      \
| ((GD_OC_FLT_nFLT1             << GD_OC_ACT_OFFSET)        & GD_OC_ACT_MASK )       \
| ((GD_CLK_MON_FLT_nFLT1_OUT   << GD_CLK_MON_ACT_OFFSET)   & GD_CLK_MON_ACT_MASK )  \
| ((GD_TWN_FLT_nFLT2           << GD_TWN_ACT_OFFSET)       & GD_TWN_ACT_MASK)       \
| ((GD_TRIM_CRC_FLT_nFLT1_OUT  << GD_TRIM_CRC_ACT_OFFSET)  & GD_TRIM_CRC_ACT_MASK)  \
| ((GD_INT_REG_FLT_nFLT1_OUT   << GD_INT_REG_ACT_OFFSET)   & GD_INT_REG_ACT_MASK)

#define DEFAULT_Value_ACT3 \
   ((GD_GM_FAULT_nFLT1_OUTH << GD_GM_ACT_OFFSET) & GD_GM_ACT_MASK)

#define DEFAULT_Value_DIGCOMP1                                                       \
   ((GD_DCOMP1_DEGLITCH_2   << GD_DCOMP1_DEGLITCH_OFFSET) & GD_DCOMP1_DEGLITCH_MASK) \
| ((GD_THRESH_AI1_2     <<  GD_DCOMP1_ACT_OFFSET)     & GD_DCOMP1_ACT_MASK)      \
| ((GD_DCOMP1_FAULT_LTHRESH << GD_DCOMP1_DIR_OFFSET)      & GD_DCOMP1_DIR_MASK)      \
| ((GD_DCOMP1_DISABLED      <<  GD_DCOMP1_EN_OFFSET)      & GD_DCOMP1_EN_MASK )      \
| ((GD_THRESH_AI1_1         << GD_THRESH_AI1_OFFSET)      & GD_THRESH_AI1_MASK )

#define DEFAULT_Value_DIGCOMP2                                                        \
   ((GD_DCOMP2_DEGLITCH_2    << GD_DCOMP2_DEGLITCH_OFFSET) & GD_DCOMP2_DEGLITCH_MASK) \
| ((GD_DCOMP2_Disabled      << GD_DCOMP2_ACT_OFFSET)      & GD_DCOMP2_ACT_MASK)      \
| ((GD_DCOMP2_FAULT_LTHRESH  <<  GD_DCOMP2_DIR_OFFSET)     & GD_DCOMP2_DIR_MASK)      \
| ((GD_DCOMP2_DISABLED       << GD_DCOMP2_EN_OFFSET)       & GD_DCOMP2_EN_MASK )      \
| ((GD_THRESH_AI1_1          << GD_THRESH_AI2_OFFSET)      & GD_THRESH_AI2_MASK )

#define DEFAULT_Value_CONTROL1                                            \
  ((GD_NO_ACTION << GD_STP_CHK_OFFSET)          & GD_STP_CHK_MASK)         \
| ((GD_NO_ACTION << GD_PWM_LANE_CHK_OFFSET)     & GD_PWM_LANE_CHK_MASK)    \
| ((GD_NO_ACTION <<  GD_CLR_SPI_CRC_OFFSET)     & GD_CLR_SPI_CRC_MASK)     \
| ((GD_NO_ACTION << GD_DCOMP2_CHK_OFFSET)       & GD_DCOMP2_CHK_MASK )     \
| ((GD_NO_ACTION << GD_DCOMP1_CHK_OFFSET)       & GD_DCOMP1_CHK_MASK )     \
| ((GD_NO_ACTION << GD_CFG_CRC_CHK_OFFSET)      & GD_CFG_CRC_CHK_MASK)     \
| ((GD_NO_ACTION << GD_CLK_MON_PRI_CHK_OFFSET)  & GD_CLK_MON_PRI_CHK_MASK) \
| ((GD_NO_ACTION << GD_CLK_MON_SEC_CHK_OFFSET)  & GD_CLK_MON_SEC_CHK_MASK )\
| ((GD_NO_ACTION << GD_SCP_CHK_OFFSET)          & GD_SCP_CHK_MASK )        \
| ((GD_NO_ACTION << GD_DESAT_CHK_OFFSET)        & GD_DESAT_CHK_MASK)       \
| ((GD_NO_ACTION << GD_OC_CHK_OFFSET)           & GD_OC_CHK_MASK)          \
| ((GD_NO_ACTION << GD_GATE_ON_CHK_OFFSET)      & GD_GATE_ON_CHK_MASK )    \
| ((GD_NO_ACTION << GD_GATE_OFF_CHK_OFFSET)     & GD_GATE_OFF_CHK_MASK )   \
| ((GD_NO_ACTION << GD_CLR_FAULT_OFFSET)       & GD_CLR_FAULT_MASK)

#define DEFAULT_Value_CONTROL2                                               \
  ((GD_RESET_PARITY           << GD_PARITY1_OFFSET)        & GD_PARITY1_MASK)       \
| ((GD_ASC_PULL_LOW    << GD_ASC_EN_HIZ_EN_OFFSET)  & GD_ASC_EN_HIZ_EN_MASK) \
| ((GD_ASC_2us         << GD_ASC_DELAY_SEL_OFFSET)  & GD_ASC_DELAY_SEL_MASK) \
| ((GD_ASC_SEC_ST         << GD_ASC_LEV_SEL_OFFSET)    & GD_ASC_LEV_SEL_MASK )  \
| ((GD_PULL_UP_EN << GD_AI2_PUPD_OFFSET)       & GD_AI2_PUPD_MASK )     \
| ((GD_RESET_PARITY           << GD_PARITY2_OFFSET)        & GD_PARITY2_MASK)       \
| ((GD_ENABLE          << GD_CURPROT_ASC_EN_OFFSET) & GD_CURPROT_ASC_EN_MASK)\
| ((GD_OUTL2_H2_EN   << GD_ASC_STRENGTH_OFFSET)   & GD_ASC_STRENGTH_MASK ) \
| ((GD_OUTL2_EN       << GD_OUTL_SEL_OFFSET)       & GD_OUTL_SEL_MASK )     \
| ((GD_OUTL2_H2_EN       << GD_OUTH_SEL_OFFSET)       & GD_OUTH_SEL_MASK)

#define DEFAULT_Value_CONTROL3 \
   ((GD_NO_FAULT << GD_SPITEST_OFFSET) & GD_SPITEST_MASK)

#define GD_Fault_APPLICABLE 1u
#define GD_Fault_IGNORED    0u

#define  GD_FAULT1_MASK  ((GD_Fault_APPLICABLE * GD_ADC_FAULT_MASK   )     | \
	(GD_Fault_APPLICABLE * GD_OC_FAULT_MASK     )     | \
	(GD_Fault_APPLICABLE * GD_TRIM_CRC_FAULT_MASK  )     | \
	(GD_Fault_APPLICABLE * GD_INT_REG_FAULT_MASK   )     | \
	(GD_Fault_APPLICABLE * GD_CFG_CRC_FAULT_MASK   )     | \
	(GD_Fault_APPLICABLE * GD_CLK_MON_FAULT_MASK   )     | \
	(GD_Fault_APPLICABLE * GD_PWM_LANE_FAULT_MASK  )     | \
	(GD_Fault_APPLICABLE * GD_INT_COMM_FAULT_MASK  )     | \
	(GD_Fault_APPLICABLE * GD_BIST_FAULT_MASK      ) )

#define  GD_FAULT2_MASK  (   (GD_Fault_APPLICABLE * GD_DIGCOMP2_FAULT_MASK   )  | \
	(GD_Fault_APPLICABLE * GD_DIGCOMP1_FAULT_MASK       )  | \
	(GD_Fault_APPLICABLE * GD_SPI_FAULT_MASK            )  | \
	(GD_Fault_APPLICABLE * GD_STP_FAULT_MASK 			)  | \
	(GD_Fault_APPLICABLE * GD_TSD_FAULT_MASK       	    )  | \
	(GD_Fault_APPLICABLE * GD_TWN_FAULT_MASK        	)  | \
	(GD_Fault_APPLICABLE * GD_GM_FAULT_MASK        		)  | \
	(GD_Fault_APPLICABLE * GD_SC_DESAT_FAULT_MASK       )  | \
	(GD_Fault_APPLICABLE * GD_OVLO3_FAULT_MASK        	)  | \
	(GD_Fault_APPLICABLE * GD_OVLO2_FAULT_MASK        	)  | \
	(GD_Fault_APPLICABLE * GD_OVLO1_FAULT_MASK       )  | \
	(GD_Fault_APPLICABLE * GD_UVLO3_FAULT_MASK 			)  | \
	(GD_Fault_APPLICABLE * GD_UVLO2_FAULT_MASK  		)  | \
	(GD_Fault_APPLICABLE * GD_UVLO1_FAULT_MASK          )  )


#define  GD_STATUS_FAULT_MASK    \
(   (GD_Fault_APPLICABLE * GD_OR_NFLT2_MASK  )  | \
	(GD_Fault_APPLICABLE * GD_OR_NFLT1_MASK  )  | \
    (GD_Fault_IGNORED * GD_SEC_RDY_MASK  )  | \
    (GD_Fault_IGNORED * GD_PRI_RDY_MASK  )  | \
    (GD_Fault_IGNORED * GD_VCECLP_ACTIVE_MASK  )  | \
    (GD_Fault_IGNORED * GD_VCE_STATE_MASK  )  | \
    (GD_Fault_IGNORED * GD_MCLP_STATE_MASK  )  | \
    (GD_Fault_IGNORED * GD_GM_STATE_MASK  )  | \
    (GD_Fault_IGNORED * GD_CFG_STATE_MASK  )  | \
    (GD_Fault_IGNORED * GD_ASC_SEC_STATE_MASK  )  | \
    (GD_Fault_IGNORED * GD_ASC_PRI_STATE_MASK  )  | \
    (GD_Fault_IGNORED * GD_INN_STATE_MASK  )  | \
    (GD_Fault_IGNORED * GD_INP_STATE_MASK  )  | \
    (GD_Fault_IGNORED * GD_STATE_MASK  )  )

#define DEFAULT_Value_ADC1 0u
#define DEFAULT_Value_ADC2 0u
#define DEFAULT_Value_ADC3 0u
#define DEFAULT_Value_ADC4 0u
#define DEFAULT_Value_ADC5 0u
#define DEFAULT_Value_ADC6 0u
#define DEFAULT_Value_STATUS 0u
#define DEFAULT_Value_FAULT1 0u
#define DEFAULT_Value_FAULT2 0u
#define DEFAULT_Value_ID 0u

#define DEFAULT_Value_CRC \
   (GD_TX_DATA_CRC & GD_CRC_TX_MASK)

#define GD_DEFAULTS         \
{                                \
	    DEFAULT_Value_CFG1,      \
		DEFAULT_Value_CFG2,      \
		DEFAULT_Value_CFG3,      \
		DEFAULT_Value_CFG4,      \
		DEFAULT_Value_CFG5,      \
		DEFAULT_Value_CFG6,      \
		DEFAULT_Value_ACT1,      \
		DEFAULT_Value_ACT2,      \
		DEFAULT_Value_ACT3,      \
		DEFAULT_Value_DIGCOMP1,  \
		DEFAULT_Value_DIGCOMP2,  \
		DEFAULT_Value_ADC1,      \
		DEFAULT_Value_ADC2,      \
		DEFAULT_Value_ADC3,      \
		DEFAULT_Value_ADC4,      \
		DEFAULT_Value_ADC5,      \
		DEFAULT_Value_ADC6,      \
		DEFAULT_Value_CRC,       \
		DEFAULT_Value_STATUS,    \
		DEFAULT_Value_FAULT1,    \
		DEFAULT_Value_FAULT2,    \
		DEFAULT_Value_CONTROL1,  \
		DEFAULT_Value_CONTROL2,  \
		DEFAULT_Value_CONTROL3,  \
		DEFAULT_Value_ID         \
}

#endif  /* UCC5880_REGS_H*/

