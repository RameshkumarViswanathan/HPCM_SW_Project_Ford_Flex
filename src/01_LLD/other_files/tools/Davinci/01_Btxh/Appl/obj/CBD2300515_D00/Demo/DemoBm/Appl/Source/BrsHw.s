	.file	"BrsHw.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BrsHwWatchdogInitPowerOn,"ax",@progbits
	.align 1
	.global	BrsHwWatchdogInitPowerOn
	.type	BrsHwWatchdogInitPowerOn, @function
BrsHwWatchdogInitPowerOn:
.LFB18:
	.file 1 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
	.loc 1 449 0
	sub.a	%SP, 16
.LCFI0:
.LVL0:
.LBB470:
.LBB471:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL1:
#NO_APP
.LBE471:
.LBE470:
.LBB472:
.LBB473:
	.file 3 "Include/BrsHw.h"
	.loc 3 373 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 25260
	.loc 3 369 0
	jeq	%d15, -1, .L2
	.loc 3 388 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a2, [%a15] 4
.L2:
.LVL2:
.LBE473:
.LBE472:
.LBB474:
.LBB475:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL3:
#NO_APP
.LBE475:
.LBE474:
.LBB476:
.LBB477:
.LBB478:
.LBB479:
	.loc 3 346 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0
	jeq	%d15, -1, .L3
	.loc 3 361 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
.L3:
.LBE479:
.LBE478:
	.loc 3 408 0
	ld.w	%d15, [%a15]0
.LVL4:
	st.w	[%SP]0, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP]0
	andn	%d15, %d15, ~(-255)
	st.w	[%SP]0, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 240
	st.w	[%SP]0, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 1
	st.w	[%SP]0, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP]0
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP]0
	andn	%d15, %d15, ~(-16)
	st.w	[%SP]0, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 2
	st.w	[%SP]0, %d15
.LBB480:
.LBB481:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE481:
.LBE480:
	.loc 3 421 0
	ld.w	%d15, [%SP]0
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP]0, %d15
.LBB482:
.LBB483:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE483:
.LBE482:
.LBB484:
.LBB485:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE485:
.LBE484:
.LBE477:
.LBE476:
	.loc 1 455 0
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 8
	st.w	[%a2]0, %d15
.LVL5:
.LBB486:
.LBB487:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL6:
#NO_APP
.LBE487:
.LBE486:
.LBB488:
.LBB489:
.LBB490:
.LBB491:
	.loc 3 346 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0
	jeq	%d15, -1, .L4
	.loc 3 361 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
.L4:
.LBE491:
.LBE490:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
.LVL7:
	st.w	[%SP] 4, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 4
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 4, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 240
	st.w	[%SP] 4, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 1
	st.w	[%SP] 4, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 4
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 4
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 4, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 3
	st.w	[%SP] 4, %d15
.LBB492:
.LBB493:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE493:
.LBE492:
	.loc 3 456 0
	ld.w	%d15, [%SP] 4
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 4, %d15
.LBB494:
.LBB495:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE495:
.LBE494:
.LBB496:
.LBB497:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL8:
#NO_APP
.LBE497:
.LBE496:
.LBE489:
.LBE488:
.LBB498:
.LBB499:
	.loc 3 408 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 8, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 8
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 8, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 240
	st.w	[%SP] 8, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 1
	st.w	[%SP] 8, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 8
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 8
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 8, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 2
	st.w	[%SP] 8, %d15
.LBB500:
.LBB501:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE501:
.LBE500:
	.loc 3 421 0
	ld.w	%d15, [%SP] 8
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 8, %d15
.LBB502:
.LBB503:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE503:
.LBE502:
.LBB504:
.LBB505:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE505:
.LBE504:
.LBE499:
.LBE498:
	.loc 1 460 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 25260
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 8
	st.w	[%a2]0, %d15
.LVL9:
.LBB506:
.LBB507:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 12, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 12
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 12, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 240
	st.w	[%SP] 12, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 1
	st.w	[%SP] 12, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 12
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 12
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 12, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 3
	st.w	[%SP] 12, %d15
.LBB508:
.LBB509:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE509:
.LBE508:
	.loc 3 456 0
	ld.w	%d15, [%SP] 12
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 12, %d15
.LBB510:
.LBB511:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE511:
.LBE510:
.LBB512:
.LBB513:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE513:
.LBE512:
.LBE507:
.LBE506:
.LFE18:
	.size	BrsHwWatchdogInitPowerOn, .-BrsHwWatchdogInitPowerOn
.section .text.BrsHwPllInitPowerOn,"ax",@progbits
	.align 1
	.global	BrsHwPllInitPowerOn
	.type	BrsHwPllInitPowerOn, @function
BrsHwPllInitPowerOn:
.LFB19:
	.loc 1 475 0
	sub.a	%SP, 104
.LCFI1:
.LVL10:
.LBB514:
.LBB515:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL11:
#NO_APP
.LBE515:
.LBE514:
.LBB516:
.LBB517:
.LBB518:
.LBB519:
	.loc 3 346 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0
	jeq	%d15, -1, .L9
	.loc 3 361 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
.L9:
.LBE519:
.LBE518:
	.loc 3 408 0
	ld.w	%d15, [%a15]0
.LVL12:
	st.w	[%SP]0, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP]0
	andn	%d15, %d15, ~(-255)
	st.w	[%SP]0, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 240
	st.w	[%SP]0, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 1
	st.w	[%SP]0, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP]0
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP]0
	andn	%d15, %d15, ~(-16)
	st.w	[%SP]0, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 2
	st.w	[%SP]0, %d15
.LBB520:
.LBB521:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE521:
.LBE520:
	.loc 3 421 0
	ld.w	%d15, [%SP]0
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP]0, %d15
.LBB522:
.LBB523:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE523:
.LBE522:
.LBB524:
.LBB525:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE525:
.LBE524:
.LBE517:
.LBE516:
	.loc 1 705 0
	mov	%d15, 0
	st.w	0xf0001800, %d15
	.loc 1 706 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	movh	%d2, 3855
	addi	%d2, %d2, 3855
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 707 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24864
	ld.w	%d15, [%a15]0
	mov	%d2, 3855
	or	%d15, %d2
	st.w	[%a15]0, %d15
.LVL13:
.LBB526:
.LBB527:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL14:
#NO_APP
.LBE527:
.LBE526:
.LBB528:
.LBB529:
.LBB530:
.LBB531:
	.loc 3 346 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0
	jeq	%d15, -1, .L10
	.loc 3 361 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
.L10:
.LBE531:
.LBE530:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
.LVL15:
	st.w	[%SP] 4, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 4
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 4, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 240
	st.w	[%SP] 4, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 1
	st.w	[%SP] 4, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 4
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 4
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 4, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 3
	st.w	[%SP] 4, %d15
.LBB532:
.LBB533:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE533:
.LBE532:
	.loc 3 456 0
	ld.w	%d15, [%SP] 4
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 4, %d15
.LBB534:
.LBB535:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE535:
.LBE534:
.LBB536:
.LBB537:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL16:
#NO_APP
.LBE537:
.LBE536:
.LBE529:
.LBE528:
.LBB538:
.LBB539:
	.loc 3 408 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 8, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 8
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 8, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 240
	st.w	[%SP] 8, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 1
	st.w	[%SP] 8, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 8
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 8
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 8, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 2
	st.w	[%SP] 8, %d15
.LBB540:
.LBB541:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE541:
.LBE540:
	.loc 3 421 0
	ld.w	%d15, [%SP] 8
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 8, %d15
.LBB542:
.LBB543:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE543:
.LBE542:
.LBB544:
.LBB545:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE545:
.LBE544:
.LBE539:
.LBE538:
	.loc 1 723 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24592
	movh	%d15, 5
	addi	%d15, %d15, 24
	st.w	[%a2]0, %d15
	.loc 1 727 0
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 4
	st.w	[%a2]0, %d15
.LVL17:
.LBB546:
.LBB547:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 12, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 12
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 12, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 240
	st.w	[%SP] 12, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 1
	st.w	[%SP] 12, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 12
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 12
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 12, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 3
	st.w	[%SP] 12, %d15
.LBB548:
.LBB549:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE549:
.LBE548:
	.loc 3 456 0
	ld.w	%d15, [%SP] 12
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 12, %d15
.LBB550:
.LBB551:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE551:
.LBE550:
.LBB552:
.LBB553:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE553:
.LBE552:
.LBE547:
.LBE546:
	.loc 1 730 0
	mov.aa	%a15, %a2
	mov	%d2, 258
.L11:
	.loc 1 730 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 258
	jne	%d15, %d2, .L11
.LVL18:
.LBB554:
.LBB555:
	.loc 3 408 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 16, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 16
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 16, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 16
	or	%d15, %d15, 240
	st.w	[%SP] 16, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 16
	or	%d15, %d15, 1
	st.w	[%SP] 16, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 16
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 16
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 16, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 16
	or	%d15, %d15, 2
	st.w	[%SP] 16, %d15
.LBB556:
.LBB557:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE557:
.LBE556:
	.loc 3 421 0
	ld.w	%d15, [%SP] 16
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 16, %d15
.LBB558:
.LBB559:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE559:
.LBE558:
.LBB560:
.LBB561:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE561:
.LBE560:
.LBE555:
.LBE554:
	.loc 1 736 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24600
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 0, 30, 2
	st.w	[%a2]0, %d15
	.loc 1 737 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a2]0, %d15
	.loc 1 753 0
	movh	%d15, 16385
	addi	%d15, %d15, 14848
	st.w	[%a2]0, %d15
	.loc 1 759 0
	mov	%d15, 5
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24604
	st.w	[%a2]0, %d15
	.loc 1 782 0
	movh	%d15, 1
	addi	%d15, %d15, 15872
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24616
	st.w	[%a2]0, %d15
.LVL19:
.LBB562:
.LBB563:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 20, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 20
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 20, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 20
	or	%d15, %d15, 240
	st.w	[%SP] 20, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 20
	or	%d15, %d15, 1
	st.w	[%SP] 20, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 20
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 20
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 20, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 20
	or	%d15, %d15, 3
	st.w	[%SP] 20, %d15
.LBB564:
.LBB565:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE565:
.LBE564:
	.loc 3 456 0
	ld.w	%d15, [%SP] 20
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 20, %d15
.LBB566:
.LBB567:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE567:
.LBE566:
.LBB568:
.LBB569:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL20:
#NO_APP
	movh.a	%a15, 15
	lea	%a15, [%a15] 16959
.LVL21:
.L12:
.LBE569:
.LBE568:
.LBE563:
.LBE562:
	.loc 1 789 0 discriminator 3
#APP
	# 789 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
#NO_APP
	loop	%a15, .L12
.LVL22:
.LBB570:
.LBB571:
	.loc 3 408 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 24, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 24
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 24, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 24
	or	%d15, %d15, 240
	st.w	[%SP] 24, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 24
	or	%d15, %d15, 1
	st.w	[%SP] 24, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 24
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 24
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 24, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 24
	or	%d15, %d15, 2
	st.w	[%SP] 24, %d15
.LBB572:
.LBB573:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE573:
.LBE572:
	.loc 3 421 0
	ld.w	%d15, [%SP] 24
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 24, %d15
.LBB574:
.LBB575:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE575:
.LBE574:
.LBB576:
.LBB577:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE577:
.LBE576:
.LBE571:
.LBE570:
	.loc 1 807 0
	mov	%d15, 257
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24620
	st.w	[%a2]0, %d15
	.loc 1 813 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24600
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a2]0, %d15
.LVL23:
.LBB578:
.LBB579:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 28, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 28
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 28, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 28
	or	%d15, %d15, 240
	st.w	[%SP] 28, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 28
	or	%d15, %d15, 1
	st.w	[%SP] 28, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 28
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 28
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 28, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 28
	or	%d15, %d15, 3
	st.w	[%SP] 28, %d15
.LBB580:
.LBB581:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE581:
.LBE580:
	.loc 3 456 0
	ld.w	%d15, [%SP] 28
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 28, %d15
.LBB582:
.LBB583:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE583:
.LBE582:
.LBB584:
.LBB585:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE585:
.LBE584:
.LBE579:
.LBE578:
	.loc 1 818 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L13:
	.loc 1 818 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L13
	.loc 1 821 0 is_stmt 1 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L35:
	ld.w	%d15, [%a15]0
	jltz	%d15, .L35
.LVL24:
.LBB586:
.LBB587:
	.loc 3 408 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 32, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 32
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 32, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 32
	or	%d15, %d15, 240
	st.w	[%SP] 32, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 32
	or	%d15, %d15, 1
	st.w	[%SP] 32, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 32
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 32
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 32, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 32
	or	%d15, %d15, 2
	st.w	[%SP] 32, %d15
.LBB588:
.LBB589:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE589:
.LBE588:
	.loc 3 421 0
	ld.w	%d15, [%SP] 32
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 32, %d15
.LBB590:
.LBB591:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE591:
.LBE590:
.LBB592:
.LBB593:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE593:
.LBE592:
.LBE587:
.LBE586:
	.loc 1 824 0
	movh	%d15, 18211
	addi	%d15, %d15, 275
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	st.w	[%a2]0, %d15
.LVL25:
.LBB594:
.LBB595:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 36, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 36
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 36, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 36
	or	%d15, %d15, 240
	st.w	[%SP] 36, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 36
	or	%d15, %d15, 1
	st.w	[%SP] 36, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 36
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 36
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 36, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 36
	or	%d15, %d15, 3
	st.w	[%SP] 36, %d15
.LBB596:
.LBB597:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE597:
.LBE596:
	.loc 3 456 0
	ld.w	%d15, [%SP] 36
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 36, %d15
.LBB598:
.LBB599:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE599:
.LBE598:
.LBB600:
.LBB601:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE601:
.LBE600:
.LBE595:
.LBE594:
	.loc 1 827 0
	mov.aa	%a15, %a2
.L15:
	.loc 1 827 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L15
	.loc 1 828 0 is_stmt 1 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
.L34:
	ld.w	%d15, [%a15]0
	jltz	%d15, .L34
.LVL26:
.LBB602:
.LBB603:
	.loc 3 408 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 40, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 40
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 40, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 40
	or	%d15, %d15, 240
	st.w	[%SP] 40, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 40
	or	%d15, %d15, 1
	st.w	[%SP] 40, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 40
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 40
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 40, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 40
	or	%d15, %d15, 2
	st.w	[%SP] 40, %d15
.LBB604:
.LBB605:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE605:
.LBE604:
	.loc 3 421 0
	ld.w	%d15, [%SP] 40
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 40, %d15
.LBB606:
.LBB607:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE607:
.LBE606:
.LBB608:
.LBB609:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE609:
.LBE608:
.LBE603:
.LBE602:
	.loc 1 833 0
	movh	%d15, 8481
	addi	%d15, %d15, 18
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24628
	st.w	[%a2]0, %d15
.LVL27:
.LBB610:
.LBB611:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 44, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 44
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 44, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 44
	or	%d15, %d15, 240
	st.w	[%SP] 44, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 44
	or	%d15, %d15, 1
	st.w	[%SP] 44, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 44
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 44
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 44, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 44
	or	%d15, %d15, 3
	st.w	[%SP] 44, %d15
.LBB612:
.LBB613:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE613:
.LBE612:
	.loc 3 456 0
	ld.w	%d15, [%SP] 44
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 44, %d15
.LBB614:
.LBB615:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE615:
.LBE614:
.LBB616:
.LBB617:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE617:
.LBE616:
.LBE611:
.LBE610:
	.loc 1 844 0
	mov.aa	%a15, %a2
.L17:
	.loc 1 844 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L17
	.loc 1 845 0 is_stmt 1 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
.L33:
	ld.w	%d15, [%a15]0
	jltz	%d15, .L33
.LVL28:
.LBB618:
.LBB619:
	.loc 3 408 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 48, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 48
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 48, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 48
	or	%d15, %d15, 240
	st.w	[%SP] 48, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 48
	or	%d15, %d15, 1
	st.w	[%SP] 48, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 48
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 48
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 48, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 48
	or	%d15, %d15, 2
	st.w	[%SP] 48, %d15
.LBB620:
.LBB621:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE621:
.LBE620:
	.loc 3 421 0
	ld.w	%d15, [%SP] 48
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 48, %d15
.LBB622:
.LBB623:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE623:
.LBE622:
.LBB624:
.LBB625:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE625:
.LBE624:
.LBE619:
.LBE618:
	.loc 1 848 0
	movh	%d15, 512
	addi	%d15, %d15, 4609
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24640
	st.w	[%a2]0, %d15
.LVL29:
.LBB626:
.LBB627:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 52, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 52
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 52, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 52
	or	%d15, %d15, 240
	st.w	[%SP] 52, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 52
	or	%d15, %d15, 1
	st.w	[%SP] 52, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 52
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 52
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 52, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 52
	or	%d15, %d15, 3
	st.w	[%SP] 52, %d15
.LBB628:
.LBB629:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE629:
.LBE628:
	.loc 3 456 0
	ld.w	%d15, [%SP] 52
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 52, %d15
.LBB630:
.LBB631:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE631:
.LBE630:
.LBB632:
.LBB633:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE633:
.LBE632:
.LBE627:
.LBE626:
	.loc 1 851 0
	mov.aa	%a15, %a2
.L19:
	.loc 1 851 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L19
	.loc 1 854 0 is_stmt 1 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L32:
	ld.w	%d15, [%a15]0
	jltz	%d15, .L32
.LVL30:
.LBB634:
.LBB635:
	.loc 3 408 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 56, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 56
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 56, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 56
	or	%d15, %d15, 240
	st.w	[%SP] 56, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 56
	or	%d15, %d15, 1
	st.w	[%SP] 56, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 56
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 56
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 56, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 56
	or	%d15, %d15, 2
	st.w	[%SP] 56, %d15
.LBB636:
.LBB637:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE637:
.LBE636:
	.loc 3 421 0
	ld.w	%d15, [%SP] 56
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 56, %d15
.LBB638:
.LBB639:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE639:
.LBE638:
.LBB640:
.LBB641:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE641:
.LBE640:
.LBE635:
.LBE634:
	.loc 1 857 0
	movh	%d15, 22307
	addi	%d15, %d15, 275
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	st.w	[%a2]0, %d15
.LVL31:
.LBB642:
.LBB643:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 60, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 60
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 60, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 60
	or	%d15, %d15, 240
	st.w	[%SP] 60, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 60
	or	%d15, %d15, 1
	st.w	[%SP] 60, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 60
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 60
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 60, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 60
	or	%d15, %d15, 3
	st.w	[%SP] 60, %d15
.LBB644:
.LBB645:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE645:
.LBE644:
	.loc 3 456 0
	ld.w	%d15, [%SP] 60
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 60, %d15
.LBB646:
.LBB647:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE647:
.LBE646:
.LBB648:
.LBB649:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE649:
.LBE648:
.LBE643:
.LBE642:
	.loc 1 860 0
	mov.aa	%a15, %a2
.L21:
	.loc 1 860 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L21
.LVL32:
.LBB650:
.LBB651:
	.loc 3 408 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 64, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 64
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 64, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 64
	or	%d15, %d15, 240
	st.w	[%SP] 64, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 64
	or	%d15, %d15, 1
	st.w	[%SP] 64, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 64
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 64
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 64, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 64
	or	%d15, %d15, 2
	st.w	[%SP] 64, %d15
.LBB652:
.LBB653:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE653:
.LBE652:
	.loc 3 421 0
	ld.w	%d15, [%SP] 64
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 64, %d15
.LBB654:
.LBB655:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE655:
.LBE654:
.LBB656:
.LBB657:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE657:
.LBE656:
.LBE651:
.LBE650:
	.loc 1 865 0
	mov	%d15, 3
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	st.w	[%a15]0, %d15
	.loc 1 866 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L22:
	.loc 1 866 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L22
.LVL33:
.LBB658:
.LBB659:
	.loc 3 443 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 68, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 68
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 68, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 68
	or	%d15, %d15, 240
	st.w	[%SP] 68, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 68
	or	%d15, %d15, 1
	st.w	[%SP] 68, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 68
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 68
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 68, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 68
	or	%d15, %d15, 3
	st.w	[%SP] 68, %d15
.LBB660:
.LBB661:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE661:
.LBE660:
	.loc 3 456 0
	ld.w	%d15, [%SP] 68
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 68, %d15
.LBB662:
.LBB663:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE663:
.LBE662:
.LBB664:
.LBB665:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL34:
#NO_APP
.LBE665:
.LBE664:
.LBE659:
.LBE658:
.LBB666:
.LBB667:
	.loc 3 408 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 72, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 72
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 72, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 72
	or	%d15, %d15, 240
	st.w	[%SP] 72, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 72
	or	%d15, %d15, 1
	st.w	[%SP] 72, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 72
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 72
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 72, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 72
	or	%d15, %d15, 2
	st.w	[%SP] 72, %d15
.LBB668:
.LBB669:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE669:
.LBE668:
	.loc 3 421 0
	ld.w	%d15, [%SP] 72
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 72, %d15
.LBB670:
.LBB671:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE671:
.LBE670:
.LBB672:
.LBB673:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE673:
.LBE672:
.LBE667:
.LBE666:
	.loc 1 870 0
	mov	%d15, 2
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	st.w	[%a15]0, %d15
	.loc 1 871 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L23:
	.loc 1 871 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L23
.LVL35:
.LBB674:
.LBB675:
	.loc 3 443 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 76, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 76
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 76, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 76
	or	%d15, %d15, 240
	st.w	[%SP] 76, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 76
	or	%d15, %d15, 1
	st.w	[%SP] 76, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 76
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 76
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 76, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 76
	or	%d15, %d15, 3
	st.w	[%SP] 76, %d15
.LBB676:
.LBB677:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE677:
.LBE676:
	.loc 3 456 0
	ld.w	%d15, [%SP] 76
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 76, %d15
.LBB678:
.LBB679:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE679:
.LBE678:
.LBB680:
.LBB681:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL36:
#NO_APP
.LBE681:
.LBE680:
.LBE675:
.LBE674:
.LBB682:
.LBB683:
	.loc 3 408 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 80, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 80
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 80, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 80
	or	%d15, %d15, 240
	st.w	[%SP] 80, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 80
	or	%d15, %d15, 1
	st.w	[%SP] 80, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 80
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 80
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 80, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 80
	or	%d15, %d15, 2
	st.w	[%SP] 80, %d15
.LBB684:
.LBB685:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE685:
.LBE684:
	.loc 3 421 0
	ld.w	%d15, [%SP] 80
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 80, %d15
.LBB686:
.LBB687:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE687:
.LBE686:
.LBB688:
.LBB689:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE689:
.LBE688:
.LBE683:
.LBE682:
	.loc 1 875 0
	mov	%d15, 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	st.w	[%a15]0, %d15
	.loc 1 876 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L24:
	.loc 1 876 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L24
.LVL37:
.LBB690:
.LBB691:
	.loc 3 443 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 84, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 84
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 84, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 84
	or	%d15, %d15, 240
	st.w	[%SP] 84, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 84
	or	%d15, %d15, 1
	st.w	[%SP] 84, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 84
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 84
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 84, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 84
	or	%d15, %d15, 3
	st.w	[%SP] 84, %d15
.LBB692:
.LBB693:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE693:
.LBE692:
	.loc 3 456 0
	ld.w	%d15, [%SP] 84
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 84, %d15
.LBB694:
.LBB695:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE695:
.LBE694:
.LBB696:
.LBB697:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE697:
.LBE696:
.LBE691:
.LBE690:
	.loc 1 880 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
.L25:
	.loc 1 880 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L25
.LVL38:
.LBB698:
.LBB699:
	.loc 3 408 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP] 88, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 88
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 88, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 88
	or	%d15, %d15, 240
	st.w	[%SP] 88, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 88
	or	%d15, %d15, 1
	st.w	[%SP] 88, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 88
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 88
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 88, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 88
	or	%d15, %d15, 2
	st.w	[%SP] 88, %d15
.LBB700:
.LBB701:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE701:
.LBE700:
	.loc 3 421 0
	ld.w	%d15, [%SP] 88
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 88, %d15
.LBB702:
.LBB703:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE703:
.LBE702:
.LBB704:
.LBB705:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE705:
.LBE704:
.LBE699:
.LBE698:
	.loc 1 884 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24652
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 1
	st.w	[%a2]0, %d15
	.loc 1 885 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a2]0, %d15
.LVL39:
.LBB706:
.LBB707:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
	st.w	[%SP] 92, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 92
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 92, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 92
	or	%d15, %d15, 240
	st.w	[%SP] 92, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 92
	or	%d15, %d15, 1
	st.w	[%SP] 92, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 92
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 92
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 92, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 92
	or	%d15, %d15, 3
	st.w	[%SP] 92, %d15
.LBB708:
.LBB709:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE709:
.LBE708:
	.loc 3 456 0
	ld.w	%d15, [%SP] 92
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 92, %d15
.LBB710:
.LBB711:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE711:
.LBE710:
.LBB712:
.LBB713:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL40:
#NO_APP
.LBE713:
.LBE712:
.LBE707:
.LBE706:
.LBB714:
.LBB715:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL41:
#NO_APP
.LBE715:
.LBE714:
.LBB716:
.LBB717:
.LBB718:
.LBB719:
	.loc 3 342 0
	jeq	%d15, -1, .L26
	.loc 3 361 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
.L26:
.LBE719:
.LBE718:
	.loc 3 408 0
	ld.w	%d15, [%a15]0
.LVL42:
	st.w	[%SP] 96, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 96
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 96, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 96
	or	%d15, %d15, 240
	st.w	[%SP] 96, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 96
	or	%d15, %d15, 1
	st.w	[%SP] 96, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 96
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 96
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 96, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 96
	or	%d15, %d15, 2
	st.w	[%SP] 96, %d15
.LBB720:
.LBB721:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE721:
.LBE720:
	.loc 3 421 0
	ld.w	%d15, [%SP] 96
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 96, %d15
.LBB722:
.LBB723:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE723:
.LBE722:
.LBB724:
.LBB725:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE725:
.LBE724:
.LBE717:
.LBE716:
	.loc 1 891 0
	mov	%d15, 15
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24876
	st.w	[%a15]0, %d15
	.loc 1 895 0
	movh	%d15, 62195
	addi	%d15, %d15, -3342
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	st.w	[%a15]0, %d15
	.loc 1 896 0
	mov.u	%d15, 62194
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24864
	st.w	[%a15]0, %d15
.LVL43:
.LBB726:
.LBB727:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL44:
#NO_APP
.LBE727:
.LBE726:
.LBB728:
.LBB729:
.LBB730:
.LBB731:
	.loc 3 346 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0
	jeq	%d15, -1, .L27
	.loc 3 361 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
.L27:
.LBE731:
.LBE730:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
.LVL45:
	st.w	[%SP] 100, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 100
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 100, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 100
	or	%d15, %d15, 240
	st.w	[%SP] 100, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 100
	or	%d15, %d15, 1
	st.w	[%SP] 100, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 100
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 100
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 100, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 100
	or	%d15, %d15, 3
	st.w	[%SP] 100, %d15
.LBB732:
.LBB733:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE733:
.LBE732:
	.loc 3 456 0
	ld.w	%d15, [%SP] 100
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 100, %d15
.LBB734:
.LBB735:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE735:
.LBE734:
.LBB736:
.LBB737:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE737:
.LBE736:
.LBE729:
.LBE728:
.LFE19:
	.size	BrsHwPllInitPowerOn, .-BrsHwPllInitPowerOn
.section .text.BrsHwInitPortInput,"ax",@progbits
	.align 1
	.global	BrsHwInitPortInput
	.type	BrsHwInitPortInput, @function
BrsHwInitPortInput:
.LFB20:
	.loc 1 1047 0
	sub.a	%SP, 8
.LCFI2:
	st.w	[%SP] 4, %d4
.LVL46:
	extr.u	%d15, %d4, 8, 8
.LVL47:
	.loc 1 1048 0
	and	%d4, %d4, 255
	sh	%d4, %d4, 8
	and	%d2, %d15, 252
	add	%d4, %d2
	mov.a	%a2, %d4
	lea	%a15, [%a2] -24560
	addih.a	%a15, %a15, 61444
	ld.w	%d3, [%a15]0
	and	%d15, %d15, 3
.LVL48:
	sh	%d15, 3
	add	%d2, %d15, 3
	mov	%d4, 31
	sh	%d2, %d4, %d2
	andn	%d2, %d3, %d2
	st.w	[%a15]0, %d2
.LVL49:
	.loc 1 1049 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%SP] 6
	addi	%d2, %d2, 16
	sh	%d15, %d2, %d15
	or	%d15, %d3
	st.w	[%a15]0, %d15
	ret
.LFE20:
	.size	BrsHwInitPortInput, .-BrsHwInitPortInput
.section .text.BrsHwInitPortOutput,"ax",@progbits
	.align 1
	.global	BrsHwInitPortOutput
	.type	BrsHwInitPortOutput, @function
BrsHwInitPortOutput:
.LFB21:
	.loc 1 1063 0
	sub.a	%SP, 8
.LCFI3:
	st.w	[%SP] 4, %d4
.LVL50:
	extr.u	%d15, %d4, 8, 8
.LVL51:
	.loc 1 1064 0
	and	%d4, %d4, 255
	sh	%d4, %d4, 8
	and	%d2, %d15, 252
	add	%d4, %d2
	mov.a	%a2, %d4
	lea	%a15, [%a2] -24560
	addih.a	%a15, %a15, 61444
	ld.w	%d3, [%a15]0
	and	%d15, %d15, 3
.LVL52:
	sh	%d15, 3
	add	%d15, 3
	mov	%d2, 31
	sh	%d2, %d2, %d15
	andn	%d2, %d3, %d2
	st.w	[%a15]0, %d2
.LVL53:
	.loc 1 1065 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%SP] 6
	addi	%d2, %d2, 16
	sh	%d15, %d2, %d15
	or	%d15, %d3
	st.w	[%a15]0, %d15
	ret
.LFE21:
	.size	BrsHwInitPortOutput, .-BrsHwInitPortOutput
.section .text.BrsHwInitPortInputOutput,"ax",@progbits
	.align 1
	.global	BrsHwInitPortInputOutput
	.type	BrsHwInitPortInputOutput, @function
BrsHwInitPortInputOutput:
.LFB22:
	.loc 1 1079 0
	sub.a	%SP, 8
.LCFI4:
	st.w	[%SP] 4, %d4
	.loc 1 1081 0
	call	BrsHwInitPortOutput
.LVL54:
	ret
.LFE22:
	.size	BrsHwInitPortInputOutput, .-BrsHwInitPortInputOutput
.section .text.BrsHwInitPortConfig,"ax",@progbits
	.align 1
	.global	BrsHwInitPortConfig
	.type	BrsHwInitPortConfig, @function
BrsHwInitPortConfig:
.LFB23:
	.loc 1 1097 0
.LVL55:
	sub.a	%SP, 16
.LCFI5:
	st.w	[%SP] 4, %d4
	and	%d2, %d4, 255
.LVL56:
	extr.u	%d4, %d4, 8, 8
.LVL57:
.LBB738:
.LBB739:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL58:
#NO_APP
.LBE739:
.LBE738:
.LBB740:
.LBB741:
.LBB742:
.LBB743:
	.loc 3 346 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 25256
	.loc 3 342 0
	jeq	%d15, -1, .L55
	.loc 3 361 0
	movh.a	%a2, hi:kBrsWdtCon0Addresses_ROM
	lea	%a2, [%a2] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a2, %a2, %d15, 3
	ld.a	%a2, [%a2]0
.L55:
.LBE743:
.LBE742:
	.loc 3 408 0
	ld.w	%d15, [%a2]0
.LVL59:
	st.w	[%SP] 8, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 8
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 8, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 240
	st.w	[%SP] 8, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 1
	st.w	[%SP] 8, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 8
	st.w	[%a2]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 8
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 8, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 2
	st.w	[%SP] 8, %d15
.LBB744:
.LBB745:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE745:
.LBE744:
	.loc 3 421 0
	ld.w	%d15, [%SP] 8
	st.w	[%a2]0, %d15
	.loc 3 422 0
	st.w	[%SP] 8, %d15
.LBB746:
.LBB747:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE747:
.LBE746:
.LBB748:
.LBB749:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE749:
.LBE748:
.LBE741:
.LBE740:
	.loc 1 1100 0
	sh	%d15, %d2, 8
	sh	%d2, %d4, -3
.LVL60:
	mov.a	%a2, %d15
	addsc.a	%a15, %a2, %d2, 2
	lea	%a15, [%a15] -24512
	addih.a	%a15, %a15, 61444
	ld.w	%d2, [%a15]0
	and	%d4, %d4, 7
.LVL61:
	sh	%d4, 2
	mov	%d15, 15
	sh	%d15, %d15, %d4
	andn	%d15, %d2, %d15
	st.w	[%a15]0, %d15
	.loc 1 1101 0
	and	%d5, %d5, 255
.LVL62:
	jge.u	%d5, 4, .L56
	movh.a	%a2, hi:.L58
	lea	%a2, [%a2] lo:.L58
	addsc.a	%a2, %a2, %d5, 2
	ji	%a2
	.align 2
	.align 2
.L58:
	.code32
	j	.L57
	.code32
	j	.L59
	.code32
	j	.L60
	.code32
	j	.L61
.L57:
	.loc 1 1104 0
	ld.w	%d15, [%a15]0
	insert	%d4, %d15, 1, %d4, 1
	st.w	[%a15]0, %d4
	.loc 1 1105 0
	j	.L56
.L59:
	.loc 1 1107 0
	ld.w	%d15, [%a15]0
	insert	%d4, %d15, 1, %d4, 1
	st.w	[%a15]0, %d4
	.loc 1 1108 0
	j	.L56
.L60:
	.loc 1 1110 0
	ld.w	%d15, [%a15]0
	insert	%d4, %d15, 3, %d4, 2
	st.w	[%a15]0, %d4
	.loc 1 1111 0
	j	.L56
.L61:
	.loc 1 1113 0
	ld.w	%d15, [%a15]0
	insert	%d4, %d15, 3, %d4, 2
	st.w	[%a15]0, %d4
.L56:
.LVL63:
.LBB750:
.LBB751:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL64:
#NO_APP
.LBE751:
.LBE750:
.LBB752:
.LBB753:
.LBB754:
.LBB755:
	.loc 3 346 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0
	jeq	%d15, -1, .L62
	.loc 3 361 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
.L62:
.LBE755:
.LBE754:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
.LVL65:
	st.w	[%SP] 12, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 12
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 12, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 240
	st.w	[%SP] 12, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 1
	st.w	[%SP] 12, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 12
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 12
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 12, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 3
	st.w	[%SP] 12, %d15
.LBB756:
.LBB757:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE757:
.LBE756:
	.loc 3 456 0
	ld.w	%d15, [%SP] 12
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 12, %d15
.LBB758:
.LBB759:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE759:
.LBE758:
.LBB760:
.LBB761:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE761:
.LBE760:
.LBE753:
.LBE752:
.LFE23:
	.size	BrsHwInitPortConfig, .-BrsHwInitPortConfig
.section .text.RamCodeSection,"ax",@progbits
	.align 1
	.global	BrsHwPort_SetLevel
	.type	BrsHwPort_SetLevel, @function
BrsHwPort_SetLevel:
.LFB24:
	.loc 1 1138 0
.LVL66:
	sub.a	%SP, 8
.LCFI6:
	st.w	[%SP] 4, %d4
	and	%d15, %d4, 255
.LVL67:
	extr.u	%d4, %d4, 8, 8
.LVL68:
	.loc 1 1139 0
	jnz	%d5, .L66
	.loc 1 1141 0
	sh	%d15, %d15, 8
.LVL69:
	mov.a	%a2, %d15
	lea	%a15, [%a2] -24576
	addih.a	%a15, %a15, 61444
	ld.w	%d15, [%a15]0
	insert	%d4, %d15, 0, %d4, 1
.LVL70:
	st.w	[%a15]0, %d4
.LVL71:
	ret
.LVL72:
.L66:
	.loc 1 1145 0
	sh	%d15, %d15, 8
.LVL73:
	mov.a	%a2, %d15
	lea	%a15, [%a2] -24576
	addih.a	%a15, %a15, 61444
	ld.w	%d15, [%a15]0
	insert	%d4, %d15, 1, %d4, 1
.LVL74:
	st.w	[%a15]0, %d4
.LVL75:
	ret
.LFE24:
	.size	BrsHwPort_SetLevel, .-BrsHwPort_SetLevel
	.align 1
	.global	BrsHwPort_GetLevel
	.type	BrsHwPort_GetLevel, @function
BrsHwPort_GetLevel:
.LFB25:
	.loc 1 1162 0
	sub.a	%SP, 8
.LCFI7:
	st.w	[%SP] 4, %d4
	.loc 1 1165 0
	and	%d4, %d4, 255
	sh	%d4, %d4, 8
	mov.a	%a2, %d4
	lea	%a15, [%a2] -24540
	addih.a	%a15, %a15, 61444
	ld.w	%d2, [%a15]0
.LVL76:
	.loc 1 1166 0
	ld.bu	%d15, [%SP] 5
	.loc 1 1176 0
	extr.u	%d2, %d2, %d15, 1
.LVL77:
	ret
.LFE25:
	.size	BrsHwPort_GetLevel, .-BrsHwPort_GetLevel
.section .text.BrsHwPortInitPowerOn,"ax",@progbits
	.align 1
	.global	BrsHwPortInitPowerOn
	.type	BrsHwPortInitPowerOn, @function
BrsHwPortInitPowerOn:
.LFB26:
	.loc 1 1191 0
	ret
.LFE26:
	.size	BrsHwPortInitPowerOn, .-BrsHwPortInitPowerOn
.section .text.BrsHwDisableInterruptAtPowerOn,"ax",@progbits
	.align 1
	.global	BrsHwDisableInterruptAtPowerOn
	.type	BrsHwDisableInterruptAtPowerOn, @function
BrsHwDisableInterruptAtPowerOn:
.LFB27:
	.loc 1 1550 0
	ret
.LFE27:
	.size	BrsHwDisableInterruptAtPowerOn, .-BrsHwDisableInterruptAtPowerOn
.section .text.BrsHw_ExceptionTable_Init,"ax",@progbits
	.align 1
	.global	BrsHw_ExceptionTable_Init
	.type	BrsHw_ExceptionTable_Init, @function
BrsHw_ExceptionTable_Init:
.LFB28:
	.loc 1 1564 0
.LVL78:
	.loc 1 1564 0
	sub.a	%SP, 8
.LCFI8:
	mov.d	%d2, %a4
	mov.d	%d15, %a5
.LVL79:
.LBB762:
.LBB763:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d3, LO:65052
	# 0 "" 2
.LVL80:
#NO_APP
.LBE763:
.LBE762:
	.loc 1 1570 0
	jeq	%d2, -1, .L72
	.loc 1 1571 0
	and	%d4, %d2, 255
	jz	%d4, .L72
.L82:
	.loc 1 1574 0 discriminator 1
	j	.L82
.L72:
	.loc 1 1577 0
	jeq	%d15, -1, .L74
	.loc 1 1578 0
	insert	%d4, %d15, 0, 13, 19
	jz	%d4, .L74
.L83:
	.loc 1 1581 0 discriminator 2
	j	.L83
.LVL81:
.L74:
	.loc 1 1584 0
	mov	%d4, %d3
.LVL82:
.LBB764:
.LBB765:
.LBB766:
.LBB767:
	.loc 3 346 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0
	jeq	%d3, -1, .L76
.LVL83:
	.loc 3 361 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d3, 3
	ld.a	%a15, [%a15]0
.L76:
.LBE767:
.LBE766:
	.loc 3 408 0
	ld.w	%d5, [%a15]0
	st.w	[%SP]0, %d5
	.loc 3 409 0
	ld.w	%d5, [%SP]0
	andn	%d5, %d5, ~(-255)
	st.w	[%SP]0, %d5
	.loc 3 410 0
	ld.w	%d5, [%SP]0
	or	%d5, %d5, 240
	st.w	[%SP]0, %d5
	.loc 3 411 0
	ld.w	%d5, [%SP]0
	or	%d5, %d5, 1
	st.w	[%SP]0, %d5
	.loc 3 413 0
	ld.w	%d5, [%SP]0
	st.w	[%a15]0, %d5
	.loc 3 418 0
	ld.w	%d5, [%SP]0
	andn	%d5, %d5, ~(-16)
	st.w	[%SP]0, %d5
	.loc 3 419 0
	ld.w	%d5, [%SP]0
	or	%d5, %d5, 2
	st.w	[%SP]0, %d5
.LBB768:
.LBB769:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE769:
.LBE768:
	.loc 3 421 0
	ld.w	%d5, [%SP]0
	st.w	[%a15]0, %d5
	.loc 3 422 0
	st.w	[%SP]0, %d5
.LBB770:
.LBB771:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE771:
.LBE770:
.LBB772:
.LBB773:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE773:
.LBE772:
.LBE765:
.LBE764:
	.loc 1 1585 0
	jeq	%d2, -1, .L77
.LBB774:
.LBB775:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L77:
.LVL84:
.LBE775:
.LBE774:
.LBB776:
.LBB777:
	.loc 2 137 0 discriminator 1
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65060, %d2
	# 0 "" 2
#NO_APP
.LBE777:
.LBE776:
.LBB778:
.LBB779:
	.loc 2 184 0 discriminator 1
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE779:
.LBE778:
	.loc 1 1588 0 discriminator 1
	jeq	%d15, -1, .L78
.LBB780:
.LBB781:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L78:
.LVL85:
.LBE781:
.LBE780:
.LBB782:
.LBB783:
	.loc 2 137 0 discriminator 1
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65056, %d15
	# 0 "" 2
#NO_APP
.LBE783:
.LBE782:
.LBB784:
.LBB785:
	.loc 2 184 0 discriminator 1
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE785:
.LBE784:
.LBB786:
.LBB787:
	.loc 2 190 0 discriminator 1
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL86:
#NO_APP
.LBE787:
.LBE786:
.LBB788:
.LBB789:
	.loc 2 137 0 discriminator 1
	mov	%d15, 0
.LVL87:
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:37388, %d15
	# 0 "" 2
#NO_APP
.LBE789:
.LBE788:
.LBB790:
.LBB791:
	.loc 2 184 0 discriminator 1
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
.LVL88:
#NO_APP
.LBE791:
.LBE790:
.LBB792:
.LBB793:
.LBB794:
.LBB795:
	.loc 3 346 0 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0 discriminator 1
	jeq	%d4, -1, .L79
	.loc 3 361 0
	movh	%d15, hi:kBrsWdtCon0Addresses_ROM
	addi	%d15, %d15, lo:kBrsWdtCon0Addresses_ROM
	mov.a	%a2, %d15
	addsc.a	%a15, %a2, %d3, 3
	ld.a	%a15, [%a15]0
.L79:
.LBE795:
.LBE794:
	.loc 3 443 0
	ld.w	%d5, [%a15]0
	st.w	[%SP] 4, %d5
	.loc 3 444 0
	ld.w	%d15, [%SP] 4
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 4, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 240
	st.w	[%SP] 4, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 1
	st.w	[%SP] 4, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 4
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 4
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 4, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 3
	st.w	[%SP] 4, %d15
.LBB796:
.LBB797:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE797:
.LBE796:
	.loc 3 456 0
	ld.w	%d15, [%SP] 4
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 4, %d15
.LBB798:
.LBB799:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE799:
.LBE798:
.LBB800:
.LBB801:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE801:
.LBE800:
.LBE793:
.LBE792:
.LFE28:
	.size	BrsHw_ExceptionTable_Init, .-BrsHw_ExceptionTable_Init
.section .text.BrsHwSoftwareResetECU,"ax",@progbits
	.align 1
	.global	BrsHwSoftwareResetECU
	.type	BrsHwSoftwareResetECU, @function
BrsHwSoftwareResetECU:
.LFB29:
	.loc 1 1604 0
	sub.a	%SP, 16
.LCFI9:
.LVL89:
	.loc 1 1607 0
	call	BrsMain_SoftwareResetECU_Hook
.LVL90:
.LBB802:
.LBB803:
	.loc 3 408 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	st.w	[%SP]0, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP]0
	andn	%d15, %d15, ~(-255)
	st.w	[%SP]0, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 240
	st.w	[%SP]0, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 1
	st.w	[%SP]0, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP]0
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP]0
	andn	%d15, %d15, ~(-16)
	st.w	[%SP]0, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 2
	st.w	[%SP]0, %d15
.LBB804:
.LBB805:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE805:
.LBE804:
	.loc 3 421 0
	ld.w	%d15, [%SP]0
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP]0, %d15
.LBB806:
.LBB807:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE807:
.LBE806:
.LBB808:
.LBB809:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE809:
.LBE808:
.LBE803:
.LBE802:
	.loc 1 1616 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24664
	ld.w	%d15, [%a2]0
.LVL91:
	.loc 1 1618 0
	insert	%d15, %d15, 1, 8, 2
.LVL92:
	.loc 1 1619 0
	st.w	[%a2]0, %d15
.LVL93:
.LBB810:
.LBB811:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
.LVL94:
	st.w	[%SP] 4, %d15
.LVL95:
	.loc 3 444 0
	ld.w	%d15, [%SP] 4
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 4, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 240
	st.w	[%SP] 4, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 1
	st.w	[%SP] 4, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 4
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 4
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 4, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 3
	st.w	[%SP] 4, %d15
.LBB812:
.LBB813:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE813:
.LBE812:
	.loc 3 456 0
	ld.w	%d15, [%SP] 4
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 4, %d15
.LBB814:
.LBB815:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE815:
.LBE814:
.LBB816:
.LBB817:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
.LVL96:
#NO_APP
.LBE817:
.LBE816:
.LBE811:
.LBE810:
.LBB818:
.LBB819:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL97:
#NO_APP
.LBE819:
.LBE818:
.LBB820:
.LBB821:
.LBB822:
.LBB823:
	.loc 3 342 0
	jeq	%d15, -1, .L85
	.loc 3 361 0
	movh	%d2, hi:kBrsWdtCon0Addresses_ROM
	addi	%d2, %d2, lo:kBrsWdtCon0Addresses_ROM
	mov.a	%a2, %d2
	addsc.a	%a15, %a2, %d15, 3
	ld.a	%a15, [%a15]0
.L85:
.LBE823:
.LBE822:
	.loc 3 408 0
	ld.w	%d15, [%a15]0
.LVL98:
	st.w	[%SP] 8, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP] 8
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 8, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 240
	st.w	[%SP] 8, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 1
	st.w	[%SP] 8, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP] 8
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP] 8
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 8, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP] 8
	or	%d15, %d15, 2
	st.w	[%SP] 8, %d15
.LBB824:
.LBB825:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE825:
.LBE824:
	.loc 3 421 0
	ld.w	%d15, [%SP] 8
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP] 8, %d15
.LBB826:
.LBB827:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE827:
.LBE826:
.LBB828:
.LBB829:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE829:
.LBE828:
.LBE821:
.LBE820:
	.loc 1 1636 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24672
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
.LVL99:
.LBB830:
.LBB831:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL100:
#NO_APP
.LBE831:
.LBE830:
.LBB832:
.LBB833:
.LBB834:
.LBB835:
	.loc 3 346 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0
	jeq	%d15, -1, .L86
	.loc 3 361 0
	movh	%d2, hi:kBrsWdtCon0Addresses_ROM
	addi	%d2, %d2, lo:kBrsWdtCon0Addresses_ROM
	mov.a	%a2, %d2
	addsc.a	%a15, %a2, %d15, 3
	ld.a	%a15, [%a15]0
.L86:
.LBE835:
.LBE834:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
.LVL101:
	st.w	[%SP] 12, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 12
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 12, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 240
	st.w	[%SP] 12, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 1
	st.w	[%SP] 12, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 12
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 12
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 12, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 12
	or	%d15, %d15, 3
	st.w	[%SP] 12, %d15
.LBB836:
.LBB837:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE837:
.LBE836:
	.loc 3 456 0
	ld.w	%d15, [%SP] 12
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 12, %d15
.LBB838:
.LBB839:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE839:
.LBE838:
.LBB840:
.LBB841:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L87:
.LBE841:
.LBE840:
.LBE833:
.LBE832:
	.loc 1 1643 0 discriminator 1
	j	.L87
.LFE29:
	.size	BrsHwSoftwareResetECU, .-BrsHwSoftwareResetECU
.section .text.brsMainStartup,"ax",@progbits
	.align 1
	.global	BrsHwGetResetReasonStartup
	.type	BrsHwGetResetReasonStartup, @function
BrsHwGetResetReasonStartup:
.LFB30:
	.loc 1 1664 0
	.loc 1 1665 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24656
	ld.w	%d2, [%a15]0
	.loc 1 1673 0
	nand.t	%d2, %d2,4, %d2,4
	ret
.LFE30:
	.size	BrsHwGetResetReasonStartup, .-BrsHwGetResetReasonStartup
.section .text.BrsHwTime100NOP,"ax",@progbits
	.align 1
	.global	BrsHwTime100NOP
	.type	BrsHwTime100NOP, @function
BrsHwTime100NOP:
.LFB31:
	.loc 1 1690 0
	.loc 1 1691 0
#APP
	# 1691 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1691 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1691 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1691 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1691 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1691 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1691 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1691 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1691 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1691 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	.loc 1 1692 0
	# 1692 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1692 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1692 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1692 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1692 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1692 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1692 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1692 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1692 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1692 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	.loc 1 1693 0
	# 1693 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1693 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1693 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1693 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1693 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1693 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1693 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1693 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1693 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1693 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	.loc 1 1694 0
	# 1694 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1694 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1694 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1694 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1694 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1694 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1694 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1694 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1694 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1694 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	.loc 1 1695 0
	# 1695 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1695 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1695 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1695 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1695 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1695 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1695 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1695 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1695 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1695 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	.loc 1 1697 0
	# 1697 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1697 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1697 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1697 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1697 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1697 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1697 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1697 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1697 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1697 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	.loc 1 1698 0
	# 1698 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1698 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1698 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1698 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1698 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1698 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1698 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1698 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1698 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1698 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	.loc 1 1699 0
	# 1699 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1699 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1699 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1699 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1699 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1699 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1699 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1699 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1699 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1699 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	.loc 1 1700 0
	# 1700 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1700 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1700 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1700 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1700 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1700 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1700 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1700 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1700 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1700 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	.loc 1 1701 0
	# 1701 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1701 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1701 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1701 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1701 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1701 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1701 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1701 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1701 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
	# 1701 "../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c" 1
	nop
	# 0 "" 2
#NO_APP
	ret
.LFE31:
	.size	BrsHwTime100NOP, .-BrsHwTime100NOP
.section .text.BrsHw_GetCore,"ax",@progbits
	.align 1
	.global	BrsHw_GetCore
	.type	BrsHw_GetCore, @function
BrsHw_GetCore:
.LFB32:
	.loc 1 1738 0
.LVL102:
	.loc 1 1740 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d2, LO:65052
	# 0 "" 2
#NO_APP
	ret
.LFE32:
	.size	BrsHw_GetCore, .-BrsHw_GetCore
.section .text.BrsHw_EnableInterrupt,"ax",@progbits
	.align 1
	.global	BrsHw_EnableInterrupt
	.type	BrsHw_EnableInterrupt, @function
BrsHw_EnableInterrupt:
.LFB33:
	.loc 1 1758 0
.LVL103:
	.loc 1 1760 0
	mov.a	%a2, %d4
	lea	%a15, [%a2] -32768
	addih.a	%a15, %a15, 61444
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a15]0, %d15
	.loc 1 1761 0
	ld.w	%d15, [%a15]0
	or	%d5, %d15
.LVL104:
	st.w	[%a15]0, %d5
	ret
.LFE33:
	.size	BrsHw_EnableInterrupt, .-BrsHw_EnableInterrupt
.section .text.BrsHw_DisableInterrupt,"ax",@progbits
	.align 1
	.global	BrsHw_DisableInterrupt
	.type	BrsHw_DisableInterrupt, @function
BrsHw_DisableInterrupt:
.LFB34:
	.loc 1 1774 0
.LVL105:
	.loc 1 1776 0
	mov.a	%a2, %d4
	lea	%a15, [%a2] -32768
	addih.a	%a15, %a15, 61444
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 10, 1
	st.w	[%a15]0, %d15
	ret
.LFE34:
	.size	BrsHw_DisableInterrupt, .-BrsHw_DisableInterrupt
.section .text.BrsHw_TriggerSoftwareInterrupt,"ax",@progbits
	.align 1
	.global	BrsHw_TriggerSoftwareInterrupt
	.type	BrsHw_TriggerSoftwareInterrupt, @function
BrsHw_TriggerSoftwareInterrupt:
.LFB35:
	.loc 1 1790 0
.LVL106:
	.loc 1 1791 0
	mov.a	%a2, %d4
	lea	%a15, [%a2] -32768
	addih.a	%a15, %a15, 61444
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 26, 1
	st.w	[%a15]0, %d15
	ret
.LFE35:
	.size	BrsHw_TriggerSoftwareInterrupt, .-BrsHw_TriggerSoftwareInterrupt
.section .text.BrsHwDisableEccErrorReporting,"ax",@progbits
	.align 1
	.global	BrsHwDisableEccErrorReporting
	.type	BrsHwDisableEccErrorReporting, @function
BrsHwDisableEccErrorReporting:
.LFB36:
	.loc 1 1805 0
	sub.a	%SP, 8
.LCFI10:
.LVL107:
.LBB842:
.LBB843:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL108:
#NO_APP
.LBE843:
.LBE842:
.LBB844:
.LBB845:
.LBB846:
.LBB847:
	.loc 3 346 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0
	jeq	%d15, -1, .L97
	.loc 3 361 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
.L97:
.LBE847:
.LBE846:
	.loc 3 408 0
	ld.w	%d15, [%a15]0
.LVL109:
	st.w	[%SP]0, %d15
	.loc 3 409 0
	ld.w	%d15, [%SP]0
	andn	%d15, %d15, ~(-255)
	st.w	[%SP]0, %d15
	.loc 3 410 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 240
	st.w	[%SP]0, %d15
	.loc 3 411 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 1
	st.w	[%SP]0, %d15
	.loc 3 413 0
	ld.w	%d15, [%SP]0
	st.w	[%a15]0, %d15
	.loc 3 418 0
	ld.w	%d15, [%SP]0
	andn	%d15, %d15, ~(-16)
	st.w	[%SP]0, %d15
	.loc 3 419 0
	ld.w	%d15, [%SP]0
	or	%d15, %d15, 2
	st.w	[%SP]0, %d15
.LBB848:
.LBB849:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE849:
.LBE848:
	.loc 3 421 0
	ld.w	%d15, [%SP]0
	st.w	[%a15]0, %d15
	.loc 3 422 0
	st.w	[%SP]0, %d15
.LBB850:
.LBB851:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE851:
.LBE850:
.LBB852:
.LBB853:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE853:
.LBE852:
.LBE845:
.LBE844:
	.loc 1 1821 0
	movh	%d15, 1
	movh.a	%a15, 63616
	lea	%a15, [%a15] 4356
	st.w	[%a15]0, %d15
	.loc 1 1823 0
	movh.a	%a15, 63618
	lea	%a15, [%a15] 4356
	st.w	[%a15]0, %d15
	.loc 1 1826 0
	movh.a	%a15, 63620
	lea	%a15, [%a15] 4356
	st.w	[%a15]0, %d15
	.loc 1 1837 0
	movh	%d15, 49152
	movh.a	%a15, 63492
	lea	%a15, [%a15] 72
	st.w	[%a15]0, %d15
.LVL110:
.LBB854:
.LBB855:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65052
	# 0 "" 2
.LVL111:
#NO_APP
.LBE855:
.LBE854:
.LBB856:
.LBB857:
.LBB858:
.LBB859:
	.loc 3 346 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	.loc 3 342 0
	jeq	%d15, -1, .L98
	.loc 3 361 0
	movh.a	%a15, hi:kBrsWdtCon0Addresses_ROM
	lea	%a15, [%a15] lo:kBrsWdtCon0Addresses_ROM
	addsc.a	%a15, %a15, %d15, 3
	ld.a	%a15, [%a15]0
.L98:
.LBE859:
.LBE858:
	.loc 3 443 0
	ld.w	%d15, [%a15]0
.LVL112:
	st.w	[%SP] 4, %d15
	.loc 3 444 0
	ld.w	%d15, [%SP] 4
	andn	%d15, %d15, ~(-255)
	st.w	[%SP] 4, %d15
	.loc 3 445 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 240
	st.w	[%SP] 4, %d15
	.loc 3 446 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 1
	st.w	[%SP] 4, %d15
	.loc 3 448 0
	ld.w	%d15, [%SP] 4
	st.w	[%a15]0, %d15
	.loc 3 453 0
	ld.w	%d15, [%SP] 4
	andn	%d15, %d15, ~(-16)
	st.w	[%SP] 4, %d15
	.loc 3 454 0
	ld.w	%d15, [%SP] 4
	or	%d15, %d15, 3
	st.w	[%SP] 4, %d15
.LBB860:
.LBB861:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE861:
.LBE860:
	.loc 3 456 0
	ld.w	%d15, [%SP] 4
	st.w	[%a15]0, %d15
	.loc 3 457 0
	st.w	[%SP] 4, %d15
.LBB862:
.LBB863:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE863:
.LBE862:
.LBB864:
.LBB865:
	.loc 2 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE865:
.LBE864:
.LBE857:
.LBE856:
.LFE36:
	.size	BrsHwDisableEccErrorReporting, .-BrsHwDisableEccErrorReporting
	.global	bmiField0
.section .BMHD0,"aw",@progbits
	.align 5
	.type	bmiField0, @object
	.size	bmiField0, 512
bmiField0:
	.word	-1286012914
	.word	-2147483648
	.word	-645944813
	.word	645944812
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1126240820
	.word	0
	.word	0
	.word	0
	.global	kBrsWdtCon0Addresses_ROM
.section .rodata,"a",@progbits
	.align 2
	.type	kBrsWdtCon0Addresses_ROM, @object
	.size	kBrsWdtCon0Addresses_ROM, 64
kBrsWdtCon0Addresses_ROM:
	.word	-268213684
	.word	-268213680
	.word	-268213672
	.word	-268213668
	.word	-268213660
	.word	-268213656
	.word	-268213648
	.word	-268213644
	.word	-268213636
	.word	-268213632
	.word	0
	.word	0
	.word	-268213624
	.word	-268213620
	.word	-268213592
	.word	-268213588
	.global	kBrsWdtCon0Addresses_RAM
.section .rodata.RamConstSection,"a",@progbits
	.align 2
	.type	kBrsWdtCon0Addresses_RAM, @object
	.size	kBrsWdtCon0Addresses_RAM, 64
kBrsWdtCon0Addresses_RAM:
	.word	-268213684
	.word	-268213680
	.word	-268213672
	.word	-268213668
	.word	-268213660
	.word	-268213656
	.word	-268213648
	.word	-268213644
	.word	-268213636
	.word	-268213632
	.word	0
	.word	0
	.word	-268213624
	.word	-268213620
	.word	-268213592
	.word	-268213588
	.global	kBrsHwBugfixVersion
.section .rodata,"a",@progbits
	.type	kBrsHwBugfixVersion, @object
	.size	kBrsHwBugfixVersion, 1
kBrsHwBugfixVersion:
	.byte	7
	.global	kBrsHwSubVersion
	.type	kBrsHwSubVersion, @object
	.size	kBrsHwSubVersion, 1
kBrsHwSubVersion:
	.byte	1
	.global	kBrsHwMainVersion
	.type	kBrsHwMainVersion, @object
	.size	kBrsHwMainVersion, 1
kBrsHwMainVersion:
	.byte	3
	.global	BRSHW_PORT_CONF_SHARPEDGE
	.type	BRSHW_PORT_CONF_SHARPEDGE, @object
	.size	BRSHW_PORT_CONF_SHARPEDGE, 1
BRSHW_PORT_CONF_SHARPEDGE:
	.zero	1
	.global	BRSHW_PORT_CONF_ETHERNET
	.type	BRSHW_PORT_CONF_ETHERNET, @object
	.size	BRSHW_PORT_CONF_ETHERNET, 1
BRSHW_PORT_CONF_ETHERNET:
	.byte	3
	.global	BRSHW_PORT_CONF_CAN
	.type	BRSHW_PORT_CONF_CAN, @object
	.size	BRSHW_PORT_CONF_CAN, 1
BRSHW_PORT_CONF_CAN:
	.byte	1
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.byte	0x4
	.uaword	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.byte	0x4
	.uaword	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x68
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI3-.LFB21
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.byte	0x4
	.uaword	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.byte	0x4
	.uaword	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.byte	0x4
	.uaword	.LCFI8-.LFB28
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.byte	0x4
	.uaword	.LCFI9-.LFB29
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.byte	0x4
	.uaword	.LCFI10-.LFB36
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE36:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "../../../BSW/_Common/Platform_Types.h"
	.file 5 "Include/BrsHw_Ports.h"
	.file 6 "Include/BrsMain_Types.h"
	.file 7 "Include/BrsMain.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2a48
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/Demo/DemoBm/Appl/Source/BrsHw.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoBm\\\\Appl"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x68
	.uaword	0x152
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x6b
	.uaword	0x1b0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x6c
	.uaword	0x1ca
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.uaword	0x172
	.uleb128 0x5
	.byte	0x1
	.byte	0x5
	.byte	0x2b
	.uaword	0x665
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_0"
	.sleb128 0
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_1"
	.sleb128 1
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_2"
	.sleb128 2
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_3"
	.sleb128 3
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_4"
	.sleb128 4
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_5"
	.sleb128 5
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_6"
	.sleb128 6
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_7"
	.sleb128 7
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_8"
	.sleb128 8
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_9"
	.sleb128 9
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_10"
	.sleb128 10
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_11"
	.sleb128 11
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_12"
	.sleb128 12
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_13"
	.sleb128 13
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_14"
	.sleb128 14
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_15"
	.sleb128 15
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_16"
	.sleb128 16
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_17"
	.sleb128 17
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_18"
	.sleb128 18
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_19"
	.sleb128 19
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_20"
	.sleb128 20
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_21"
	.sleb128 21
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_22"
	.sleb128 22
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_23"
	.sleb128 23
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_24"
	.sleb128 24
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_25"
	.sleb128 25
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_26"
	.sleb128 26
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_27"
	.sleb128 27
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_28"
	.sleb128 28
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_29"
	.sleb128 29
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_30"
	.sleb128 30
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_31"
	.sleb128 31
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_32"
	.sleb128 32
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_33"
	.sleb128 33
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_34"
	.sleb128 34
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_35"
	.sleb128 35
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_36"
	.sleb128 36
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_37"
	.sleb128 37
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_38"
	.sleb128 38
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_39"
	.sleb128 39
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_40"
	.sleb128 40
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTGROUP_41"
	.sleb128 41
	.byte	0
	.uleb128 0x3
	.string	"brsHw_Port_PortGroupType"
	.byte	0x5
	.byte	0x56
	.uaword	0x222
	.uleb128 0x5
	.byte	0x1
	.byte	0x5
	.byte	0x59
	.uaword	0x84f
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_0"
	.sleb128 0
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_1"
	.sleb128 1
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_2"
	.sleb128 2
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_3"
	.sleb128 3
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_4"
	.sleb128 4
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_5"
	.sleb128 5
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_6"
	.sleb128 6
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_7"
	.sleb128 7
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_8"
	.sleb128 8
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_9"
	.sleb128 9
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_10"
	.sleb128 10
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_11"
	.sleb128 11
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_12"
	.sleb128 12
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_13"
	.sleb128 13
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_14"
	.sleb128 14
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_15"
	.sleb128 15
	.uleb128 0x6
	.string	"BRSHW_PORT_PORTNUMBER_16"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"brsHw_Port_PortNumberType"
	.byte	0x5
	.byte	0x6b
	.uaword	0x685
	.uleb128 0x5
	.byte	0x1
	.byte	0x5
	.byte	0x6e
	.uaword	0xa13
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_0"
	.sleb128 0
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_1"
	.sleb128 1
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_2"
	.sleb128 2
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_3"
	.sleb128 3
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_4"
	.sleb128 4
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_5"
	.sleb128 5
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_6"
	.sleb128 6
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_7"
	.sleb128 7
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_8"
	.sleb128 8
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_9"
	.sleb128 9
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_10"
	.sleb128 10
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_11"
	.sleb128 11
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_12"
	.sleb128 12
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_13"
	.sleb128 13
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_14"
	.sleb128 14
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_15"
	.sleb128 15
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_16"
	.sleb128 16
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_17"
	.sleb128 17
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_18"
	.sleb128 18
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_19"
	.sleb128 19
	.uleb128 0x6
	.string	"BRSHW_PORT_ALT_20"
	.sleb128 20
	.byte	0
	.uleb128 0x3
	.string	"brsHw_Port_AlternativeType"
	.byte	0x5
	.byte	0x84
	.uaword	0x870
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x86
	.uaword	0xa7b
	.uleb128 0x8
	.string	"portGroup"
	.byte	0x5
	.byte	0x88
	.uaword	0x665
	.byte	0
	.uleb128 0x8
	.string	"portNumber"
	.byte	0x5
	.byte	0x89
	.uaword	0x84f
	.byte	0x1
	.uleb128 0x8
	.string	"portAlternative"
	.byte	0x5
	.byte	0x8a
	.uaword	0xa13
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.string	"brsHw_Port_PortType"
	.byte	0x5
	.byte	0x8b
	.uaword	0xa35
	.uleb128 0x5
	.byte	0x1
	.byte	0x5
	.byte	0x94
	.uaword	0xb09
	.uleb128 0x6
	.string	"PORT_STRONG_DRIVER_SHARP_EDGE"
	.sleb128 0
	.uleb128 0x6
	.string	"PORT_STRONG_DRIVER_MEDIUM_EDGE"
	.sleb128 1
	.uleb128 0x6
	.string	"PORT_MEDIUM_DRIVER"
	.sleb128 2
	.uleb128 0x6
	.string	"PORT_RGMII_DRIVER"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"brsHw_Port_Driver_Setting"
	.byte	0x5
	.byte	0x99
	.uaword	0xa96
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0x9b
	.uaword	0xb4d
	.uleb128 0x8
	.string	"PortDriverSetting"
	.byte	0x5
	.byte	0x9d
	.uaword	0xb09
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"brsHw_Port_ConfType"
	.byte	0x5
	.byte	0x9e
	.uaword	0xb2a
	.uleb128 0x3
	.string	"Brs_AddressOfConstType"
	.byte	0x6
	.byte	0x34
	.uaword	0xb86
	.uleb128 0x9
	.byte	0x4
	.uaword	0xb8c
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.byte	0x55
	.uaword	0xbbf
	.uleb128 0x6
	.string	"BRSMAIN_RESET_SW"
	.sleb128 0
	.uleb128 0x6
	.string	"BRSMAIN_RESET_OTHER"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"brsMain_ResetReasonType"
	.byte	0x6
	.byte	0x58
	.uaword	0xb8d
	.uleb128 0xb
	.string	"Brs_WdtRegTypes_Tag"
	.byte	0x8
	.byte	0x3
	.uahalf	0x13b
	.uaword	0xc2c
	.uleb128 0xc
	.string	"WdtCon0Address"
	.byte	0x3
	.uahalf	0x13d
	.uaword	0x1bc
	.byte	0
	.uleb128 0xc
	.string	"WdtCon1Address"
	.byte	0x3
	.uahalf	0x13e
	.uaword	0x1bc
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"Brs_WdtRegTypes"
	.byte	0x3
	.uahalf	0x141
	.uaword	0xbde
	.uleb128 0xe
	.string	"BrsHw_GetAddrWDTCON0"
	.byte	0x3
	.uahalf	0x154
	.byte	0x1
	.uaword	0xc7f
	.byte	0x3
	.uaword	0xc7f
	.uleb128 0xf
	.string	"nr"
	.byte	0x3
	.uahalf	0x154
	.uaword	0x1a2
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x154
	.uaword	0x1bc
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1bc
	.uleb128 0x11
	.string	"_isync"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"_dsync"
	.byte	0x2
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"_mfcr"
	.byte	0x2
	.byte	0x6f
	.byte	0x1
	.uaword	0xcc9
	.byte	0x3
	.uaword	0xcc9
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x2
	.byte	0x6f
	.uaword	0xcd9
	.uleb128 0x14
	.string	"__res"
	.byte	0x2
	.byte	0x71
	.uaword	0xcc9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.uaword	0xcc9
	.uleb128 0xe
	.string	"BrsHw_GetAddrWDTCON1"
	.byte	0x3
	.uahalf	0x16f
	.byte	0x1
	.uaword	0xc7f
	.byte	0x3
	.uaword	0xd19
	.uleb128 0xf
	.string	"nr"
	.byte	0x3
	.uahalf	0x16f
	.uaword	0x1a2
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x16f
	.uaword	0x1bc
	.byte	0
	.uleb128 0x15
	.string	"BrsHwUnlockInitInline"
	.byte	0x3
	.uahalf	0x18f
	.byte	0x1
	.byte	0x3
	.uaword	0xd71
	.uleb128 0xf
	.string	"coreID"
	.byte	0x3
	.uahalf	0x18f
	.uaword	0x1a2
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x18f
	.uaword	0x1bc
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x191
	.uaword	0xd71
	.uleb128 0x17
	.string	"WDTCON0"
	.byte	0x3
	.uahalf	0x192
	.uaword	0xc7f
	.byte	0
	.uleb128 0x18
	.uaword	0x1bc
	.uleb128 0x15
	.string	"BrsHwLockInitInline"
	.byte	0x3
	.uahalf	0x1b2
	.byte	0x1
	.byte	0x3
	.uaword	0xdcc
	.uleb128 0xf
	.string	"coreID"
	.byte	0x3
	.uahalf	0x1b2
	.uaword	0x1a2
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x1b2
	.uaword	0x1bc
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x1b4
	.uaword	0xd71
	.uleb128 0x17
	.string	"WDTCON0"
	.byte	0x3
	.uahalf	0x1b5
	.uaword	0xc7f
	.byte	0
	.uleb128 0x19
	.string	"_mtcr"
	.byte	0x2
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0xdf4
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x2
	.byte	0x87
	.uaword	0xcd9
	.uleb128 0x1a
	.string	"__val"
	.byte	0x2
	.byte	0x87
	.uaword	0xcd9
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHwWatchdogInitPowerOn"
	.byte	0x1
	.uahalf	0x1c0
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10db
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x1bc
	.byte	0x1
	.uleb128 0x17
	.string	"WdtCon1"
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x10db
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB470
	.uaword	.LBE470
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0xe6e
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB471
	.uaword	.LBE471
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xcde
	.uaword	.LBB472
	.uaword	.LBE472
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0xe92
	.uleb128 0x21
	.uaword	0xd0c
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd01
	.uaword	.LLST0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB474
	.uaword	.LBE474
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0xec1
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB475
	.uaword	.LBE475
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB476
	.uaword	.LBE476
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0xf50
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd39
	.uaword	.LLST2
	.uleb128 0x1f
	.uaword	.LBB477
	.uaword	.LBE477
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB478
	.uaword	.LBE478
	.byte	0x3
	.uahalf	0x193
	.uaword	0xf1e
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST2
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB480
	.uaword	.LBE480
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB482
	.uaword	.LBE482
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB484
	.uaword	.LBE484
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB486
	.uaword	.LBE486
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0xf7f
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB487
	.uaword	.LBE487
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB488
	.uaword	.LBE488
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x100e
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd94
	.uaword	.LLST5
	.uleb128 0x1f
	.uaword	.LBB489
	.uaword	.LBE489
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB490
	.uaword	.LBE490
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0xfdc
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST5
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB492
	.uaword	.LBE492
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB494
	.uaword	.LBE494
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB496
	.uaword	.LBE496
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB498
	.uaword	.LBE498
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0x1076
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB499
	.uaword	.LBE499
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB500
	.uaword	.LBE500
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB502
	.uaword	.LBE502
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB504
	.uaword	.LBE504
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xd76
	.uaword	.LBB506
	.uaword	.LBE506
	.byte	0x1
	.uahalf	0x1cd
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB507
	.uaword	.LBE507
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB508
	.uaword	.LBE508
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB510
	.uaword	.LBE510
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB512
	.uaword	.LBE512
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xd71
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHwPllInitPowerOn"
	.byte	0x1
	.uahalf	0x1da
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1d18
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1dc
	.uaword	0x1bc
	.byte	0x1
	.uleb128 0x28
	.string	"ulIdx"
	.byte	0x1
	.uahalf	0x29e
	.uaword	0x1bc
	.uaword	.LLST8
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB514
	.uaword	.LBE514
	.byte	0x1
	.uahalf	0x2c0
	.uaword	0x1158
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB515
	.uaword	.LBE515
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB516
	.uaword	.LBE516
	.byte	0x1
	.uahalf	0x2c0
	.uaword	0x11e8
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd39
	.uaword	.LLST9
	.uleb128 0x1f
	.uaword	.LBB517
	.uaword	.LBE517
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB518
	.uaword	.LBE518
	.byte	0x3
	.uahalf	0x193
	.uaword	0x11b6
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST9
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB520
	.uaword	.LBE520
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB522
	.uaword	.LBE522
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB524
	.uaword	.LBE524
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB526
	.uaword	.LBE526
	.byte	0x1
	.uahalf	0x2c4
	.uaword	0x1217
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB527
	.uaword	.LBE527
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB528
	.uaword	.LBE528
	.byte	0x1
	.uahalf	0x2c4
	.uaword	0x12a7
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd94
	.uaword	.LLST12
	.uleb128 0x1f
	.uaword	.LBB529
	.uaword	.LBE529
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB530
	.uaword	.LBE530
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x1275
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST12
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB532
	.uaword	.LBE532
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB534
	.uaword	.LBE534
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB536
	.uaword	.LBE536
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB538
	.uaword	.LBE538
	.byte	0x1
	.uahalf	0x2c6
	.uaword	0x1310
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB539
	.uaword	.LBE539
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB540
	.uaword	.LBE540
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB542
	.uaword	.LBE542
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB544
	.uaword	.LBE544
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB546
	.uaword	.LBE546
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0x1379
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB547
	.uaword	.LBE547
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB548
	.uaword	.LBE548
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB550
	.uaword	.LBE550
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB552
	.uaword	.LBE552
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB554
	.uaword	.LBE554
	.byte	0x1
	.uahalf	0x2dc
	.uaword	0x13e2
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB555
	.uaword	.LBE555
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB556
	.uaword	.LBE556
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB558
	.uaword	.LBE558
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB560
	.uaword	.LBE560
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB562
	.uaword	.LBE562
	.byte	0x1
	.uahalf	0x313
	.uaword	0x144b
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB563
	.uaword	.LBE563
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB564
	.uaword	.LBE564
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB566
	.uaword	.LBE566
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB568
	.uaword	.LBE568
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB570
	.uaword	.LBE570
	.byte	0x1
	.uahalf	0x317
	.uaword	0x14b4
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB571
	.uaword	.LBE571
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB572
	.uaword	.LBE572
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB574
	.uaword	.LBE574
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB576
	.uaword	.LBE576
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB578
	.uaword	.LBE578
	.byte	0x1
	.uahalf	0x32f
	.uaword	0x151d
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB579
	.uaword	.LBE579
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB580
	.uaword	.LBE580
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB582
	.uaword	.LBE582
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB584
	.uaword	.LBE584
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB586
	.uaword	.LBE586
	.byte	0x1
	.uahalf	0x337
	.uaword	0x1586
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB587
	.uaword	.LBE587
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB588
	.uaword	.LBE588
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB590
	.uaword	.LBE590
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB592
	.uaword	.LBE592
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB594
	.uaword	.LBE594
	.byte	0x1
	.uahalf	0x339
	.uaword	0x15ef
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB595
	.uaword	.LBE595
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB596
	.uaword	.LBE596
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB598
	.uaword	.LBE598
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB600
	.uaword	.LBE600
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB602
	.uaword	.LBE602
	.byte	0x1
	.uahalf	0x33e
	.uaword	0x1657
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB603
	.uaword	.LBE603
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB604
	.uaword	.LBE604
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB606
	.uaword	.LBE606
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB608
	.uaword	.LBE608
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB610
	.uaword	.LBE610
	.byte	0x1
	.uahalf	0x34a
	.uaword	0x16bf
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB611
	.uaword	.LBE611
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB612
	.uaword	.LBE612
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB614
	.uaword	.LBE614
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB616
	.uaword	.LBE616
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB618
	.uaword	.LBE618
	.byte	0x1
	.uahalf	0x34f
	.uaword	0x1727
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB619
	.uaword	.LBE619
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB620
	.uaword	.LBE620
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB622
	.uaword	.LBE622
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB624
	.uaword	.LBE624
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB626
	.uaword	.LBE626
	.byte	0x1
	.uahalf	0x351
	.uaword	0x178f
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB627
	.uaword	.LBE627
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB628
	.uaword	.LBE628
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB630
	.uaword	.LBE630
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB632
	.uaword	.LBE632
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB634
	.uaword	.LBE634
	.byte	0x1
	.uahalf	0x358
	.uaword	0x17f7
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB635
	.uaword	.LBE635
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB636
	.uaword	.LBE636
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB638
	.uaword	.LBE638
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB640
	.uaword	.LBE640
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB642
	.uaword	.LBE642
	.byte	0x1
	.uahalf	0x35a
	.uaword	0x185f
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB643
	.uaword	.LBE643
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB644
	.uaword	.LBE644
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB646
	.uaword	.LBE646
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB648
	.uaword	.LBE648
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB650
	.uaword	.LBE650
	.byte	0x1
	.uahalf	0x360
	.uaword	0x18c7
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB651
	.uaword	.LBE651
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB652
	.uaword	.LBE652
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB654
	.uaword	.LBE654
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB656
	.uaword	.LBE656
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB658
	.uaword	.LBE658
	.byte	0x1
	.uahalf	0x363
	.uaword	0x192f
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB659
	.uaword	.LBE659
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB660
	.uaword	.LBE660
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB662
	.uaword	.LBE662
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB664
	.uaword	.LBE664
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB666
	.uaword	.LBE666
	.byte	0x1
	.uahalf	0x365
	.uaword	0x1997
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB667
	.uaword	.LBE667
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB668
	.uaword	.LBE668
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB670
	.uaword	.LBE670
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB672
	.uaword	.LBE672
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB674
	.uaword	.LBE674
	.byte	0x1
	.uahalf	0x368
	.uaword	0x19ff
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB675
	.uaword	.LBE675
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB676
	.uaword	.LBE676
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB678
	.uaword	.LBE678
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB680
	.uaword	.LBE680
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB682
	.uaword	.LBE682
	.byte	0x1
	.uahalf	0x36a
	.uaword	0x1a67
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB683
	.uaword	.LBE683
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB684
	.uaword	.LBE684
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB686
	.uaword	.LBE686
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB688
	.uaword	.LBE688
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB690
	.uaword	.LBE690
	.byte	0x1
	.uahalf	0x36d
	.uaword	0x1acf
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB691
	.uaword	.LBE691
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB692
	.uaword	.LBE692
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB694
	.uaword	.LBE694
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB696
	.uaword	.LBE696
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB698
	.uaword	.LBE698
	.byte	0x1
	.uahalf	0x372
	.uaword	0x1b37
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB699
	.uaword	.LBE699
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB700
	.uaword	.LBE700
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB702
	.uaword	.LBE702
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB704
	.uaword	.LBE704
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB706
	.uaword	.LBE706
	.byte	0x1
	.uahalf	0x376
	.uaword	0x1b9f
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB707
	.uaword	.LBE707
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB708
	.uaword	.LBE708
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB710
	.uaword	.LBE710
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB712
	.uaword	.LBE712
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB714
	.uaword	.LBE714
	.byte	0x1
	.uahalf	0x379
	.uaword	0x1bce
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB715
	.uaword	.LBE715
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB716
	.uaword	.LBE716
	.byte	0x1
	.uahalf	0x379
	.uaword	0x1c5d
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd39
	.uaword	.LLST15
	.uleb128 0x1f
	.uaword	.LBB717
	.uaword	.LBE717
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB718
	.uaword	.LBE718
	.byte	0x3
	.uahalf	0x193
	.uaword	0x1c2b
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST15
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB720
	.uaword	.LBE720
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB722
	.uaword	.LBE722
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB724
	.uaword	.LBE724
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB726
	.uaword	.LBE726
	.byte	0x1
	.uahalf	0x382
	.uaword	0x1c8c
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB727
	.uaword	.LBE727
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xd76
	.uaword	.LBB728
	.uaword	.LBE728
	.byte	0x1
	.uahalf	0x382
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd94
	.uaword	.LLST18
	.uleb128 0x1f
	.uaword	.LBB729
	.uaword	.LBE729
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB730
	.uaword	.LBE730
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x1ce5
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST18
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB732
	.uaword	.LBE732
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB734
	.uaword	.LBE734
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB736
	.uaword	.LBE736
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHwInitPortInput"
	.byte	0x1
	.uahalf	0x416
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1d4f
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.uahalf	0x416
	.uaword	0xa7b
	.uaword	.LLST21
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHwInitPortOutput"
	.byte	0x1
	.uahalf	0x426
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1d87
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.uahalf	0x426
	.uaword	0xa7b
	.uaword	.LLST22
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHwInitPortInputOutput"
	.byte	0x1
	.uahalf	0x436
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1dcc
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.uahalf	0x436
	.uaword	0xa7b
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2b
	.uaword	.LVL54
	.uaword	0x1d4f
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHwInitPortConfig"
	.byte	0x1
	.uahalf	0x448
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1f97
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.uahalf	0x448
	.uaword	0xa7b
	.uaword	.LLST23
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.uahalf	0x448
	.uaword	0xb4d
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x44a
	.uaword	0x1bc
	.byte	0x1
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB738
	.uaword	.LBE738
	.byte	0x1
	.uahalf	0x44b
	.uaword	0x1e4d
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB739
	.uaword	.LBE739
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB740
	.uaword	.LBE740
	.byte	0x1
	.uahalf	0x44b
	.uaword	0x1edc
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd39
	.uaword	.LLST25
	.uleb128 0x1f
	.uaword	.LBB741
	.uaword	.LBE741
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB742
	.uaword	.LBE742
	.byte	0x3
	.uahalf	0x193
	.uaword	0x1eaa
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST25
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB744
	.uaword	.LBE744
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB746
	.uaword	.LBE746
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB748
	.uaword	.LBE748
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB750
	.uaword	.LBE750
	.byte	0x1
	.uahalf	0x45c
	.uaword	0x1f0b
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB751
	.uaword	.LBE751
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xd76
	.uaword	.LBB752
	.uaword	.LBE752
	.byte	0x1
	.uahalf	0x45c
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd94
	.uaword	.LLST28
	.uleb128 0x1f
	.uaword	.LBB753
	.uaword	.LBE753
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB754
	.uaword	.LBE754
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x1f64
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST28
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB756
	.uaword	.LBE756
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB758
	.uaword	.LBE758
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB760
	.uaword	.LBE760
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHwPort_SetLevel"
	.byte	0x1
	.uahalf	0x471
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1fde
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.uahalf	0x471
	.uaword	0xa7b
	.uaword	.LLST31
	.uleb128 0x2a
	.string	"Level"
	.byte	0x1
	.uahalf	0x471
	.uaword	0x172
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"BrsHwPort_GetLevel"
	.byte	0x1
	.uahalf	0x489
	.byte	0x1
	.uaword	0x172
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2029
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.uahalf	0x489
	.uaword	0xa7b
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x28
	.string	"temp"
	.byte	0x1
	.uahalf	0x48b
	.uaword	0x1bc
	.uaword	.LLST32
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"BrsHwPortInitPowerOn"
	.byte	0x1
	.uahalf	0x4a6
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"BrsHwDisableInterruptAtPowerOn"
	.byte	0x1
	.uahalf	0x60d
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHw_ExceptionTable_Init"
	.byte	0x1
	.uahalf	0x61b
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x230d
	.uleb128 0x2a
	.string	"ExcVecLabel"
	.byte	0x1
	.uahalf	0x61b
	.uaword	0xb68
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.string	"IntVecLabel"
	.byte	0x1
	.uahalf	0x61b
	.uaword	0xb68
	.uaword	.LLST33
	.uleb128 0x17
	.string	"CurrentCoreId"
	.byte	0x1
	.uahalf	0x61d
	.uaword	0x1bc
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x61e
	.uaword	0x1bc
	.byte	0x1
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB762
	.uaword	.LBE762
	.byte	0x1
	.uahalf	0x61d
	.uaword	0x212c
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB763
	.uaword	.LBE763
	.uleb128 0x23
	.uaword	0xcbb
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB764
	.uaword	.LBE764
	.byte	0x1
	.uahalf	0x630
	.uaword	0x21bb
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd39
	.uaword	.LLST34
	.uleb128 0x1f
	.uaword	.LBB765
	.uaword	.LBE765
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB766
	.uaword	.LBE766
	.byte	0x3
	.uahalf	0x193
	.uaword	0x2189
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST34
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB768
	.uaword	.LBE768
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB770
	.uaword	.LBE770
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB772
	.uaword	.LBE772
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB774
	.uaword	.LBE774
	.byte	0x1
	.uahalf	0x632
	.uleb128 0x1d
	.uaword	0xdcc
	.uaword	.LBB776
	.uaword	.LBE776
	.byte	0x1
	.uahalf	0x632
	.uaword	0x21ee
	.uleb128 0x2e
	.uaword	0xde6
	.byte	0x1
	.byte	0x64
	.uleb128 0x1e
	.uaword	0xddb
	.uahalf	0xfe24
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB778
	.uaword	.LBE778
	.byte	0x1
	.uahalf	0x632
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB780
	.uaword	.LBE780
	.byte	0x1
	.uahalf	0x635
	.uleb128 0x1d
	.uaword	0xdcc
	.uaword	.LBB782
	.uaword	.LBE782
	.byte	0x1
	.uahalf	0x635
	.uaword	0x2233
	.uleb128 0x22
	.uaword	0xde6
	.uaword	.LLST36
	.uleb128 0x1e
	.uaword	0xddb
	.uahalf	0xfe20
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB784
	.uaword	.LBE784
	.byte	0x1
	.uahalf	0x635
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB786
	.uaword	.LBE786
	.byte	0x1
	.uahalf	0x637
	.uleb128 0x1d
	.uaword	0xdcc
	.uaword	.LBB788
	.uaword	.LBE788
	.byte	0x1
	.uahalf	0x637
	.uaword	0x2275
	.uleb128 0x21
	.uaword	0xde6
	.byte	0
	.uleb128 0x1e
	.uaword	0xddb
	.uahalf	0x920c
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB790
	.uaword	.LBE790
	.byte	0x1
	.uahalf	0x637
	.uleb128 0x27
	.uaword	0xd76
	.uaword	.LBB792
	.uaword	.LBE792
	.byte	0x1
	.uahalf	0x638
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x2e
	.uaword	0xd94
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.uaword	.LBB793
	.uaword	.LBE793
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB794
	.uaword	.LBE794
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x22da
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x2e
	.uaword	0xc67
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB796
	.uaword	.LBE796
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB798
	.uaword	.LBE798
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB800
	.uaword	.LBE800
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHwSoftwareResetECU"
	.byte	0x1
	.uahalf	0x643
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x25af
	.uleb128 0x28
	.string	"ui32tmp"
	.byte	0x1
	.uahalf	0x645
	.uaword	0x1bc
	.uaword	.LLST37
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x646
	.uaword	0x1bc
	.byte	0x1
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB802
	.uaword	.LBE802
	.byte	0x1
	.uahalf	0x64f
	.uaword	0x23c1
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd39
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB803
	.uaword	.LBE803
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB804
	.uaword	.LBE804
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB806
	.uaword	.LBE806
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB808
	.uaword	.LBE808
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB810
	.uaword	.LBE810
	.byte	0x1
	.uahalf	0x65a
	.uaword	0x2429
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x26
	.uaword	0xd94
	.sleb128 -1
	.uleb128 0x1f
	.uaword	.LBB811
	.uaword	.LBE811
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB812
	.uaword	.LBE812
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB814
	.uaword	.LBE814
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB816
	.uaword	.LBE816
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB818
	.uaword	.LBE818
	.byte	0x1
	.uahalf	0x663
	.uaword	0x2458
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB819
	.uaword	.LBE819
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB820
	.uaword	.LBE820
	.byte	0x1
	.uahalf	0x663
	.uaword	0x24e7
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd39
	.uaword	.LLST38
	.uleb128 0x1f
	.uaword	.LBB821
	.uaword	.LBE821
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB822
	.uaword	.LBE822
	.byte	0x3
	.uahalf	0x193
	.uaword	0x24b5
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST38
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB824
	.uaword	.LBE824
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB826
	.uaword	.LBE826
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB828
	.uaword	.LBE828
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB830
	.uaword	.LBE830
	.byte	0x1
	.uahalf	0x665
	.uaword	0x2516
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB831
	.uaword	.LBE831
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd76
	.uaword	.LBB832
	.uaword	.LBE832
	.byte	0x1
	.uahalf	0x665
	.uaword	0x25a5
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd94
	.uaword	.LLST41
	.uleb128 0x1f
	.uaword	.LBB833
	.uaword	.LBE833
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB834
	.uaword	.LBE834
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x2573
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST41
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB836
	.uaword	.LBE836
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB838
	.uaword	.LBE838
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB840
	.uaword	.LBE840
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL90
	.uaword	0x2a26
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"BrsHwGetResetReasonStartup"
	.byte	0x1
	.uahalf	0x67f
	.byte	0x1
	.uaword	0xbbf
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"BrsHwTime100NOP"
	.byte	0x1
	.uahalf	0x699
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"BrsHw_GetCore"
	.byte	0x1
	.uahalf	0x6c9
	.byte	0x1
	.uaword	0x1bc
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHw_EnableInterrupt"
	.byte	0x1
	.uahalf	0x6dd
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2672
	.uleb128 0x30
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x6dd
	.uaword	0x1bc
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.string	"Priority"
	.byte	0x1
	.uahalf	0x6dd
	.uaword	0x172
	.uaword	.LLST44
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHw_DisableInterrupt"
	.byte	0x1
	.uahalf	0x6ed
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x26ad
	.uleb128 0x30
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x6ed
	.uaword	0x1bc
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHw_TriggerSoftwareInterrupt"
	.byte	0x1
	.uahalf	0x6fd
	.byte	0x1
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x26f0
	.uleb128 0x30
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x6fd
	.uaword	0x1bc
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BrsHwDisableEccErrorReporting"
	.byte	0x1
	.uahalf	0x70c
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x28a9
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x70e
	.uaword	0x1bc
	.byte	0x1
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB842
	.uaword	.LBE842
	.byte	0x1
	.uahalf	0x71a
	.uaword	0x275f
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB843
	.uaword	.LBE843
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xd19
	.uaword	.LBB844
	.uaword	.LBE844
	.byte	0x1
	.uahalf	0x71a
	.uaword	0x27ee
	.uleb128 0x21
	.uaword	0xd48
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd39
	.uaword	.LLST45
	.uleb128 0x1f
	.uaword	.LBB845
	.uaword	.LBE845
	.uleb128 0x23
	.uaword	0xd54
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x24
	.uaword	0xd60
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB846
	.uaword	.LBE846
	.byte	0x3
	.uahalf	0x193
	.uaword	0x27bc
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST45
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB848
	.uaword	.LBE848
	.byte	0x3
	.uahalf	0x1a4
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB850
	.uaword	.LBE850
	.byte	0x3
	.uahalf	0x1a7
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB852
	.uaword	.LBE852
	.byte	0x3
	.uahalf	0x1a8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc9d
	.uaword	.LBB854
	.uaword	.LBE854
	.byte	0x1
	.uahalf	0x731
	.uaword	0x281d
	.uleb128 0x1e
	.uaword	0xcb0
	.uahalf	0xfe1c
	.uleb128 0x1f
	.uaword	.LBB855
	.uaword	.LBE855
	.uleb128 0x20
	.uaword	0xcbb
	.uaword	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xd76
	.uaword	.LBB856
	.uaword	.LBE856
	.byte	0x1
	.uahalf	0x731
	.uleb128 0x21
	.uaword	0xda3
	.byte	0x1
	.uleb128 0x22
	.uaword	0xd94
	.uaword	.LLST48
	.uleb128 0x1f
	.uaword	.LBB857
	.uaword	.LBE857
	.uleb128 0x23
	.uaword	0xdaf
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x24
	.uaword	0xdbb
	.uleb128 0x1d
	.uaword	0xc44
	.uaword	.LBB858
	.uaword	.LBE858
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x2876
	.uleb128 0x21
	.uaword	0xc72
	.byte	0x1
	.uleb128 0x22
	.uaword	0xc67
	.uaword	.LLST48
	.byte	0
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB860
	.uaword	.LBE860
	.byte	0x3
	.uahalf	0x1c7
	.uleb128 0x25
	.uaword	0xc85
	.uaword	.LBB862
	.uaword	.LBE862
	.byte	0x3
	.uahalf	0x1ca
	.uleb128 0x25
	.uaword	0xc91
	.uaword	.LBB864
	.uaword	.LBE864
	.byte	0x3
	.uahalf	0x1cb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.string	"BRSHW_PORT_CONF_CAN"
	.byte	0x5
	.byte	0xf6
	.uaword	0x28cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BRSHW_PORT_CONF_CAN
	.uleb128 0x4
	.uaword	0xb4d
	.uleb128 0x31
	.string	"BRSHW_PORT_CONF_ETHERNET"
	.byte	0x5
	.byte	0xf8
	.uaword	0x28cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BRSHW_PORT_CONF_ETHERNET
	.uleb128 0x31
	.string	"BRSHW_PORT_CONF_SHARPEDGE"
	.byte	0x5
	.byte	0xfa
	.uaword	0x28cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BRSHW_PORT_CONF_SHARPEDGE
	.uleb128 0x31
	.string	"kBrsHwMainVersion"
	.byte	0x1
	.byte	0x5b
	.uaword	0x21d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	kBrsHwMainVersion
	.uleb128 0x31
	.string	"kBrsHwSubVersion"
	.byte	0x1
	.byte	0x5c
	.uaword	0x21d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	kBrsHwSubVersion
	.uleb128 0x31
	.string	"kBrsHwBugfixVersion"
	.byte	0x1
	.byte	0x5d
	.uaword	0x21d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	kBrsHwBugfixVersion
	.uleb128 0x32
	.uaword	0xc2c
	.uaword	0x2990
	.uleb128 0x33
	.uaword	0x2990
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x31
	.string	"kBrsWdtCon0Addresses_RAM"
	.byte	0x1
	.byte	0x7c
	.uaword	0x29c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	kBrsWdtCon0Addresses_RAM
	.uleb128 0x4
	.uaword	0x2980
	.uleb128 0x31
	.string	"kBrsWdtCon0Addresses_ROM"
	.byte	0x1
	.byte	0x8d
	.uaword	0x29ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	kBrsWdtCon0Addresses_ROM
	.uleb128 0x4
	.uaword	0x2980
	.uleb128 0x32
	.uaword	0x1bc
	.uaword	0x2a04
	.uleb128 0x33
	.uaword	0x2990
	.byte	0x7f
	.byte	0
	.uleb128 0x31
	.string	"bmiField0"
	.byte	0x1
	.byte	0xa7
	.uaword	0x2a1c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	bmiField0
	.uleb128 0x4
	.uaword	0x2a21
	.uleb128 0x18
	.uaword	0x29f4
	.uleb128 0x34
	.byte	0x1
	.string	"BrsMain_SoftwareResetECU_Hook"
	.byte	0x7
	.uahalf	0x1d4
	.byte	0x1
	.byte	0x1
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x9
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x12
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL49
	.uaword	.LFE20
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x9
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x12
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL53
	.uaword	.LFE21
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x8
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x7
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL55
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL62
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x8
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x9
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x12
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x8
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x9
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x12
	.byte	0x91
	.sleb128 -4
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0xd
	.byte	0x31
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL81
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL87
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL83
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL87
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xb
	.uahalf	0xfcff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL104
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xac
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"Source"
.LASF0:
	.string	"memoryType"
.LASF2:
	.string	"wdtcon0value"
.LASF1:
	.string	"__regaddr"
	.extern	BrsMain_SoftwareResetECU_Hook,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
