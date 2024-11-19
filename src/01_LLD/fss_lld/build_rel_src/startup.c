
#ifndef _lint /* Not lintable */
/* Startup code for TriCores on HighTec. Avoids run-time library
 * because not all customers have it available
 */

#include <machine/intrinsics.h>
#include "Os_DisableInterrupts.h"
#include "startup.h"
#include "IfxScuWdt.h"
#include "Platform_Types.h"
#include "BrsHw.h"
#include "BrsMain.h"
#include "BrsHwStartup_TC2xx_TC3xx.h"
#include "Mcal_TcLib.h"

//#define MCAL_NO_OF_CORES 3U
#define WDG_CON_TYPE SCU_WDTCPU0CON0_type
#define PSW_ADDR     (0xfe04)
#define PCXI_ADDR    (0xfe00)
#define FCX_ADDR     (0xfe38)
#define LCX_ADDR     (0xfe3c)
#define CORE_ID_ADDR (0xfe1c)

#pragma GCC diagnostic ignored "-Wconversion"
#pragma GCC diagnostic ignored "-Wsign-conversion"

/*
 * The core initialization structure
 */
typedef struct coreinit {
  unsigned long         *istack;        // the interrupt stack
  unsigned long         *ustack;        // the initial user stack
  unsigned long         *smallA0;       // base of the small data area with base A0
  unsigned long         *smallA1;       // base of the small data area with base A1
  unsigned long         *smallA8;       // base of the small data area with base A8
  unsigned long         *smallA9;       // base of the small data area with base A9
  unsigned long         csaBase;        // base address of the CSA area
  unsigned long         csaSize;        // size of the CSA area
  WDG_CON_TYPE          *wdtBase;       // watchdog register base
  int (*main)(void);                    // the main function
} CoreInit_t;

/*
 * The boot mode header description
 */
typedef struct bmhd {
  void (*startAddress)(void);          // The User Code Start Address
  unsigned short        bmIndex;       // The Boot Mode Index (BMI)
  unsigned short        bmhdID;        // The Boot Mode Header ID (0xb359)
  unsigned long         chkStart;      // Memory Range to be checked - Start Address
  unsigned long         chkEnd;        // Memory Range to be checked - End Address
  unsigned long         crcRange;      // Check Result for the Memory Range
  unsigned long         invCrcRange;   // Inverted Check Result for the Memory Range
  unsigned long         crcHead;       // Check Result of the ABM Header (0 ..  0x17)
  unsigned long         invCrcHead;    // Invert Check Result of the ABM Header
} BMHD_t;

/*
 * CSA structure
 */
typedef struct {
  unsigned int reg[16];
} csa_t;

/*
 * PCXI register definition
 */
typedef union {
  struct {
  unsigned int pcxo:16;
  unsigned int pcxs:4;
  unsigned int res:12;
  } bits;
  unsigned int reg;
} pcxi_t;

// Function prototypes

static void WDT_ClearEndinit(WDG_CON_TYPE *wdtbase);
inline void init_csa(unsigned int csa_base, unsigned int csa_size) __attribute__ ((always_inline));
static void my_memset(unsigned long *dest, unsigned long len);
static void my_memcpy(unsigned long *dest, unsigned long *src, unsigned long len);

extern unsigned long __ISTACK_Core0;
extern unsigned long _STACK_C0_START;
extern unsigned long _SMALL_DATA_ __attribute__ ((weak));
extern unsigned long _SMALL_DATA2_ __attribute__ ((weak));
extern unsigned long _SMALL_DATA3_ __attribute__ ((weak));
extern unsigned long _SMALL_DATA4_ __attribute__ ((weak));
extern unsigned long __CSA_BEGIN_Core0[];
extern unsigned long __CSA_SIZE_Core0;

extern unsigned long __ISTACK_Core1;
extern unsigned long __USTACK_Core1;
extern unsigned long __CSA_BEGIN_Core1[];
extern unsigned long __CSA_SIZE_Core1;

extern unsigned long __ISTACK_Core2;
extern unsigned long __USTACK_Core2;
extern unsigned long __CSA_BEGIN_Core2[];
extern unsigned long __CSA_SIZE_Core2;

// Application entry point

extern void main_0(void);
extern void main_1(void);
extern void main_2(void);

const CoreInit_t CPUInit[3] __attribute__((fardata)) = {
  {
  &__ISTACK_Core0, &_STACK_C0_START, &_SMALL_DATA_, &_SMALL_DATA2_, &_SMALL_DATA3_, &_SMALL_DATA4_,
  (unsigned long)__CSA_BEGIN_Core0, (unsigned long)&__CSA_SIZE_Core0, &SCU_WDTCPU0CON0,
  main_0,
  },

  {
  &__ISTACK_Core1, &__USTACK_Core1, &_SMALL_DATA_, &_SMALL_DATA2_, &_SMALL_DATA3_, &_SMALL_DATA4_,
  (unsigned long)__CSA_BEGIN_Core1, (unsigned long)&__CSA_SIZE_Core1, &SCU_WDTCPU1CON0,
  main_1,
  },

  {
  &__ISTACK_Core2, &__USTACK_Core2, &_SMALL_DATA_, &_SMALL_DATA2_, &_SMALL_DATA3_, &_SMALL_DATA4_,
  (unsigned long)__CSA_BEGIN_Core2, (unsigned long)&__CSA_SIZE_Core2, &SCU_WDTCPU2CON0,
  main_2,
  },
};




inline void init_csa(unsigned int csa_base, unsigned int csa_size)
{
  csa_t *pcsa;
  pcxi_t pcxi;
  unsigned int current_csa;

  __MTCR(PCXI_ADDR,0); // initialize PCXI

  csa_base = (csa_base + 0x3f) & ~0x3f; // force 2^6 alignment
  csa_size = csa_size/0x40; // number of csa entries

  pcsa = (csa_t *)csa_base;

  pcsa->reg[0] = 0;
  pcsa++;
  current_csa = csa_base;

  pcxi.bits.pcxs = csa_base >> 28; // segment of csa area
  pcxi.bits.pcxo = ((csa_base+sizeof(csa_t)) >> 6 ) & 0xffff; // get csa index

  __MTCR(LCX_ADDR, pcxi.reg); // initialize LCX

  csa_size -= 2; // CSA's to initialize -=2

  while (csa_size--) {
    pcxi.bits.pcxo = (current_csa >> 6) & 0xffff;
    pcsa->reg[0] = pcxi.reg;
    pcsa++;
    current_csa += sizeof(csa_t);
  }
  pcxi.bits.pcxo = (current_csa >> 6) & 0xffff;
  __MTCR(FCX_ADDR,pcxi.reg); // initialize FCX
}

static void WDT_ClearEndinit (WDG_CON_TYPE *wdtbase) {
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
  volatile unsigned int passwd;
  volatile unsigned int wcon0_res;

  passwd = (*wdtbase).U;
  passwd &= 0xffffff00U;
  (*wdtbase).U = passwd | 0xf1;
  (*wdtbase).U = passwd | 0xf2;
  /* read back new value ==> synchronise LFI */
  wcon0_res = (*wdtbase).U;
#pragma GCC diagnostic pop
}

static void my_memset(unsigned long *dest, unsigned long len) {
  while(len) {
    *dest++ = (unsigned long)0U;
    len -= 4U;
  }
}

static void my_memcpy(unsigned long *dest, unsigned long *src, unsigned long len) {
  while(len) {
    *dest++ = *src++;
    len -= 4U;
  }
}

void cstart(void) {
  const CoreInit_t *core; // the core initialization structure
  unsigned int coreID;
  uint32 BTVAddressInit = 0;
  coreID = __MFCR(CORE_ID_ADDR); // get the core ID from CPU_ID
  core = &CPUInit[coreID];

  /* Core 2 waits till Core 1 finishes initialization */
  if(coreID == 2) {
      while(CpuInitCompletedSem[1] != 1){};
  }
  // Set up the user stack pointer
  __asm__ ("mov.aa %%sp, %0" :: "a" (core->ustack));

  // Set up the interrupt stack pointer
  __asm__("mov.d %%d0,%0" :: "a"(core->istack):"d0");
  __asm__("mtcr $isp,%%d0":::"d0");

  // Disable the Call Depth Counter
  __MTCR(PSW_ADDR,((__MFCR(PSW_ADDR) | 0x7F) & ~0x80));
  _isync();

  // Initialize SDA base pointers
  __asm__ ("mov.aa %%a0,%0" :: "a"(core->smallA0)); // %a0 addresses .sdata/.sbss
  __asm__ ("mov.aa %%a1,%0" :: "a"(core->smallA1)); // %a1 addresses .sdata2/.sbss2
  __asm__ ("mov.aa %%a8,%0" :: "a"(core->smallA8)); // %a8 addresses .sdata3/.sbss3
  __asm__ ("mov.aa %%a9,%0" :: "a"(core->smallA9)); // %a9 addresses .sdata4/.sbss4

  // Set up CSAs
  init_csa(core->csaBase,core->csaSize);

if(coreID == 0)
  {
    uint16 u16LocalWdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[0]);
    BTVAddressInit = (uint32)BRS_TRAPTAB_CORE0;
    BRS_INIT_BIV(__INTTAB_CPU0);    
    BRS_MOVE_TO_CSFR(BRS_BIV_OFFSET, BIVAddressInit); /* CPU1_BIV - Trap Address from CPU0 Reg*/
    BRS_MOVE_TO_CSFR(BRS_BTV_OFFSET, BTVAddressInit); /* CPU1_BTV - Trap Address from CPU0 Reg*/
    BRS_MOVE_TO_CSFR(BRS_PCON0_OFFSET, 0x0UL); /* CPU1_PCON0 - Trap Address from CPU0 Reg*/
    IfxScuWdt_setCpuEndinitInline(&MODULE_SCU.WDTCPU[1], u16LocalWdtPassword);
  }
  else if(coreID == 1)
  {
    uint16 u16LocalWdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[1]);

    BTVAddressInit = (uint32)BRS_TRAPTAB_CORE1;
    BRS_INIT_BIV(__INTTAB_CPU1);    
    IfxScuWdt_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[1], u16LocalWdtPassword);
    BRS_MOVE_TO_CSFR(BRS_BIV_OFFSET, BIVAddressInit); /* CPU1_BIV - Trap Address from CPU1 Reg*/
    BRS_MOVE_TO_CSFR(BRS_BTV_OFFSET, BTVAddressInit); /* CPU1_BTV - Trap Address from CPU1 Reg*/
    BRS_MOVE_TO_CSFR(BRS_PCON0_OFFSET, 0x0UL); /* CPU1_PCON0 - Trap Address from CPU1 Reg*/
    IfxScuWdt_setCpuEndinitInline(&MODULE_SCU.WDTCPU[1], u16LocalWdtPassword);

  }
  else if(coreID == 2)
  {
    uint16 u16LocalWdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[2]);
    BTVAddressInit = (uint32)BRS_TRAPTAB_CORE2;
    BRS_INIT_BIV(__INTTAB_CPU2);    
     IfxScuWdt_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[2], u16LocalWdtPassword);
    BRS_MOVE_TO_CSFR(BRS_BIV_OFFSET, BIVAddressInit); /* CPU2_BIV - Trap Address from CPU1 Reg*/
    BRS_MOVE_TO_CSFR(BRS_BTV_OFFSET, BTVAddressInit); /* CPU2_BTV - Trap Address from CPU1 Reg*/
    BRS_MOVE_TO_CSFR(BRS_PCON0_OFFSET, 0x0UL); /* CPU2_PCON0 - Trap Address from CPU2 Reg*/
    IfxScuWdt_setCpuEndinitInline(&MODULE_SCU.WDTCPU[2], u16LocalWdtPassword);
  }
  if(coreID == 0)
    {
      /* Set program counter of core 1 */
      CPU1_PC.U = (unsigned int)cstart; /* start core 1 inside EcuM_Init - ogd1hc */
     
      #if ( MCAL_NO_OF_CORES == 3U )   
      /* Set program counter of core 2 */
      CPU2_PC.U = (unsigned int)cstart; /* start core 2 inside EcuM_Init - ogd1hc */
      #endif
    }
    CpuInitCompletedSem[coreID] = 1;
  core->main();
  while(1);
} 

#endif




