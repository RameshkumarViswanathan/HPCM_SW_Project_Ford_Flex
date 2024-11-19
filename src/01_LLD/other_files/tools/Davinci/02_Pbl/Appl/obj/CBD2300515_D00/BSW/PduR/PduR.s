	.file	"PduR.c"
.section .text,"ax",@progbits
.Ltext0:
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	PduR_GetConfigurationId
	.type	PduR_GetConfigurationId, @function
PduR_GetConfigurationId:
.LFB15:
	.file 1 "../../../../CBD2300515_D00/BSW/PduR/PduR.c"
	.loc 1 437 0
.LVL0:
	.loc 1 442 0
	movh.a	%a15, hi:PduR_PreInitialized
	ld.bu	%d15, [%a15] lo:PduR_PreInitialized
	jz	%d15, .L4
	.loc 1 446 0
	movh.a	%a15, hi:PduR_InitializedRam
	ld.bu	%d7, [%a15] lo:PduR_InitializedRam
	.loc 1 444 0
	eq	%d7, %d7, 0
.LVL1:
	.loc 1 456 0
	jz	%d7, .L3
	j	.L2
.LVL2:
.L4:
	.loc 1 444 0
	mov	%d7, 1
.LVL3:
.L2:
	.loc 1 458 0
	mov	%d4, 51
	mov	%d5, 0
	mov	%d6, 242
	call	Det_ReportError
.LVL4:
.L3:
	.loc 1 464 0
	mov	%d2, 0
	ret
.LFE15:
	.size	PduR_GetConfigurationId, .-PduR_GetConfigurationId
	.align 1
	.global	PduR_UpTransmit
	.type	PduR_UpTransmit, @function
PduR_UpTransmit:
.LFB16:
	.loc 1 484 0
.LVL5:
	.loc 1 491 0
	movh.a	%a15, hi:PduR_PreInitialized
	ld.bu	%d15, [%a15] lo:PduR_PreInitialized
	jz	%d15, .L8
	.loc 1 501 0
	mov	%d7, 2
	.loc 1 495 0
	jge.u	%d4, 2, .L6
	.loc 1 503 0
	movh.a	%a15, hi:PduR_Tx2Lo
	lea	%a15, [%a15] lo:PduR_Tx2Lo
	addsc.a	%a15, %a15, %d4, 1
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d2, [%a15]0
	movh.a	%a15, hi:PduR_InitializedRam
	lea	%a15, [%a15] lo:PduR_InitializedRam
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d2, [%a15]0
	.loc 1 505 0
	mov	%d7, 1
	.loc 1 503 0
	jz	%d2, .L6
	.loc 1 519 0
	movh.a	%a15, hi:PduR_Tx2Lo
	lea	%a15, [%a15] lo:PduR_Tx2Lo
	addsc.a	%a15, %a15, %d4, 1
	ld.bu	%d2, [%a15] 1
	movh.a	%a15, hi:PduR_RmTransmitFctPtr
	lea	%a15, [%a15] lo:PduR_RmTransmitFctPtr
	addsc.a	%a15, %a15, %d2, 2
	ld.a	%a15, [%a15]0
	mov	%d4, %d15
.LVL6:
	calli	%a15
.LVL7:
	ret
.LVL8:
.L8:
	.loc 1 493 0
	mov	%d7, 1
.L6:
.LVL9:
	.loc 1 528 0
	mov	%d4, 51
.LVL10:
	mov	%d5, 0
	mov	%d6, 200
	call	Det_ReportError
.LVL11:
	mov	%d2, 1
	.loc 1 538 0
	ret
.LFE16:
	.size	PduR_UpTransmit, .-PduR_UpTransmit
	.align 1
	.global	PduR_LoTpStartOfReception
	.type	PduR_LoTpStartOfReception, @function
PduR_LoTpStartOfReception:
.LFB17:
	.loc 1 766 0
.LVL12:
	.loc 1 773 0
	movh.a	%a15, hi:PduR_PreInitialized
	ld.bu	%d15, [%a15] lo:PduR_PreInitialized
	jz	%d15, .L15
	.loc 1 777 0
	jge.u	%d4, 4, .L16
	.loc 1 785 0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_InitializedRam
	lea	%a15, [%a15] lo:PduR_InitializedRam
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	.loc 1 787 0
	mov	%d7, 1
	.loc 1 785 0
	jz	%d15, .L13
.LVL13:
.LBB6:
.LBB7:
	.loc 1 809 0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
.LBB8:
	.loc 1 821 0
	ld.bu	%d15, [%a15] 2
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 822 0
	ld.bu	%d15, [%a15] 1
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:PduR_RmGDestRom
	madd	%d3, %d2, %d15, 6
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15] 4
	movh.a	%a2, hi:PduR_MmRom
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:PduR_MmRom
	madd	%d3, %d2, %d15, 32
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 16
	ld.bu	%d4, [%a15]0
.LVL14:
	calli	%a2
.LVL15:
	ret
.LVL16:
.L15:
.LBE8:
.LBE7:
.LBE6:
	.loc 1 775 0
	mov	%d7, 1
	j	.L13
.L16:
	.loc 1 783 0
	mov	%d7, 2
.L13:
.LVL17:
	.loc 1 874 0
	mov	%d4, 51
.LVL18:
	mov	%d5, 0
.LVL19:
	mov	%d6, 204
	call	Det_ReportError
.LVL20:
	mov	%d2, 1
	.loc 1 886 0
	ret
.LFE17:
	.size	PduR_LoTpStartOfReception, .-PduR_LoTpStartOfReception
	.align 1
	.global	PduR_LoTpCopyRxData
	.type	PduR_LoTpCopyRxData, @function
PduR_LoTpCopyRxData:
.LFB18:
	.loc 1 906 0
.LVL21:
	.loc 1 913 0
	movh.a	%a15, hi:PduR_PreInitialized
	ld.bu	%d15, [%a15] lo:PduR_PreInitialized
	jz	%d15, .L22
	.loc 1 917 0
	jge.u	%d4, 4, .L23
	.loc 1 925 0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_InitializedRam
	lea	%a15, [%a15] lo:PduR_InitializedRam
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	.loc 1 927 0
	mov	%d7, 1
	.loc 1 925 0
	jz	%d15, .L20
.LVL22:
.LBB9:
.LBB10:
	.loc 1 940 0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
.LBB11:
	.loc 1 953 0
	ld.bu	%d15, [%a15] 2
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 954 0
	ld.bu	%d15, [%a15] 1
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:PduR_RmGDestRom
	madd	%d3, %d2, %d15, 6
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15] 4
	movh.a	%a2, hi:PduR_MmRom
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:PduR_MmRom
	madd	%d3, %d2, %d15, 32
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 8
	ld.bu	%d4, [%a15]0
.LVL23:
	calli	%a2
.LVL24:
	ret
.LVL25:
.L22:
.LBE11:
.LBE10:
.LBE9:
	.loc 1 915 0
	mov	%d7, 1
	j	.L20
.L23:
	.loc 1 923 0
	mov	%d7, 2
.L20:
.LVL26:
	.loc 1 1003 0
	mov	%d4, 51
.LVL27:
	mov	%d5, 0
	mov	%d6, 205
	call	Det_ReportError
.LVL28:
	mov	%d2, 1
	.loc 1 1014 0
	ret
.LFE18:
	.size	PduR_LoTpCopyRxData, .-PduR_LoTpCopyRxData
	.align 1
	.global	PduR_LoTpCopyTxData
	.type	PduR_LoTpCopyTxData, @function
PduR_LoTpCopyTxData:
.LFB19:
	.loc 1 1031 0
.LVL29:
	.loc 1 1038 0
	movh.a	%a15, hi:PduR_PreInitialized
	ld.bu	%d15, [%a15] lo:PduR_PreInitialized
	jz	%d15, .L29
	.loc 1 1048 0
	mov	%d7, 2
	.loc 1 1042 0
	jge.u	%d4, 2, .L27
	.loc 1 1050 0
	add	%d4, 2
.LVL30:
	and	%d4, %d4, 255
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:PduR_RmGDestRom
	madd	%d2, %d15, %d4, 6
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 2
	movh.a	%a15, hi:PduR_InitializedRam
	lea	%a15, [%a15] lo:PduR_InitializedRam
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	.loc 1 1052 0
	mov	%d7, 1
	.loc 1 1050 0
	jz	%d15, .L27
	.loc 1 1058 0
	call	PduR_RmTp_MultipleSourceHandler_CopyTxData
.LVL31:
	ret
.LVL32:
.L29:
	.loc 1 1040 0
	mov	%d7, 1
.LVL33:
.L27:
	.loc 1 1065 0
	mov	%d4, 51
	mov	%d5, 0
	mov	%d6, 206
	call	Det_ReportError
.LVL34:
	mov	%d2, 1
	.loc 1 1077 0
	ret
.LFE19:
	.size	PduR_LoTpCopyTxData, .-PduR_LoTpCopyTxData
	.align 1
	.global	PduR_LoTpRxIndication
	.type	PduR_LoTpRxIndication, @function
PduR_LoTpRxIndication:
.LFB20:
	.loc 1 1097 0
.LVL35:
	.loc 1 1103 0
	movh.a	%a15, hi:PduR_PreInitialized
	ld.bu	%d15, [%a15] lo:PduR_PreInitialized
	jz	%d15, .L36
	.loc 1 1107 0
	jge.u	%d4, 4, .L37
	.loc 1 1115 0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_InitializedRam
	lea	%a15, [%a15] lo:PduR_InitializedRam
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	.loc 1 1117 0
	mov	%d7, 1
	.loc 1 1115 0
	jz	%d15, .L34
.LVL36:
.LBB12:
.LBB13:
	.loc 1 1135 0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
.LBB14:
	.loc 1 1144 0
	ld.bu	%d15, [%a15] 2
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 1145 0
	ld.bu	%d15, [%a15] 1
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:PduR_RmGDestRom
	madd	%d3, %d2, %d15, 6
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15] 4
	movh.a	%a2, hi:PduR_MmRom
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:PduR_MmRom
	madd	%d3, %d2, %d15, 32
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 20
	ld.bu	%d4, [%a15]0
.LVL37:
	calli	%a2
.LVL38:
	ret
.LVL39:
.L36:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 1105 0
	mov	%d7, 1
	j	.L34
.L37:
	.loc 1 1113 0
	mov	%d7, 2
.L34:
.LVL40:
	.loc 1 1171 0
	mov	%d4, 51
.LVL41:
	mov	%d5, 0
.LVL42:
	mov	%d6, 207
	call	Det_ReportError
.LVL43:
	ret
.LFE20:
	.size	PduR_LoTpRxIndication, .-PduR_LoTpRxIndication
	.align 1
	.global	PduR_LoTpTxConfirmation
	.type	PduR_LoTpTxConfirmation, @function
PduR_LoTpTxConfirmation:
.LFB21:
	.loc 1 1197 0
.LVL44:
	.loc 1 1203 0
	movh.a	%a15, hi:PduR_PreInitialized
	ld.bu	%d15, [%a15] lo:PduR_PreInitialized
	jz	%d15, .L42
	.loc 1 1213 0
	mov	%d7, 2
	.loc 1 1207 0
	jge.u	%d4, 2, .L40
	.loc 1 1215 0
	add	%d4, 2
.LVL45:
	and	%d4, %d4, 255
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:PduR_RmGDestRom
	madd	%d2, %d15, %d4, 6
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 2
	movh.a	%a15, hi:PduR_InitializedRam
	lea	%a15, [%a15] lo:PduR_InitializedRam
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	.loc 1 1217 0
	mov	%d7, 1
	.loc 1 1215 0
	jz	%d15, .L40
	.loc 1 1229 0
	call	PduR_RmTp_MultipleSourceHandler_TpTxConfirmation
.LVL46:
	ret
.LVL47:
.L42:
	.loc 1 1205 0
	mov	%d7, 1
.LVL48:
.L40:
	.loc 1 1236 0
	mov	%d4, 51
	mov	%d5, 0
.LVL49:
	mov	%d6, 208
	call	Det_ReportError
.LVL50:
	ret
.LFE21:
	.size	PduR_LoTpTxConfirmation, .-PduR_LoTpTxConfirmation
	.align 1
	.global	PduR_ChangeParameter
	.type	PduR_ChangeParameter, @function
PduR_ChangeParameter:
.LFB22:
	.loc 1 1340 0
.LVL51:
	.loc 1 1347 0
	movh.a	%a15, hi:PduR_PreInitialized
	ld.bu	%d15, [%a15] lo:PduR_PreInitialized
	jz	%d15, .L49
	.loc 1 1351 0
	jge.u	%d4, 4, .L50
	.loc 1 1359 0
	movh.a	%a15, hi:PduR_RxTp2Src
	lea	%a15, [%a15] lo:PduR_RxTp2Src
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d2, [%a15] 1
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d4, %a15
.LVL52:
	addi	%d3, %d4, lo:PduR_RmGDestRom
	madd	%d4, %d3, %d2, 6
	mov.a	%a15, %d4
	ld.bu	%d2, [%a15] 2
	movh.a	%a15, hi:PduR_InitializedRam
	lea	%a15, [%a15] lo:PduR_InitializedRam
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d2, [%a15]0
	jz	%d2, .L51
.LVL53:
.LBB15:
	.loc 1 1368 0
	movh.a	%a15, hi:PduR_RmDestRom
	lea	%a15, [%a15] lo:PduR_RmDestRom
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 1369 0
	ld.bu	%d4, [%a15] 2
.LVL54:
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 1371 0
	ld.bu	%d3, [%a15] 1
	movh.a	%a15, hi:PduR_MmRom
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:PduR_MmRom
.LVL55:
	madd	%d2, %d15, %d3, 32
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15]0
.LBE15:
	.loc 1 1343 0
	mov	%d2, 1
.LBB17:
	.loc 1 1371 0
	jz.t	%d15, 1, .L53
.LVL56:
.LBB16:
	.loc 1 1373 0
	movh.a	%a15, hi:PduR_RmSrcRom
	lea	%a15, [%a15] lo:PduR_RmSrcRom
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 1374 0
	movh.a	%a2, hi:PduR_MmRom
	mov.d	%d4, %a2
.LVL57:
	addi	%d15, %d4, lo:PduR_MmRom
	madd	%d2, %d15, %d3, 32
	mov.a	%a2, %d2
	ld.a	%a2, [%a2] 4
	ld.bu	%d4, [%a15] 3
	calli	%a2
.LVL58:
	ret
.LVL59:
.L49:
.LBE16:
.LBE17:
	.loc 1 1349 0
	mov	%d7, 1
	j	.L46
.L50:
	.loc 1 1357 0
	mov	%d7, 2
	j	.L46
.LVL60:
.L51:
	.loc 1 1361 0
	mov	%d7, 1
.L46:
.LVL61:
	.loc 1 1382 0
	mov	%d4, 51
	mov	%d5, 0
.LVL62:
	mov	%d6, 197
.LVL63:
	call	Det_ReportError
.LVL64:
	mov	%d2, 1
.L53:
	.loc 1 1393 0
	ret
.LFE22:
	.size	PduR_ChangeParameter, .-PduR_ChangeParameter
	.align 1
	.global	PduR_PreInit
	.type	PduR_PreInit, @function
PduR_PreInit:
.LFB24:
	.loc 1 1616 0
.LVL65:
	.loc 1 1641 0
	jz.a	%a4, .L58
.LVL66:
	.loc 1 1665 0
	mov	%d4, 51
	mov	%d5, 0
	mov	%d6, 1
	mov	%d7, 11
	call	Det_ReportError
.LVL67:
	ret
.LVL68:
.L58:
	.loc 1 1656 0
	mov	%d15, 0
	movh.a	%a15, hi:PduR_InitializedRam
	st.b	[%a15] lo:PduR_InitializedRam, %d15
.LVL69:
	.loc 1 1659 0
	mov	%d15, 1
	movh.a	%a15, hi:PduR_PreInitialized
	st.b	[%a15] lo:PduR_PreInitialized, %d15
	ret
.LFE24:
	.size	PduR_PreInit, .-PduR_PreInit
	.align 1
	.global	PduR_Init
	.type	PduR_Init, @function
PduR_Init:
.LFB25:
	.loc 1 1687 0
.LVL70:
	.loc 1 1692 0
	movh.a	%a15, hi:PduR_PreInitialized
	ld.bu	%d15, [%a15] lo:PduR_PreInitialized
	jz	%d15, .L62
	.loc 1 1696 0
	movh.a	%a15, hi:PduR_InitializedRam
	ld.bu	%d15, [%a15] lo:PduR_InitializedRam
	jnz	%d15, .L63
.LVL71:
.LBB18:
.LBB19:
	.loc 1 1775 0
	mov	%d15, 1
	st.b	[%a15] lo:PduR_InitializedRam, %d15
	ret
.LVL72:
.L62:
.LBE19:
.LBE18:
	.loc 1 1694 0
	mov	%d7, 4
	j	.L60
.L63:
	.loc 1 1698 0
	mov	%d7, 3
.L60:
.LVL73:
	.loc 1 1708 0
	mov	%d4, 51
	mov	%d5, 0
	mov	%d6, 0
	call	Det_ReportError
.LVL74:
	ret
.LFE25:
	.size	PduR_Init, .-PduR_Init
	.align 1
	.global	PduR_Rm_GetSrcDestPdu
	.type	PduR_Rm_GetSrcDestPdu, @function
PduR_Rm_GetSrcDestPdu:
.LFB27:
	.loc 1 1924 0
.LVL75:
	.loc 1 1959 0
	movh.a	%a15, hi:PduR_RmGDestRom
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:PduR_RmGDestRom
	madd	%d2, %d15, %d4, 6
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 5
	st.b	[%a4]0, %d15
	.loc 1 1963 0
	mov	%d2, 0
	ret
.LFE27:
	.size	PduR_Rm_GetSrcDestPdu, .-PduR_Rm_GetSrcDestPdu
	.align 1
	.global	PduR_InitMemory
	.type	PduR_InitMemory, @function
PduR_InitMemory:
.LFB28:
	.loc 1 1997 0
	.loc 1 1998 0
	mov	%d15, 0
	movh.a	%a15, hi:PduR_PreInitialized
	st.b	[%a15] lo:PduR_PreInitialized, %d15
	ret
.LFE28:
	.size	PduR_InitMemory, .-PduR_InitMemory
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
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../BSW/_Common/Std_Types.h"
	.file 4 "GenData/ComStack_Cfg.h"
	.file 5 "../../../BSW/_Common/ComStack_Types.h"
	.file 6 "GenData/PduR_Lcfg.h"
	.file 7 "../../../BSW/Det/Det.h"
	.file 8 "../../../../CBD2300515_D00/BSW/PduR/PduR_RmTp.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1aa6
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../CBD2300515_D00/BSW/PduR/PduR.c"
	.string	"D:\\\\Vector\\\\CBD2300515_D00\\\\Demo\\\\DemoFbl\\\\Appl"
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x152
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x2
	.byte	0x68
	.uaword	0x152
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x19a
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x2
	.byte	0x6c
	.uaword	0x1ca
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.string	"uint8_least"
	.byte	0x2
	.byte	0x6f
	.uaword	0x152
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x78
	.uaword	0x172
	.uleb128 0x2
	.string	"PduIdType"
	.byte	0x4
	.byte	0x3f
	.uaword	0x172
	.uleb128 0x2
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x41
	.uaword	0x18c
	.uleb128 0x2
	.string	"SduDataPtrType"
	.byte	0x5
	.byte	0xb2
	.uaword	0x282
	.uleb128 0x4
	.byte	0x4
	.uaword	0x172
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.byte	0xb3
	.uaword	0x2b6
	.uleb128 0x6
	.string	"SduDataPtr"
	.byte	0x5
	.byte	0xb5
	.uaword	0x26c
	.byte	0
	.uleb128 0x6
	.string	"SduLength"
	.byte	0x5
	.byte	0xb6
	.uaword	0x257
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"PduInfoType"
	.byte	0x5
	.byte	0xb7
	.uaword	0x288
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xba
	.uaword	0x310
	.uleb128 0x8
	.string	"BUFREQ_OK"
	.sleb128 0
	.uleb128 0x8
	.string	"BUFREQ_E_NOT_OK"
	.sleb128 1
	.uleb128 0x8
	.string	"BUFREQ_E_BUSY"
	.sleb128 2
	.uleb128 0x8
	.string	"BUFREQ_E_OVFL"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.string	"BufReq_ReturnType"
	.byte	0x5
	.byte	0xbf
	.uaword	0x2c9
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xca
	.uaword	0x360
	.uleb128 0x8
	.string	"TP_DATACONF"
	.sleb128 0
	.uleb128 0x8
	.string	"TP_DATARETRY"
	.sleb128 1
	.uleb128 0x8
	.string	"TP_CONFPENDING"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.string	"TpDataStateType"
	.byte	0x5
	.byte	0xd0
	.uaword	0x329
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0xd2
	.uaword	0x3a8
	.uleb128 0x6
	.string	"TpDataState"
	.byte	0x5
	.byte	0xd4
	.uaword	0x360
	.byte	0
	.uleb128 0x6
	.string	"TxTpDataCnt"
	.byte	0x5
	.byte	0xd5
	.uaword	0x257
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.string	"RetryInfoType"
	.byte	0x5
	.byte	0xd6
	.uaword	0x377
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xd9
	.uaword	0x3e1
	.uleb128 0x8
	.string	"TP_STMIN"
	.sleb128 0
	.uleb128 0x8
	.string	"TP_BS"
	.sleb128 1
	.uleb128 0x8
	.string	"TP_BC"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.string	"TPParameterType"
	.byte	0x5
	.byte	0xdd
	.uaword	0x3bd
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x9
	.string	"PduR_TransmitFctPtrType"
	.byte	0x6
	.uahalf	0x435
	.uaword	0x43a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x440
	.uleb128 0xa
	.byte	0x1
	.uaword	0x230
	.uaword	0x455
	.uleb128 0xb
	.uaword	0x246
	.uleb128 0xb
	.uaword	0x455
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x45b
	.uleb128 0xc
	.uaword	0x2b6
	.uleb128 0x9
	.string	"PduR_StartOfReceptionFctPtrType"
	.byte	0x6
	.uahalf	0x43b
	.uaword	0x488
	.uleb128 0x4
	.byte	0x4
	.uaword	0x48e
	.uleb128 0xa
	.byte	0x1
	.uaword	0x310
	.uaword	0x4ad
	.uleb128 0xb
	.uaword	0x246
	.uleb128 0xb
	.uaword	0x3f8
	.uleb128 0xb
	.uaword	0x257
	.uleb128 0xb
	.uaword	0x4ad
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x257
	.uleb128 0x9
	.string	"PduR_CopyRxDataFctPtrType"
	.byte	0x6
	.uahalf	0x43d
	.uaword	0x4d5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4db
	.uleb128 0xa
	.byte	0x1
	.uaword	0x310
	.uaword	0x4f5
	.uleb128 0xb
	.uaword	0x246
	.uleb128 0xb
	.uaword	0x3f8
	.uleb128 0xb
	.uaword	0x4ad
	.byte	0
	.uleb128 0x9
	.string	"PduR_CopyTxDataFctPtrType"
	.byte	0x6
	.uahalf	0x43f
	.uaword	0x517
	.uleb128 0x4
	.byte	0x4
	.uaword	0x51d
	.uleb128 0xa
	.byte	0x1
	.uaword	0x310
	.uaword	0x53c
	.uleb128 0xb
	.uaword	0x246
	.uleb128 0xb
	.uaword	0x3f8
	.uleb128 0xb
	.uaword	0x53c
	.uleb128 0xb
	.uaword	0x4ad
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3a8
	.uleb128 0x9
	.string	"PduR_TpRxIndicationFctPtrType"
	.byte	0x6
	.uahalf	0x441
	.uaword	0x568
	.uleb128 0x4
	.byte	0x4
	.uaword	0x56e
	.uleb128 0xd
	.byte	0x1
	.uaword	0x57f
	.uleb128 0xb
	.uaword	0x246
	.uleb128 0xb
	.uaword	0x230
	.byte	0
	.uleb128 0x9
	.string	"PduR_TpTxConfirmationFctPtrType"
	.byte	0x6
	.uahalf	0x443
	.uaword	0x568
	.uleb128 0x9
	.string	"PduR_ChangeParameterFctPtrType"
	.byte	0x6
	.uahalf	0x44d
	.uaword	0x5ce
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5d4
	.uleb128 0xa
	.byte	0x1
	.uaword	0x230
	.uaword	0x5ee
	.uleb128 0xb
	.uaword	0x246
	.uleb128 0xb
	.uaword	0x3e1
	.uleb128 0xb
	.uaword	0x18c
	.byte	0
	.uleb128 0x9
	.string	"PduR_PartitionIdentifiersIterType"
	.byte	0x6
	.uahalf	0x46a
	.uaword	0x1df
	.uleb128 0x9
	.string	"PduR_RmDestRomIterType"
	.byte	0x6
	.uahalf	0x46d
	.uaword	0x1df
	.uleb128 0x9
	.string	"PduR_RmGDestRomIterType"
	.byte	0x6
	.uahalf	0x470
	.uaword	0x1df
	.uleb128 0x9
	.string	"PduR_RmSrcRomIterType"
	.byte	0x6
	.uahalf	0x473
	.uaword	0x1df
	.uleb128 0x9
	.string	"PduR_InitializedIdxOfDestApplicationManagerRomType"
	.byte	0x6
	.uahalf	0x497
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_InitializedRamType"
	.byte	0x6
	.uahalf	0x4ac
	.uaword	0x143
	.uleb128 0x9
	.string	"PduR_MaskedBitsOfMmRomType"
	.byte	0x6
	.uahalf	0x4bb
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_PduLengthHandlingStrategyOfRmDestRomType"
	.byte	0x6
	.uahalf	0x4c7
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RmGDestRomIdxOfRmDestRomType"
	.byte	0x6
	.uahalf	0x4ca
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RmSrcRomIdxOfRmDestRomType"
	.byte	0x6
	.uahalf	0x4cd
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RoutingTypeOfRmDestRomType"
	.byte	0x6
	.uahalf	0x4d0
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_DestHndOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4d6
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_DirectionOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4d9
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_LockRomIdxOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4dc
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_MaxPduLengthOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4df
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_MmRomIdxOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4e2
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RmDestRomIdxOfRmGDestRomType"
	.byte	0x6
	.uahalf	0x4e8
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_LockRomIdxOfRmSrcRomType"
	.byte	0x6
	.uahalf	0x4f1
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_MmRomIdxOfRmSrcRomType"
	.byte	0x6
	.uahalf	0x4f4
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RmDestRomStartIdxOfRmSrcRomType"
	.byte	0x6
	.uahalf	0x4fd
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_SrcHndOfRmSrcRomType"
	.byte	0x6
	.uahalf	0x500
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RmSrcRomIdxOfRxTp2DestType"
	.byte	0x6
	.uahalf	0x503
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RmDestRomIdxOfRxTp2SrcType"
	.byte	0x6
	.uahalf	0x506
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RmSrcRomIdxOfTx2LoType"
	.byte	0x6
	.uahalf	0x539
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RmTransmitFctPtrIdxOfTx2LoType"
	.byte	0x6
	.uahalf	0x53f
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RmGDestRomIdxOfTxTp2SrcType"
	.byte	0x6
	.uahalf	0x542
	.uaword	0x172
	.uleb128 0x9
	.string	"PduR_RmTransmitFctPtrType"
	.byte	0x6
	.uahalf	0x54f
	.uaword	0xa15
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa1b
	.uleb128 0xa
	.byte	0x1
	.uaword	0x230
	.uaword	0xa30
	.uleb128 0xb
	.uaword	0x657
	.uleb128 0xb
	.uaword	0x455
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x618
	.uleb128 0x9
	.string	"PduR_MemIdxType"
	.byte	0x6
	.uahalf	0x55b
	.uaword	0x172
	.uleb128 0xe
	.string	"sPduR_MmRomType"
	.byte	0x20
	.byte	0x6
	.uahalf	0x588
	.uaword	0xb99
	.uleb128 0xf
	.string	"MaskedBitsOfMmRom"
	.byte	0x6
	.uahalf	0x58a
	.uaword	0x6d0
	.byte	0
	.uleb128 0xf
	.string	"LoTpChangeParameterFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x58b
	.uaword	0x5a7
	.byte	0x4
	.uleb128 0xf
	.string	"UpTpCopyRxDataFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x58c
	.uaword	0x4b3
	.byte	0x8
	.uleb128 0xf
	.string	"UpTpCopyTxDataFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x58d
	.uaword	0x4f5
	.byte	0xc
	.uleb128 0xf
	.string	"UpTpStartOfReceptionFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x58e
	.uaword	0x460
	.byte	0x10
	.uleb128 0xf
	.string	"UpTpTpRxIndicationFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x58f
	.uaword	0x542
	.byte	0x14
	.uleb128 0xf
	.string	"UpTpTpTxConfirmationFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x590
	.uaword	0x57f
	.byte	0x18
	.uleb128 0xf
	.string	"LoTpTransmitFctPtrOfMmRom"
	.byte	0x6
	.uahalf	0x591
	.uaword	0x41a
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PduR_MmRomType"
	.byte	0x6
	.uahalf	0x592
	.uaword	0xa4e
	.uleb128 0xe
	.string	"sPduR_RmDestRomType"
	.byte	0x4
	.byte	0x6
	.uahalf	0x59b
	.uaword	0xc5e
	.uleb128 0xf
	.string	"PduLengthHandlingStrategyOfRmDestRom"
	.byte	0x6
	.uahalf	0x59d
	.uaword	0x6f3
	.byte	0
	.uleb128 0xf
	.string	"RmGDestRomIdxOfRmDestRom"
	.byte	0x6
	.uahalf	0x59e
	.uaword	0x729
	.byte	0x1
	.uleb128 0xf
	.string	"RmSrcRomIdxOfRmDestRom"
	.byte	0x6
	.uahalf	0x59f
	.uaword	0x753
	.byte	0x2
	.uleb128 0xf
	.string	"RoutingTypeOfRmDestRom"
	.byte	0x6
	.uahalf	0x5a0
	.uaword	0x77b
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"PduR_RmDestRomType"
	.byte	0x6
	.uahalf	0x5a1
	.uaword	0xbb0
	.uleb128 0xe
	.string	"sPduR_RmGDestRomType"
	.byte	0x6
	.byte	0x6
	.uahalf	0x5a4
	.uaword	0xd56
	.uleb128 0xf
	.string	"DestHndOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5a6
	.uaword	0x7a3
	.byte	0
	.uleb128 0xf
	.string	"DirectionOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5a7
	.uaword	0x7c8
	.byte	0x1
	.uleb128 0xf
	.string	"LockRomIdxOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5a8
	.uaword	0x7ef
	.byte	0x2
	.uleb128 0xf
	.string	"MaxPduLengthOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5a9
	.uaword	0x817
	.byte	0x3
	.uleb128 0xf
	.string	"MmRomIdxOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5aa
	.uaword	0x841
	.byte	0x4
	.uleb128 0xf
	.string	"RmDestRomIdxOfRmGDestRom"
	.byte	0x6
	.uahalf	0x5ab
	.uaword	0x867
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PduR_RmGDestRomType"
	.byte	0x6
	.uahalf	0x5ac
	.uaword	0xc79
	.uleb128 0xe
	.string	"sPduR_RmSrcRomType"
	.byte	0x4
	.byte	0x6
	.uahalf	0x5af
	.uaword	0xe08
	.uleb128 0xf
	.string	"LockRomIdxOfRmSrcRom"
	.byte	0x6
	.uahalf	0x5b1
	.uaword	0x891
	.byte	0
	.uleb128 0xf
	.string	"MmRomIdxOfRmSrcRom"
	.byte	0x6
	.uahalf	0x5b2
	.uaword	0x8b7
	.byte	0x1
	.uleb128 0xf
	.string	"RmDestRomStartIdxOfRmSrcRom"
	.byte	0x6
	.uahalf	0x5b3
	.uaword	0x8db
	.byte	0x2
	.uleb128 0xf
	.string	"SrcHndOfRmSrcRom"
	.byte	0x6
	.uahalf	0x5b4
	.uaword	0x908
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"PduR_RmSrcRomType"
	.byte	0x6
	.uahalf	0x5b5
	.uaword	0xd72
	.uleb128 0xe
	.string	"sPduR_RxTp2SrcType"
	.byte	0x1
	.byte	0x6
	.uahalf	0x5be
	.uaword	0xe5f
	.uleb128 0xf
	.string	"RmDestRomIdxOfRxTp2Src"
	.byte	0x6
	.uahalf	0x5c0
	.uaword	0x952
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"PduR_RxTp2SrcType"
	.byte	0x6
	.uahalf	0x5c1
	.uaword	0xe22
	.uleb128 0xe
	.string	"sPduR_Tx2LoType"
	.byte	0x2
	.byte	0x6
	.uahalf	0x5ca
	.uaword	0xed3
	.uleb128 0xf
	.string	"RmSrcRomIdxOfTx2Lo"
	.byte	0x6
	.uahalf	0x5cc
	.uaword	0x97a
	.byte	0
	.uleb128 0xf
	.string	"RmTransmitFctPtrIdxOfTx2Lo"
	.byte	0x6
	.uahalf	0x5cd
	.uaword	0x99e
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"PduR_Tx2LoType"
	.byte	0x6
	.uahalf	0x5ce
	.uaword	0xe79
	.uleb128 0xe
	.string	"PduR_InitializedRamStructSTag"
	.byte	0x1
	.byte	0x6
	.uahalf	0x5e0
	.uaword	0xf34
	.uleb128 0xf
	.string	"PduRSinglePartitionDummy"
	.byte	0x6
	.uahalf	0x5e2
	.uaword	0x6b0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"PduR_InitializedRamStructSType"
	.byte	0x6
	.uahalf	0x5e3
	.uaword	0xeea
	.uleb128 0x10
	.string	"PduR_InitializedRamUTag"
	.byte	0x1
	.byte	0x6
	.uahalf	0x5ef
	.uaword	0xf95
	.uleb128 0x11
	.string	"raw"
	.byte	0x6
	.uahalf	0x5f1
	.uaword	0xf95
	.uleb128 0x11
	.string	"str"
	.byte	0x6
	.uahalf	0x5f2
	.uaword	0xf34
	.byte	0
	.uleb128 0x12
	.uaword	0x6b0
	.uaword	0xfa5
	.uleb128 0x13
	.uaword	0x3fe
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"PduR_InitializedRamUType"
	.byte	0x6
	.uahalf	0x5f3
	.uaword	0xf5b
	.uleb128 0xe
	.string	"sPduR_PCConfigType"
	.byte	0x1
	.byte	0x6
	.uahalf	0x647
	.uaword	0x1003
	.uleb128 0xf
	.string	"PduR_PCConfigNeverUsed"
	.byte	0x6
	.uahalf	0x649
	.uaword	0x172
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"PduR_PCConfigType"
	.byte	0x6
	.uahalf	0x64a
	.uaword	0xfc6
	.uleb128 0x9
	.string	"PduR_PBConfigType"
	.byte	0x6
	.uahalf	0x64c
	.uaword	0x1003
	.uleb128 0x14
	.string	"PduR_GetMemIdx"
	.byte	0x1
	.uahalf	0x632
	.byte	0x1
	.uaword	0xa36
	.byte	0x3
	.uleb128 0x15
	.string	"PduR_InitMemorySection"
	.byte	0x1
	.uahalf	0x6bd
	.byte	0x1
	.byte	0x3
	.uaword	0x1081
	.uleb128 0x16
	.string	"memIdx"
	.byte	0x1
	.uahalf	0x6bd
	.uaword	0xa36
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"PduR_GetConfigurationId"
	.byte	0x1
	.uahalf	0x1b4
	.byte	0x1
	.uaword	0x1bc
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10f0
	.uleb128 0x18
	.string	"configID"
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x18c
	.byte	0
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x172
	.uaword	.LLST0
	.uleb128 0x1a
	.uaword	.LVL4
	.uaword	0x19e5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xf2
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"PduR_UpTransmit"
	.byte	0x1
	.uahalf	0x1e3
	.byte	0x1
	.uaword	0x230
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x118f
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x246
	.uaword	.LLST1
	.uleb128 0x1c
	.string	"info"
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x455
	.uaword	.LLST2
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1e6
	.uaword	0x172
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1e7
	.uaword	0x230
	.uaword	.LLST4
	.uleb128 0x1d
	.uaword	.LVL7
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1173
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL11
	.uaword	0x19e5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xc8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"PduR_LoTpStartOfReception"
	.byte	0x1
	.uahalf	0x2fc
	.byte	0x1
	.uaword	0x310
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x12ac
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.uahalf	0x2fc
	.uaword	0x246
	.uaword	.LLST5
	.uleb128 0x1c
	.string	"info"
	.byte	0x1
	.uahalf	0x2fc
	.uaword	0x3f8
	.uaword	.LLST6
	.uleb128 0x1c
	.string	"TpSduLength"
	.byte	0x1
	.uahalf	0x2fc
	.uaword	0x257
	.uaword	.LLST7
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2fd
	.uaword	0x4ad
	.uaword	.LLST8
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x300
	.uaword	0x172
	.uaword	.LLST9
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x301
	.uaword	0x310
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	0x1290
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x319
	.uaword	0x92a
	.uaword	.LLST11
	.uleb128 0x20
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x329
	.uaword	0x8db
	.uleb128 0x20
	.uaword	.LBB8
	.uaword	.LBE8
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x335
	.uaword	0x729
	.uleb128 0x22
	.uaword	.LVL15
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL20
	.uaword	0x19e5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xcc
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"PduR_LoTpCopyRxData"
	.byte	0x1
	.uahalf	0x389
	.byte	0x1
	.uaword	0x310
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x13ab
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.uahalf	0x389
	.uaword	0x246
	.uaword	.LLST12
	.uleb128 0x1c
	.string	"info"
	.byte	0x1
	.uahalf	0x389
	.uaword	0x3f8
	.uaword	.LLST13
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x389
	.uaword	0x4ad
	.uaword	.LLST14
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x38c
	.uaword	0x172
	.uaword	.LLST15
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x38d
	.uaword	0x310
	.uaword	.LLST16
	.uleb128 0x1f
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0x138f
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x3a5
	.uaword	0x92a
	.uaword	.LLST17
	.uleb128 0x20
	.uaword	.LBB10
	.uaword	.LBE10
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x3ac
	.uaword	0x8db
	.uleb128 0x20
	.uaword	.LBB11
	.uaword	.LBE11
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x3b9
	.uaword	0x729
	.uleb128 0x22
	.uaword	.LVL24
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL28
	.uaword	0x19e5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xcd
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"PduR_LoTpCopyTxData"
	.byte	0x1
	.uahalf	0x405
	.byte	0x1
	.uaword	0x310
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1486
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.uahalf	0x405
	.uaword	0x246
	.uaword	.LLST18
	.uleb128 0x1c
	.string	"info"
	.byte	0x1
	.uahalf	0x405
	.uaword	0x3f8
	.uaword	.LLST19
	.uleb128 0x1c
	.string	"retry"
	.byte	0x1
	.uahalf	0x405
	.uaword	0x53c
	.uaword	.LLST20
	.uleb128 0x1c
	.string	"availableDataPtr"
	.byte	0x1
	.uahalf	0x406
	.uaword	0x4ad
	.uaword	.LLST21
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x409
	.uaword	0x172
	.uaword	.LLST22
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x40a
	.uaword	0x310
	.uaword	.LLST23
	.uleb128 0x23
	.uaword	.LVL31
	.uaword	0x1a19
	.uaword	0x146a
	.uleb128 0x1b
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL34
	.uaword	0x19e5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xce
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"PduR_LoTpRxIndication"
	.byte	0x1
	.uahalf	0x448
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1557
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.uahalf	0x448
	.uaword	0x246
	.uaword	.LLST24
	.uleb128 0x1c
	.string	"result"
	.byte	0x1
	.uahalf	0x448
	.uaword	0x230
	.uaword	.LLST25
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x44b
	.uaword	0x172
	.uaword	.LLST26
	.uleb128 0x1f
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	0x153b
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x46b
	.uaword	0x92a
	.uaword	.LLST27
	.uleb128 0x20
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x46f
	.uaword	0x8db
	.uleb128 0x20
	.uaword	.LBB14
	.uaword	.LBE14
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x478
	.uaword	0x729
	.uleb128 0x22
	.uaword	.LVL38
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL43
	.uaword	0x19e5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xcf
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"PduR_LoTpTxConfirmation"
	.byte	0x1
	.uahalf	0x4ac
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x15db
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.uahalf	0x4ac
	.uaword	0x246
	.uaword	.LLST28
	.uleb128 0x1c
	.string	"result"
	.byte	0x1
	.uahalf	0x4ac
	.uaword	0x230
	.uaword	.LLST29
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x4af
	.uaword	0x172
	.uaword	.LLST30
	.uleb128 0x25
	.uaword	.LVL46
	.uaword	0x1a67
	.uleb128 0x1a
	.uaword	.LVL50
	.uaword	0x19e5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xd0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"PduR_ChangeParameter"
	.byte	0x1
	.uahalf	0x53b
	.byte	0x1
	.uaword	0x230
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x16e6
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.uahalf	0x53b
	.uaword	0x246
	.uaword	.LLST31
	.uleb128 0x1c
	.string	"parameter"
	.byte	0x1
	.uahalf	0x53b
	.uaword	0x3e1
	.uaword	.LLST32
	.uleb128 0x1c
	.string	"value"
	.byte	0x1
	.uahalf	0x53b
	.uaword	0x18c
	.uaword	.LLST33
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x53e
	.uaword	0x172
	.uaword	.LLST34
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x53f
	.uaword	0x230
	.uaword	.LLST35
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0
	.uaword	0x16ca
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x557
	.uaword	0x952
	.uleb128 0x21
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x558
	.uaword	0x753
	.uleb128 0x27
	.string	"mmRomIdx"
	.byte	0x1
	.uahalf	0x559
	.uaword	0x8b7
	.uleb128 0x20
	.uaword	.LBB16
	.uaword	.LBE16
	.uleb128 0x27
	.string	"srcHnd"
	.byte	0x1
	.uahalf	0x55d
	.uaword	0x908
	.uleb128 0x28
	.uaword	.LVL58
	.byte	0xf
	.byte	0x8f
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL64
	.uaword	0x19e5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xc5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"PduR_PreInit"
	.byte	0x1
	.uahalf	0x64f
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x176c
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x64f
	.uaword	0x176c
	.uaword	.LLST36
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x651
	.uaword	0x172
	.uaword	.LLST37
	.uleb128 0x29
	.string	"partitionIdentifiersIdx"
	.byte	0x1
	.uahalf	0x652
	.uaword	0x5ee
	.uaword	.LLST38
	.uleb128 0x1a
	.uaword	.LVL67
	.uaword	0x19e5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1772
	.uleb128 0xc
	.uaword	0x101d
	.uleb128 0x24
	.byte	0x1
	.string	"PduR_Init"
	.byte	0x1
	.uahalf	0x696
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x17ef
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x696
	.uaword	0x176c
	.uaword	.LLST39
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x699
	.uaword	0x172
	.uaword	.LLST40
	.uleb128 0x2a
	.uaword	0x1050
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x1
	.uahalf	0x6a6
	.uaword	0x17d4
	.uleb128 0x2b
	.uaword	0x1071
	.uaword	.LLST41
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL74
	.uaword	0x19e5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"PduR_Rm_GetSrcDestPdu"
	.byte	0x1
	.uahalf	0x783
	.byte	0x1
	.uaword	0x230
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1848
	.uleb128 0x2c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x783
	.uaword	0x637
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x783
	.uaword	0xa30
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x785
	.uaword	0x230
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"PduR_InitMemory"
	.byte	0x1
	.uahalf	0x7cc
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x12
	.uaword	0xb99
	.uaword	0x1879
	.uleb128 0x13
	.uaword	0x3fe
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.string	"PduR_MmRom"
	.byte	0x6
	.uahalf	0x6b2
	.uaword	0x188e
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x1869
	.uleb128 0x12
	.uaword	0xc5e
	.uaword	0x18a3
	.uleb128 0x13
	.uaword	0x3fe
	.byte	0x5
	.byte	0
	.uleb128 0x2f
	.string	"PduR_RmDestRom"
	.byte	0x6
	.uahalf	0x6dd
	.uaword	0x18bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x1893
	.uleb128 0x12
	.uaword	0xd56
	.uaword	0x18d1
	.uleb128 0x13
	.uaword	0x3fe
	.byte	0x5
	.byte	0
	.uleb128 0x2f
	.string	"PduR_RmGDestRom"
	.byte	0x6
	.uahalf	0x6f6
	.uaword	0x18eb
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x18c1
	.uleb128 0x12
	.uaword	0xe08
	.uaword	0x1900
	.uleb128 0x13
	.uaword	0x3fe
	.byte	0x5
	.byte	0
	.uleb128 0x2f
	.string	"PduR_RmSrcRom"
	.byte	0x6
	.uahalf	0x70d
	.uaword	0x1918
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x18f0
	.uleb128 0x12
	.uaword	0x9f3
	.uaword	0x192d
	.uleb128 0x13
	.uaword	0x3fe
	.byte	0
	.byte	0
	.uleb128 0x2f
	.string	"PduR_RmTransmitFctPtr"
	.byte	0x6
	.uahalf	0x71e
	.uaword	0x194d
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x191d
	.uleb128 0x12
	.uaword	0xe5f
	.uaword	0x1962
	.uleb128 0x13
	.uaword	0x3fe
	.byte	0x3
	.byte	0
	.uleb128 0x2f
	.string	"PduR_RxTp2Src"
	.byte	0x6
	.uahalf	0x732
	.uaword	0x197a
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x1952
	.uleb128 0x12
	.uaword	0xed3
	.uaword	0x198f
	.uleb128 0x13
	.uaword	0x3fe
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.string	"PduR_Tx2Lo"
	.byte	0x6
	.uahalf	0x747
	.uaword	0x19a4
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x197f
	.uleb128 0x2f
	.string	"PduR_InitializedRam"
	.byte	0x6
	.uahalf	0x758
	.uaword	0xfa5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"PduR_PreInitialized"
	.byte	0x6
	.uahalf	0x772
	.uaword	0x143
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x7
	.uahalf	0x116
	.byte	0x1
	.uaword	0x230
	.byte	0x1
	.uaword	0x1a19
	.uleb128 0xb
	.uaword	0x18c
	.uleb128 0xb
	.uaword	0x172
	.uleb128 0xb
	.uaword	0x172
	.uleb128 0xb
	.uaword	0x172
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"PduR_RmTp_MultipleSourceHandler_CopyTxData"
	.byte	0x8
	.byte	0x6f
	.byte	0x1
	.uaword	0x310
	.byte	0x1
	.uaword	0x1a67
	.uleb128 0xb
	.uaword	0x9ca
	.uleb128 0xb
	.uaword	0x3f8
	.uleb128 0xb
	.uaword	0x53c
	.uleb128 0xb
	.uaword	0x4ad
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"PduR_RmTp_MultipleSourceHandler_TpTxConfirmation"
	.byte	0x8
	.byte	0x81
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x9ca
	.uleb128 0xb
	.uaword	0x230
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7-1
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8
	.uaword	.LFE16
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15-1
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15-1
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15-1
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL20-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL12
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LFE17
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL21
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24-1
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL21
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL24-1
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL28-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL34-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31-1
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL34-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL31-1
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL34-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL35
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL38-1
	.uaword	.LVL39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL42
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL44
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL46-1
	.uaword	.LVL47
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL49
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL44
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL52
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL60
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL51
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL58-1
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL62
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL51
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL58-1
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL63
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL51
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL51
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL65
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL67-1
	.uaword	.LVL68
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL70
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL70
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x74
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
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
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF6:
	.string	"ConfigPtr"
.LASF2:
	.string	"bufferSizePtr"
.LASF0:
	.string	"errorId"
.LASF5:
	.string	"rmGDestRomIdx"
.LASF3:
	.string	"rmSrcRomIdx"
.LASF4:
	.string	"rmDestRomIdx"
.LASF1:
	.string	"retVal"
	.extern	PduR_RxTp2Src,STT_OBJECT,4
	.extern	PduR_RmTp_MultipleSourceHandler_TpTxConfirmation,STT_FUNC,0
	.extern	PduR_RmTp_MultipleSourceHandler_CopyTxData,STT_FUNC,0
	.extern	PduR_MmRom,STT_OBJECT,64
	.extern	PduR_RmGDestRom,STT_OBJECT,36
	.extern	PduR_RmDestRom,STT_OBJECT,24
	.extern	PduR_RmTransmitFctPtr,STT_OBJECT,4
	.extern	PduR_RmSrcRom,STT_OBJECT,24
	.extern	PduR_Tx2Lo,STT_OBJECT,4
	.extern	Det_ReportError,STT_FUNC,0
	.extern	PduR_InitializedRam,STT_OBJECT,1
	.extern	PduR_PreInitialized,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
