 #include "hwosfcpu.h"
 #include "IfxCpu.h"

void IfxCpu_disableOverlayBlock(IfxCpu_ResourceCpu cpu, uint16 overlayBlock)
{
    Ifx_CPU          *ovcSfrBase = NULL_PTR;

    Ifx_SCU_OVCCON    ovccon;
    Ifx_SCU_OVCENABLE ovcenable;
    uint16            safetyWdtPw = IfxScuWdt_getSafetyWatchdogPassword();
    IfxScuWdt_clearSafetyEndinit(safetyWdtPw);
    ovccon.U    = MODULE_SCU.OVCCON.U;
    ovcenable.U = MODULE_SCU.OVCENABLE.U;

    /* Disable Overlay in SCU */
    switch (cpu)
    {
    case IfxCpu_ResourceCpu_1:
        ovcSfrBase        = &MODULE_CPU1;
        ovcenable.B.OVEN1 = 0;
        ovccon.B.CSEL1    = 0;
        break;
    case IfxCpu_ResourceCpu_2:
        ovcSfrBase        = &MODULE_CPU2;
        ovcenable.B.OVEN2 = 0;
        ovccon.B.CSEL2    = 0;
        break;

    default:
        ovcSfrBase        = &MODULE_CPU0;
        ovcenable.B.OVEN0 = 0;
        ovccon.B.CSEL0    = 0;
        break;
    }

    ovccon.B.OVSTP         = 1;
    ovccon.B.DCINVAL       = 1;
    MODULE_SCU.OVCCON.U    = ovccon.U;
    MODULE_SCU.OVCENABLE.U = ovcenable.U;
    IfxScuWdt_setSafetyEndinit(safetyWdtPw);

    ovcSfrBase->BLK[overlayBlock].RABR.U  = 0;
    ovcSfrBase->BLK[overlayBlock].OTAR.U  = 0;
    ovcSfrBase->BLK[overlayBlock].OMASK.U = 0;
}


void IfxCpu_enableOverlayBlock(IfxCpu_ResourceCpu cpu, uint16 overlayBlock, IfxCpu_OverlayMemorySelect overlayMemorySelect, IfxCpu_OverlayAddressMask overlayAddressMask, uint32 targetBaseAddress, uint32 overlayBaseAddress)
{
    Ifx_CPU *ovcSfrBase = NULL_PTR;

    switch (cpu)
    {
    case IfxCpu_ResourceCpu_1:
        ovcSfrBase = &MODULE_CPU1;
        break;
    case IfxCpu_ResourceCpu_2:
        ovcSfrBase = &MODULE_CPU2;
        break;

    default:
        ovcSfrBase = &MODULE_CPU0;
        break;
    }

    /* Select overlay Block */
    ovcSfrBase->OSEL.U |= 1 << overlayBlock;

    /* Configure ovcBlock */
    Ifx_CPU_BLK_RABR rabr;
    Ifx_CPU_BLK_OTAR otar;
    rabr.U                                = 0;
    rabr.B.OMEM                           = overlayMemorySelect;
    rabr.B.OBASE                          = overlayBaseAddress >> 5;

    otar.U                                = 0;
    otar.B.TBASE                          = targetBaseAddress >> 5;

    ovcSfrBase->BLK[overlayBlock].RABR.U  = rabr.U;
    ovcSfrBase->BLK[overlayBlock].OTAR.U  = otar.U;
    ovcSfrBase->BLK[overlayBlock].OMASK.U = ((overlayAddressMask << 5) & 0x0001FFE0);

    /* Enable Overlay in SCU */
    uint16         safetyWdtPw = IfxScuWdt_getSafetyWatchdogPassword();
    IfxScuWdt_clearSafetyEndinit(safetyWdtPw);
    Ifx_SCU_OVCCON ovccon;
    ovccon.U = MODULE_SCU.OVCCON.U;

    switch (cpu)
    {
    case IfxCpu_ResourceCpu_1:
        MODULE_SCU.OVCENABLE.B.OVEN1 = 1;
        ovccon.B.CSEL1               = 1;
        break;
    case IfxCpu_ResourceCpu_2:
        MODULE_SCU.OVCENABLE.B.OVEN2 = 1;
        ovccon.B.CSEL2               = 1;
        break;
    default:
        MODULE_SCU.OVCENABLE.B.OVEN0 = 1;
        ovccon.B.CSEL0               = 1;
        break;
    }

    ovccon.B.OVSTRT     = 1;
    MODULE_SCU.OVCCON.U = ovccon.U;
    IfxScuWdt_setSafetyEndinit(safetyWdtPw);
}
