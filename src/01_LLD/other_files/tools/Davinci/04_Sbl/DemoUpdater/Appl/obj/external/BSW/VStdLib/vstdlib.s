	.file	"vstdlib.c"
.section .text,"ax",@progbits
.Ltext0:
.section .RamCodeCoreSection,"ax",@progbits
	.align 1
	.global	VStdLib_MemSet
	.type	VStdLib_MemSet, @function
VStdLib_MemSet:
.LFB35:
	.file 1 "../../../../external/BSW/VStdLib/vstdlib.c"
	.loc 1 2165 0
.LVL0:
	.loc 1 2185 0
	ge.u	%d15, %d5, 32
	jnz	%d15, .L2
.LVL1:
.LBB131:
.LBB132:
	.loc 1 930 0
	and	%d5, %d5, 255
.LVL2:
	add	%d5, -1
	ge.u	%d15, %d5, 31
	jnz	%d15, .L1
	movh.a	%a15, hi:.L5
	lea	%a15, [%a15] lo:.L5
	addsc.a	%a15, %a15, %d5, 2
	ji	%a15
	.align 2
	.align 2
.L5:
	.code32
	j	.L4
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L8
	.code32
	j	.L9
	.code32
	j	.L10
	.code32
	j	.L11
	.code32
	j	.L12
	.code32
	j	.L13
	.code32
	j	.L14
	.code32
	j	.L15
	.code32
	j	.L16
	.code32
	j	.L17
	.code32
	j	.L18
	.code32
	j	.L19
	.code32
	j	.L20
	.code32
	j	.L21
	.code32
	j	.L22
	.code32
	j	.L23
	.code32
	j	.L24
	.code32
	j	.L25
	.code32
	j	.L26
	.code32
	j	.L27
	.code32
	j	.L28
	.code32
	j	.L29
	.code32
	j	.L30
	.code32
	j	.L31
	.code32
	j	.L32
	.code32
	j	.L33
	.code32
	j	.L34
	.code32
	j	.L35
.L35:
	.loc 1 933 0
	st.b	[%a4] 30, %d4
.L34:
	.loc 1 936 0
	st.b	[%a4] 29, %d4
.L33:
	.loc 1 939 0
	st.b	[%a4] 28, %d4
.L32:
	.loc 1 942 0
	st.b	[%a4] 27, %d4
.L31:
	.loc 1 945 0
	st.b	[%a4] 26, %d4
.L30:
	.loc 1 948 0
	st.b	[%a4] 25, %d4
.L29:
	.loc 1 951 0
	st.b	[%a4] 24, %d4
.L28:
	.loc 1 954 0
	st.b	[%a4] 23, %d4
.L27:
	.loc 1 957 0
	st.b	[%a4] 22, %d4
.L26:
	.loc 1 960 0
	st.b	[%a4] 21, %d4
.L25:
	.loc 1 963 0
	st.b	[%a4] 20, %d4
.L24:
	.loc 1 966 0
	st.b	[%a4] 19, %d4
.L23:
	.loc 1 969 0
	st.b	[%a4] 18, %d4
.L22:
	.loc 1 972 0
	st.b	[%a4] 17, %d4
.L21:
	.loc 1 975 0
	st.b	[%a4] 16, %d4
.L20:
	.loc 1 978 0
	st.b	[%a4] 15, %d4
.L19:
	.loc 1 981 0
	st.b	[%a4] 14, %d4
.L18:
	.loc 1 984 0
	st.b	[%a4] 13, %d4
.L17:
	.loc 1 987 0
	st.b	[%a4] 12, %d4
.L16:
	.loc 1 990 0
	st.b	[%a4] 11, %d4
.L15:
	.loc 1 993 0
	st.b	[%a4] 10, %d4
.L14:
	.loc 1 996 0
	st.b	[%a4] 9, %d4
.L13:
	.loc 1 999 0
	st.b	[%a4] 8, %d4
.L12:
	.loc 1 1002 0
	st.b	[%a4] 7, %d4
.L11:
	.loc 1 1005 0
	st.b	[%a4] 6, %d4
.L10:
	.loc 1 1008 0
	st.b	[%a4] 5, %d4
.L9:
	.loc 1 1011 0
	st.b	[%a4] 4, %d4
.L8:
	.loc 1 1014 0
	st.b	[%a4] 3, %d4
.L7:
	.loc 1 1017 0
	st.b	[%a4] 2, %d4
.L6:
	.loc 1 1020 0
	st.b	[%a4] 1, %d4
.L4:
	.loc 1 1023 0
	st.b	[%a4]0, %d4
	ret
.LVL3:
.L2:
.LBE132:
.LBE131:
.LBB133:
	.loc 1 2197 0
	mov.d	%d15, %a4
	rsub	%d15
	and	%d15, %d15, 3
.LVL4:
	.loc 1 2200 0
	jz	%d15, .L36
.LVL5:
.LBB134:
.LBB135:
	.loc 1 879 0
	jeq	%d15, 2, .L38
	jeq	%d15, 3, .L39
	jne	%d15, 1, .L37
	j	.L40
.L39:
	.loc 1 882 0
	st.b	[%a4] 2, %d4
.L38:
	.loc 1 885 0
	st.b	[%a4] 1, %d4
.L40:
	.loc 1 888 0
	st.b	[%a4]0, %d4
.L37:
.LBE135:
.LBE134:
	.loc 1 2208 0
	addsc.a	%a4, %a4, %d15, 0
.LVL6:
	.loc 1 2209 0
	sub	%d5, %d15
.LVL7:
.L36:
.LBB136:
.LBB137:
	.loc 1 1065 0
	sh	%d15, %d4, 24
.LVL8:
	sh	%d3, %d4, 16
	or	%d15, %d3
	or	%d2, %d15, %d4
	sh	%d15, %d4, 8
	.loc 1 1064 0
	or	%d15, %d2
.LVL9:
	.loc 1 1069 0
	lt.u	%d3, %d5, 16
	.loc 1 1062 0
	mov	%d2, 0
	.loc 1 1069 0
	jnz	%d3, .L41
	mov.aa	%a15, %a4
	mov	%d2, %d5
	addi	%d3, %d5, -16
	sh	%d3, -4
	mov.a	%a2, %d3
.LVL10:
.L42:
	.loc 1 1071 0
	st.w	[%a15]0, %d15
	.loc 1 1072 0
	st.w	[%a15] 4, %d15
	.loc 1 1073 0
	st.w	[%a15] 8, %d15
	.loc 1 1074 0
	st.w	[%a15] 12, %d15
	.loc 1 1069 0
	addi	%d2, %d2, -16
.LVL11:
	lea	%a15, [%a15] 16
	loop	%a2, .L42
	addi	%d2, %d5, -16
.LVL12:
	sh	%d2, -4
	add	%d2, 1
	sh	%d2, 2
	and	%d5, %d5, 15
.LVL13:
.L41:
	.loc 1 1082 0
	addi	%d3, %d5, -1
	jge.u	%d3, 15, .L1
	movh.a	%a15, hi:.L44
	lea	%a15, [%a15] lo:.L44
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L44:
	.code32
	j	.L43
	.code32
	j	.L43
	.code32
	j	.L43
	.code32
	j	.L45
	.code32
	j	.L45
	.code32
	j	.L45
	.code32
	j	.L45
	.code32
	j	.L46
	.code32
	j	.L46
	.code32
	j	.L46
	.code32
	j	.L46
	.code32
	j	.L47
	.code32
	j	.L47
	.code32
	j	.L47
	.code32
	j	.L47
.L47:
	.loc 1 1088 0
	addsc.a	%a15, %a4, %d2, 2
	st.w	[%a15]0, %d15
	.loc 1 1089 0
	add	%d2, 1
.LVL14:
.L46:
	.loc 1 1095 0
	addsc.a	%a15, %a4, %d2, 2
	st.w	[%a15]0, %d15
	.loc 1 1096 0
	add	%d2, 1
.LVL15:
.L45:
	.loc 1 1102 0
	addsc.a	%a15, %a4, %d2, 2
	st.w	[%a15]0, %d15
	.loc 1 1103 0
	add	%d2, 1
.LVL16:
.L43:
	.loc 1 1108 0
	addsc.a	%a4, %a4, %d2, 2
.LVL17:
.LBB138:
.LBB139:
	.loc 1 879 0
	and	%d5, %d5, 3
.LVL18:
	jeq	%d5, 2, .L48
	jeq	%d5, 3, .L49
	jne	%d5, 1, .L1
	j	.L50
.L49:
	.loc 1 882 0
	st.b	[%a4] 2, %d4
.L48:
	.loc 1 885 0
	st.b	[%a4] 1, %d4
.L50:
	.loc 1 888 0
	st.b	[%a4]0, %d4
.LVL19:
.L1:
	ret
.LBE139:
.LBE138:
.LBE137:
.LBE136:
.LBE133:
.LFE35:
	.size	VStdLib_MemSet, .-VStdLib_MemSet
	.align 1
	.global	VStdLib_MemCpy
	.type	VStdLib_MemCpy, @function
VStdLib_MemCpy:
.LFB36:
	.loc 1 2268 0
.LVL20:
	.loc 1 2290 0
	ge.u	%d15, %d4, 32
	jnz	%d15, .L54
.LVL21:
.LBB163:
.LBB164:
	.loc 1 1202 0
	and	%d4, %d4, 255
.LVL22:
	add	%d4, -1
	ge.u	%d15, %d4, 31
	jnz	%d15, .L53
	movh.a	%a15, hi:.L57
	lea	%a15, [%a15] lo:.L57
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L57:
	.code32
	j	.L56
	.code32
	j	.L58
	.code32
	j	.L59
	.code32
	j	.L60
	.code32
	j	.L61
	.code32
	j	.L62
	.code32
	j	.L63
	.code32
	j	.L64
	.code32
	j	.L65
	.code32
	j	.L66
	.code32
	j	.L67
	.code32
	j	.L68
	.code32
	j	.L69
	.code32
	j	.L70
	.code32
	j	.L71
	.code32
	j	.L72
	.code32
	j	.L73
	.code32
	j	.L74
	.code32
	j	.L75
	.code32
	j	.L76
	.code32
	j	.L77
	.code32
	j	.L78
	.code32
	j	.L79
	.code32
	j	.L80
	.code32
	j	.L81
	.code32
	j	.L82
	.code32
	j	.L83
	.code32
	j	.L84
	.code32
	j	.L85
	.code32
	j	.L86
	.code32
	j	.L87
.L87:
	.loc 1 1205 0
	ld.bu	%d15, [%a5] 30
	st.b	[%a4] 30, %d15
.L86:
	.loc 1 1208 0
	ld.bu	%d15, [%a5] 29
	st.b	[%a4] 29, %d15
.L85:
	.loc 1 1211 0
	ld.bu	%d15, [%a5] 28
	st.b	[%a4] 28, %d15
.L84:
	.loc 1 1214 0
	ld.bu	%d15, [%a5] 27
	st.b	[%a4] 27, %d15
.L83:
	.loc 1 1217 0
	ld.bu	%d15, [%a5] 26
	st.b	[%a4] 26, %d15
.L82:
	.loc 1 1220 0
	ld.bu	%d15, [%a5] 25
	st.b	[%a4] 25, %d15
.L81:
	.loc 1 1223 0
	ld.bu	%d15, [%a5] 24
	st.b	[%a4] 24, %d15
.L80:
	.loc 1 1226 0
	ld.bu	%d15, [%a5] 23
	st.b	[%a4] 23, %d15
.L79:
	.loc 1 1229 0
	ld.bu	%d15, [%a5] 22
	st.b	[%a4] 22, %d15
.L78:
	.loc 1 1232 0
	ld.bu	%d15, [%a5] 21
	st.b	[%a4] 21, %d15
.L77:
	.loc 1 1235 0
	ld.bu	%d15, [%a5] 20
	st.b	[%a4] 20, %d15
.L76:
	.loc 1 1238 0
	ld.bu	%d15, [%a5] 19
	st.b	[%a4] 19, %d15
.L75:
	.loc 1 1241 0
	ld.bu	%d15, [%a5] 18
	st.b	[%a4] 18, %d15
.L74:
	.loc 1 1244 0
	ld.bu	%d15, [%a5] 17
	st.b	[%a4] 17, %d15
.L73:
	.loc 1 1247 0
	ld.bu	%d15, [%a5] 16
	st.b	[%a4] 16, %d15
.L72:
	.loc 1 1250 0
	ld.bu	%d15, [%a5] 15
	st.b	[%a4] 15, %d15
.L71:
	.loc 1 1253 0
	ld.bu	%d15, [%a5] 14
	st.b	[%a4] 14, %d15
.L70:
	.loc 1 1256 0
	ld.bu	%d15, [%a5] 13
	st.b	[%a4] 13, %d15
.L69:
	.loc 1 1259 0
	ld.bu	%d15, [%a5] 12
	st.b	[%a4] 12, %d15
.L68:
	.loc 1 1262 0
	ld.bu	%d15, [%a5] 11
	st.b	[%a4] 11, %d15
.L67:
	.loc 1 1265 0
	ld.bu	%d15, [%a5] 10
	st.b	[%a4] 10, %d15
.L66:
	.loc 1 1268 0
	ld.bu	%d15, [%a5] 9
	st.b	[%a4] 9, %d15
.L65:
	.loc 1 1271 0
	ld.bu	%d15, [%a5] 8
	st.b	[%a4] 8, %d15
.L64:
	.loc 1 1274 0
	ld.bu	%d15, [%a5] 7
	st.b	[%a4] 7, %d15
.L63:
	.loc 1 1277 0
	ld.bu	%d15, [%a5] 6
	st.b	[%a4] 6, %d15
.L62:
	.loc 1 1280 0
	ld.bu	%d15, [%a5] 5
	st.b	[%a4] 5, %d15
.L61:
	.loc 1 1283 0
	ld.bu	%d15, [%a5] 4
	st.b	[%a4] 4, %d15
.L60:
	.loc 1 1286 0
	ld.bu	%d15, [%a5] 3
	st.b	[%a4] 3, %d15
.L59:
	.loc 1 1289 0
	ld.bu	%d15, [%a5] 2
	st.b	[%a4] 2, %d15
.L58:
	.loc 1 1292 0
	ld.bu	%d15, [%a5] 1
	st.b	[%a4] 1, %d15
.L56:
	.loc 1 1295 0
	ld.bu	%d15, [%a5]0
	st.b	[%a4]0, %d15
	ret
.LVL23:
.L54:
.LBE164:
.LBE163:
.LBB165:
	.loc 1 2302 0
	mov.d	%d15, %a5
	rsub	%d15
	and	%d15, %d15, 3
.LVL24:
	.loc 1 2306 0
	jz	%d15, .L88
.LVL25:
.LBB166:
.LBB167:
	.loc 1 1151 0
	jeq	%d15, 2, .L90
	jeq	%d15, 3, .L91
	jne	%d15, 1, .L89
	j	.L92
.L91:
	.loc 1 1154 0
	ld.bu	%d2, [%a5] 2
	st.b	[%a4] 2, %d2
.L90:
	.loc 1 1157 0
	ld.bu	%d2, [%a5] 1
	st.b	[%a4] 1, %d2
.L92:
	.loc 1 1160 0
	ld.bu	%d2, [%a5]0
	st.b	[%a4]0, %d2
.L89:
.LBE167:
.LBE166:
	.loc 1 2314 0
	addsc.a	%a5, %a5, %d15, 0
.LVL26:
	.loc 1 2315 0
	addsc.a	%a4, %a4, %d15, 0
.LVL27:
	.loc 1 2316 0
	sub	%d4, %d15
.LVL28:
	.loc 1 2320 0
	mov.d	%d5, %a4
	rsub	%d5
	and	%d5, %d5, 3
.LVL29:
	.loc 1 2323 0
	jnz	%d5, .L93
.LVL30:
.L151:
.LBB168:
.LBB169:
	.loc 1 1340 0
	lt.u	%d2, %d4, 16
	mov	%d15, 0
.LVL31:
	jnz	%d2, .L94
	addi	%d2, %d4, -16
	sh	%d2, -4
	mov.a	%a15, %d2
.LVL32:
.L95:
	rsub	%d2, %d15, 0
	.loc 1 1342 0
	addsc.a	%a2, %a5, %d2, 0
	ld.w	%d8, [%a2]0
.LVL33:
	rsub	%d6, %d15, 4
	.loc 1 1343 0
	addsc.a	%a2, %a5, %d6, 0
	ld.w	%d1, [%a2]0
.LVL34:
	rsub	%d5, %d15, 8
	.loc 1 1344 0
	addsc.a	%a2, %a5, %d5, 0
	ld.w	%d0, [%a2]0
.LVL35:
	rsub	%d3, %d15, 12
	.loc 1 1345 0
	addsc.a	%a7, %a5, %d3, 0
	ld.w	%d7, [%a7]0
.LVL36:
	.loc 1 1346 0
	addsc.a	%a7, %a4, %d2, 0
	st.w	[%a7]0, %d8
	.loc 1 1347 0
	addsc.a	%a6, %a4, %d6, 0
	st.w	[%a6]0, %d1
	.loc 1 1348 0
	addsc.a	%a3, %a4, %d5, 0
	st.w	[%a3]0, %d0
	.loc 1 1349 0
	addsc.a	%a2, %a4, %d3, 0
	st.w	[%a2]0, %d7
.LVL37:
	addi	%d15, %d15, -16
.LVL38:
	.loc 1 1340 0
	loop	%a15, .L95
	addi	%d15, %d4, -16
.LVL39:
	sh	%d15, -4
	add	%d15, 1
	sh	%d15, 2
	and	%d4, %d4, 15
.LVL40:
.L94:
	.loc 1 1357 0
	addi	%d2, %d4, -1
	jge.u	%d2, 15, .L53
	movh.a	%a15, hi:.L97
	lea	%a15, [%a15] lo:.L97
	addsc.a	%a15, %a15, %d2, 2
	ji	%a15
	.align 2
	.align 2
.L97:
	.code32
	j	.L96
	.code32
	j	.L96
	.code32
	j	.L96
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L99
	.code32
	j	.L99
	.code32
	j	.L99
	.code32
	j	.L99
	.code32
	j	.L100
	.code32
	j	.L100
	.code32
	j	.L100
	.code32
	j	.L100
.L100:
	.loc 1 1363 0
	sh	%d2, %d15, 2
	addsc.a	%a15, %a5, %d2, 0
	ld.w	%d3, [%a15]0
	addsc.a	%a15, %a4, %d2, 0
	st.w	[%a15]0, %d3
	.loc 1 1364 0
	add	%d15, 1
.LVL41:
.L99:
	.loc 1 1370 0
	sh	%d2, %d15, 2
	addsc.a	%a15, %a5, %d2, 0
	ld.w	%d3, [%a15]0
	addsc.a	%a15, %a4, %d2, 0
	st.w	[%a15]0, %d3
	.loc 1 1371 0
	add	%d15, 1
.LVL42:
.L98:
	.loc 1 1377 0
	sh	%d2, %d15, 2
	addsc.a	%a15, %a5, %d2, 0
	ld.w	%d3, [%a15]0
	addsc.a	%a15, %a4, %d2, 0
	st.w	[%a15]0, %d3
	.loc 1 1378 0
	add	%d15, 1
.LVL43:
.L96:
	.loc 1 1384 0
	sh	%d15, 2
.LVL44:
	.loc 1 1383 0
	addsc.a	%a4, %a4, %d15, 0
.LVL45:
	addsc.a	%a5, %a5, %d15, 0
.LVL46:
.LBB170:
.LBB171:
	.loc 1 1151 0
	and	%d4, %d4, 3
.LVL47:
	jeq	%d4, 2, .L101
	jeq	%d4, 3, .L102
	jne	%d4, 1, .L53
	j	.L103
.L102:
	.loc 1 1154 0
	ld.bu	%d15, [%a5] 2
	st.b	[%a4] 2, %d15
.L101:
	.loc 1 1157 0
	ld.bu	%d15, [%a5] 1
	st.b	[%a4] 1, %d15
.L103:
	.loc 1 1160 0
	ld.bu	%d15, [%a5]0
	st.b	[%a4]0, %d15
	ret
.LVL48:
.L93:
.LBE171:
.LBE170:
.LBE169:
.LBE168:
.LBB172:
.LBB173:
	.loc 1 1534 0
	lt.u	%d15, %d4, 32
.LVL49:
	.loc 1 1528 0
	mov	%d2, 0
	.loc 1 1529 0
	mov	%d1, 0
	.loc 1 1534 0
	jnz	%d15, .L104
.LVL50:
.L152:
.LBB174:
	.loc 1 1540 0
	ld.w	%d15, [%a5]0
.LVL51:
	.loc 1 1541 0
	addi	%d3, %d4, -4
.LVL52:
.LBB175:
.LBB176:
	.loc 1 1434 0
	jeq	%d5, 2, .L156
.LBE176:
.LBE175:
.LBE174:
	.loc 1 1528 0
	mov	%d2, 0
.LBB192:
.LBB179:
.LBB177:
	.loc 1 1434 0
	jne	%d5, 3, .L105
	.loc 1 1437 0
	st.b	[%a4]0, %d15
.LVL53:
	.loc 1 1439 0
	sh	%d15, -8
.LVL54:
	.loc 1 1438 0
	mov	%d2, 1
	j	.L106
.LVL55:
.L156:
.LBE177:
.LBE179:
.LBE192:
	.loc 1 1528 0
	mov	%d2, 0
.LVL56:
.L106:
.LBB193:
.LBB180:
.LBB178:
	.loc 1 1442 0
	addsc.a	%a15, %a4, %d2, 0
	st.b	[%a15]0, %d15
	.loc 1 1443 0
	add	%d2, 1
.LVL57:
	.loc 1 1444 0
	sh	%d15, -8
.LVL58:
	j	.L105
.LVL59:
.L105:
	.loc 1 1447 0
	addsc.a	%a15, %a4, %d2, 0
	st.b	[%a15]0, %d15
.LVL60:
	.loc 1 1449 0
	sh	%d12, %d15, -8
.LVL61:
	.loc 1 1448 0
	add	%d2, 1
.LVL62:
.LBE178:
.LBE180:
	.loc 1 1549 0
	addsc.a	%a4, %a4, %d2, 0
.LVL63:
	.loc 1 1554 0
	jne	%d5, 3, .L108
	.loc 1 1556 0
	lt.u	%d2, %d3, 16
	mov	%d8, 0
	mov	%d1, 1
	jnz	%d2, .L109
	mov	%d2, 0
	addi	%d6, %d3, -16
	sh	%d6, -4
	mov.a	%a15, %d6
.LVL64:
.L110:
	rsub	%d11, %d2, 4
.LBB181:
	.loc 1 1559 0
	addsc.a	%a2, %a5, %d11, 0
	ld.w	%d1, [%a2]0
.LVL65:
	rsub	%d10, %d2, 8
	.loc 1 1560 0
	addsc.a	%a2, %a5, %d10, 0
	ld.w	%d0, [%a2]0
.LVL66:
	rsub	%d9, %d2, 12
	.loc 1 1561 0
	addsc.a	%a7, %a5, %d9, 0
	ld.w	%d7, [%a7]0
.LVL67:
	.loc 1 1562 0
	mov.a	%a2, %d2
	sub.a	%a7, %a5, %a2
	ld.w	%d6, [%a7] 16
.LVL68:
	.loc 1 1564 0
	sh	%d8, %d1, 8
	or	%d8, %d12
.LVL69:
	.loc 1 1568 0
	sh	%d12, %d6, -24
.LVL70:
	sub.a	%a7, %a4, %a2
	.loc 1 1576 0
	st.w	[%a7]0, %d8
	.loc 1 1577 0
	addsc.a	%a6, %a4, %d11, 0
	.loc 1 1565 0
	dextr	%d1, %d0, %d1, 8
.LVL71:
	.loc 1 1577 0
	st.w	[%a6]0, %d1
	.loc 1 1578 0
	addsc.a	%a3, %a4, %d10, 0
	.loc 1 1566 0
	dextr	%d0, %d7, %d0, 8
.LVL72:
	.loc 1 1578 0
	st.w	[%a3]0, %d0
	.loc 1 1579 0
	addsc.a	%a2, %a4, %d9, 0
	.loc 1 1567 0
	dextr	%d6, %d6, %d7, 8
.LVL73:
	.loc 1 1579 0
	st.w	[%a2]0, %d6
.LBE181:
	.loc 1 1556 0
	addi	%d3, %d3, -16
.LVL74:
	addi	%d2, %d2, -16
	loop	%a15, .L110
	addi	%d4, %d4, -20
.LVL75:
	sh	%d2, %d4, -4
	addi	%d8, %d2, 1
.LVL76:
	sh	%d8, 2
	sh	%d1, %d2, 2
.LVL77:
	add	%d1, 5
	mul	%d3, %d2, -16
.LVL78:
	add	%d3, %d4
	j	.L109
.LVL79:
.L108:
	.loc 1 1584 0
	jeq	%d5, 2, .L111
	.loc 1 1617 0
	ge.u	%d7, %d3, 16
	mov	%d2, 0
	addi	%d6, %d3, -16
	sh	%d6, -4
	mov.a	%a15, %d6
	mov	%d8, 0
	mov	%d1, 1
	jz	%d7, .L109
	j	.L163
.L111:
	.loc 1 1586 0
	lt.u	%d2, %d3, 16
	mov	%d8, 0
	mov	%d1, 1
	jnz	%d2, .L109
	mov	%d2, 0
	addi	%d6, %d3, -16
	sh	%d6, -4
	mov.a	%a15, %d6
.LVL80:
.L113:
	rsub	%d11, %d2, 4
.LBB182:
	.loc 1 1589 0
	addsc.a	%a2, %a5, %d11, 0
	ld.w	%d1, [%a2]0
.LVL81:
	rsub	%d10, %d2, 8
	.loc 1 1590 0
	addsc.a	%a2, %a5, %d10, 0
	ld.w	%d0, [%a2]0
.LVL82:
	rsub	%d9, %d2, 12
	.loc 1 1591 0
	addsc.a	%a7, %a5, %d9, 0
	ld.w	%d7, [%a7]0
.LVL83:
	.loc 1 1592 0
	mov.a	%a2, %d2
	sub.a	%a7, %a5, %a2
	ld.w	%d6, [%a7] 16
.LVL84:
	.loc 1 1594 0
	sh	%d8, %d1, 16
	or	%d8, %d12
.LVL85:
	.loc 1 1598 0
	sh	%d12, %d6, -16
.LVL86:
	sub.a	%a7, %a4, %a2
	.loc 1 1606 0
	st.w	[%a7]0, %d8
	.loc 1 1607 0
	addsc.a	%a6, %a4, %d11, 0
	.loc 1 1595 0
	dextr	%d1, %d0, %d1, 16
.LVL87:
	.loc 1 1607 0
	st.w	[%a6]0, %d1
	.loc 1 1608 0
	addsc.a	%a3, %a4, %d10, 0
	.loc 1 1596 0
	dextr	%d0, %d7, %d0, 16
.LVL88:
	.loc 1 1608 0
	st.w	[%a3]0, %d0
	.loc 1 1609 0
	addsc.a	%a2, %a4, %d9, 0
	.loc 1 1597 0
	dextr	%d6, %d6, %d7, 16
.LVL89:
	.loc 1 1609 0
	st.w	[%a2]0, %d6
.LBE182:
	.loc 1 1586 0
	addi	%d3, %d3, -16
.LVL90:
	addi	%d2, %d2, -16
	loop	%a15, .L113
	addi	%d4, %d4, -20
.LVL91:
	sh	%d2, %d4, -4
	addi	%d8, %d2, 1
.LVL92:
	sh	%d8, 2
	sh	%d1, %d2, 2
.LVL93:
	add	%d1, 5
	mul	%d3, %d2, -16
.LVL94:
	add	%d3, %d4
	j	.L109
.LVL95:
.L163:
	rsub	%d11, %d2, 4
.LBB183:
	.loc 1 1620 0
	addsc.a	%a2, %a5, %d11, 0
	ld.w	%d1, [%a2]0
.LVL96:
	rsub	%d10, %d2, 8
	.loc 1 1621 0
	addsc.a	%a2, %a5, %d10, 0
	ld.w	%d0, [%a2]0
.LVL97:
	rsub	%d9, %d2, 12
	.loc 1 1622 0
	addsc.a	%a7, %a5, %d9, 0
	ld.w	%d7, [%a7]0
.LVL98:
	.loc 1 1623 0
	mov.a	%a2, %d2
	sub.a	%a7, %a5, %a2
	ld.w	%d6, [%a7] 16
.LVL99:
	.loc 1 1625 0
	sh	%d8, %d1, 24
	or	%d8, %d12
.LVL100:
	.loc 1 1629 0
	sh	%d12, %d6, -8
.LVL101:
	sub.a	%a7, %a4, %a2
	.loc 1 1637 0
	st.w	[%a7]0, %d8
	.loc 1 1638 0
	addsc.a	%a6, %a4, %d11, 0
	.loc 1 1626 0
	dextr	%d1, %d0, %d1, 24
.LVL102:
	.loc 1 1638 0
	st.w	[%a6]0, %d1
	.loc 1 1639 0
	addsc.a	%a3, %a4, %d10, 0
	.loc 1 1627 0
	dextr	%d0, %d7, %d0, 24
.LVL103:
	.loc 1 1639 0
	st.w	[%a3]0, %d0
	.loc 1 1640 0
	addsc.a	%a2, %a4, %d9, 0
	.loc 1 1628 0
	dextr	%d6, %d6, %d7, 24
.LVL104:
	.loc 1 1640 0
	st.w	[%a2]0, %d6
.LBE183:
	.loc 1 1617 0
	addi	%d3, %d3, -16
.LVL105:
	addi	%d2, %d2, -16
	loop	%a15, .L163
	addi	%d4, %d4, -20
.LVL106:
	sh	%d2, %d4, -4
	addi	%d8, %d2, 1
.LVL107:
	sh	%d8, 2
	sh	%d1, %d2, 2
.LVL108:
	add	%d1, 5
	mul	%d3, %d2, -16
.LVL109:
	add	%d3, %d4
.LVL110:
.L109:
.LBB184:
	.loc 1 1648 0
	sh	%d7, %d5, 3
.LVL111:
	.loc 1 1649 0
	rsub	%d0, %d7, 32
	and	%d0, %d0, 255
.LVL112:
	.loc 1 1651 0
	mov	%d4, %d3
	jlt.u	%d3, 4, .L114
	sh	%d10, %d1, 2
	sh	%d9, %d8, 2
	mov	%d2, 0
	addi	%d4, %d3, -4
	sh	%d4, -2
	mov.a	%a15, %d4
.LVL113:
.L115:
	sub	%d15, %d10, %d2
	mov.a	%a2, %d15
.LBB185:
	.loc 1 1654 0
	add.a	%a2, %a5
	ld.w	%d4, [%a2]0
.LVL114:
	.loc 1 1656 0
	sh	%d6, %d4, %d0
	or	%d6, %d12
.LVL115:
	.loc 1 1657 0
	rsub	%d12, %d7, 0
	sh	%d12, %d4, %d12
	sub	%d15, %d9, %d2
	mov.a	%a2, %d15
	.loc 1 1662 0
	add.a	%a2, %a4
	st.w	[%a2]0, %d6
.LVL116:
	add	%d2, -4
.LVL117:
	loop	%a15, .L115
	addi	%d2, %d3, -4
.LVL118:
	sh	%d2, -2
	add	%d8, 1
	add	%d8, %d2
	add	%d1, 1
	add	%d1, %d2
	and	%d4, %d3, 3
.LVL119:
.L114:
.LBE185:
.LBE184:
	.loc 1 1669 0
	addsc.a	%a4, %a4, %d8, 2
.LVL120:
	.loc 1 1671 0
	rsub	%d5, %d5, 4
.LVL121:
.LBB186:
.LBB187:
	.loc 1 1434 0
	and	%d5, %d5, 255
	jeq	%d5, 2, .L162
.LBE187:
.LBE186:
	.loc 1 1670 0
	mov	%d2, 0
.LBB190:
.LBB188:
	.loc 1 1434 0
	jne	%d5, 3, .L116
	.loc 1 1437 0
	st.b	[%a4]0, %d12
.LVL122:
	.loc 1 1439 0
	sh	%d12, -8
.LVL123:
	.loc 1 1438 0
	mov	%d2, 1
	j	.L117
.LVL124:
.L162:
.LBE188:
.LBE190:
	.loc 1 1670 0
	mov	%d2, 0
.LVL125:
.L117:
.LBB191:
.LBB189:
	.loc 1 1442 0
	addsc.a	%a15, %a4, %d2, 0
	st.b	[%a15]0, %d12
	.loc 1 1443 0
	add	%d2, 1
.LVL126:
	.loc 1 1444 0
	sh	%d12, -8
.LVL127:
	j	.L116
.LVL128:
.L116:
	.loc 1 1447 0
	addsc.a	%a15, %a4, %d2, 0
	st.b	[%a15]0, %d12
	.loc 1 1448 0
	add	%d2, 1
.LVL129:
.L104:
.LBE189:
.LBE191:
.LBE193:
	.loc 1 1679 0
	addsc.a	%a4, %a4, %d2, 0
.LVL130:
	addsc.a	%a5, %a5, %d1, 2
.LVL131:
.LBB194:
.LBB195:
	.loc 1 1202 0
	and	%d4, %d4, 255
.LVL132:
	add	%d4, -1
	ge.u	%d15, %d4, 31
	jnz	%d15, .L53
	movh.a	%a15, hi:.L120
	lea	%a15, [%a15] lo:.L120
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L120:
	.code32
	j	.L119
	.code32
	j	.L121
	.code32
	j	.L122
	.code32
	j	.L123
	.code32
	j	.L124
	.code32
	j	.L125
	.code32
	j	.L126
	.code32
	j	.L127
	.code32
	j	.L128
	.code32
	j	.L129
	.code32
	j	.L130
	.code32
	j	.L131
	.code32
	j	.L132
	.code32
	j	.L133
	.code32
	j	.L134
	.code32
	j	.L135
	.code32
	j	.L136
	.code32
	j	.L137
	.code32
	j	.L138
	.code32
	j	.L139
	.code32
	j	.L140
	.code32
	j	.L141
	.code32
	j	.L142
	.code32
	j	.L143
	.code32
	j	.L144
	.code32
	j	.L145
	.code32
	j	.L146
	.code32
	j	.L147
	.code32
	j	.L148
	.code32
	j	.L149
	.code32
	j	.L150
.L150:
	.loc 1 1205 0
	ld.bu	%d15, [%a5] 30
	st.b	[%a4] 30, %d15
.L149:
	.loc 1 1208 0
	ld.bu	%d15, [%a5] 29
	st.b	[%a4] 29, %d15
.L148:
	.loc 1 1211 0
	ld.bu	%d15, [%a5] 28
	st.b	[%a4] 28, %d15
.L147:
	.loc 1 1214 0
	ld.bu	%d15, [%a5] 27
	st.b	[%a4] 27, %d15
.L146:
	.loc 1 1217 0
	ld.bu	%d15, [%a5] 26
	st.b	[%a4] 26, %d15
.L145:
	.loc 1 1220 0
	ld.bu	%d15, [%a5] 25
	st.b	[%a4] 25, %d15
.L144:
	.loc 1 1223 0
	ld.bu	%d15, [%a5] 24
	st.b	[%a4] 24, %d15
.L143:
	.loc 1 1226 0
	ld.bu	%d15, [%a5] 23
	st.b	[%a4] 23, %d15
.L142:
	.loc 1 1229 0
	ld.bu	%d15, [%a5] 22
	st.b	[%a4] 22, %d15
.L141:
	.loc 1 1232 0
	ld.bu	%d15, [%a5] 21
	st.b	[%a4] 21, %d15
.L140:
	.loc 1 1235 0
	ld.bu	%d15, [%a5] 20
	st.b	[%a4] 20, %d15
.L139:
	.loc 1 1238 0
	ld.bu	%d15, [%a5] 19
	st.b	[%a4] 19, %d15
.L138:
	.loc 1 1241 0
	ld.bu	%d15, [%a5] 18
	st.b	[%a4] 18, %d15
.L137:
	.loc 1 1244 0
	ld.bu	%d15, [%a5] 17
	st.b	[%a4] 17, %d15
.L136:
	.loc 1 1247 0
	ld.bu	%d15, [%a5] 16
	st.b	[%a4] 16, %d15
.L135:
	.loc 1 1250 0
	ld.bu	%d15, [%a5] 15
	st.b	[%a4] 15, %d15
.L134:
	.loc 1 1253 0
	ld.bu	%d15, [%a5] 14
	st.b	[%a4] 14, %d15
.L133:
	.loc 1 1256 0
	ld.bu	%d15, [%a5] 13
	st.b	[%a4] 13, %d15
.L132:
	.loc 1 1259 0
	ld.bu	%d15, [%a5] 12
	st.b	[%a4] 12, %d15
.L131:
	.loc 1 1262 0
	ld.bu	%d15, [%a5] 11
	st.b	[%a4] 11, %d15
.L130:
	.loc 1 1265 0
	ld.bu	%d15, [%a5] 10
	st.b	[%a4] 10, %d15
.L129:
	.loc 1 1268 0
	ld.bu	%d15, [%a5] 9
	st.b	[%a4] 9, %d15
.L128:
	.loc 1 1271 0
	ld.bu	%d15, [%a5] 8
	st.b	[%a4] 8, %d15
.L127:
	.loc 1 1274 0
	ld.bu	%d15, [%a5] 7
	st.b	[%a4] 7, %d15
.L126:
	.loc 1 1277 0
	ld.bu	%d15, [%a5] 6
	st.b	[%a4] 6, %d15
.L125:
	.loc 1 1280 0
	ld.bu	%d15, [%a5] 5
	st.b	[%a4] 5, %d15
.L124:
	.loc 1 1283 0
	ld.bu	%d15, [%a5] 4
	st.b	[%a4] 4, %d15
.L123:
	.loc 1 1286 0
	ld.bu	%d15, [%a5] 3
	st.b	[%a4] 3, %d15
.L122:
	.loc 1 1289 0
	ld.bu	%d15, [%a5] 2
	st.b	[%a4] 2, %d15
.L121:
	.loc 1 1292 0
	ld.bu	%d15, [%a5] 1
	st.b	[%a4] 1, %d15
.L119:
	.loc 1 1295 0
	ld.bu	%d15, [%a5]0
	st.b	[%a4]0, %d15
	ret
.LVL133:
.L88:
.LBE195:
.LBE194:
.LBE173:
.LBE172:
	.loc 1 2320 0
	mov.d	%d5, %a4
	rsub	%d5
	and	%d5, %d5, 3
.LVL134:
	.loc 1 2323 0
	jnz	%d5, .L152
	j	.L151
.LVL135:
.L53:
	ret
.LBE165:
.LFE36:
	.size	VStdLib_MemCpy, .-VStdLib_MemCpy
	.align 1
	.global	VStdLib_MemCpy16
	.type	VStdLib_MemCpy16, @function
VStdLib_MemCpy16:
.LFB37:
	.loc 1 2379 0
.LVL136:
	.loc 1 2396 0
	jz	%d4, .L171
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL137:
.L173:
	.loc 1 2398 0 discriminator 3
	ld.hu	%d15, [%a5+]2
	st.h	[%a4+]2, %d15
	loop	%a15, .L173
.L171:
	ret
.LFE37:
	.size	VStdLib_MemCpy16, .-VStdLib_MemCpy16
	.align 1
	.global	VStdLib_MemCpy32
	.type	VStdLib_MemCpy32, @function
VStdLib_MemCpy32:
.LFB38:
	.loc 1 2425 0
.LVL138:
	.loc 1 2442 0
	jz	%d4, .L175
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL139:
.L177:
	.loc 1 2444 0 discriminator 3
	ld.w	%d15, [%a5+]4
	st.w	[%a4+]4, %d15
	loop	%a15, .L177
.L175:
	ret
.LFE38:
	.size	VStdLib_MemCpy32, .-VStdLib_MemCpy32
	.align 1
	.global	VStdLib_MemCpy_s
	.type	VStdLib_MemCpy_s, @function
VStdLib_MemCpy_s:
.LFB39:
	.loc 1 2474 0
.LVL140:
	.loc 1 2480 0
	jlt.u	%d4, %d5, .L179
	mov	%d4, %d5
.LVL141:
	.loc 1 2487 0
	call	VStdLib_MemCpy
.LVL142:
.L179:
	ret
.LFE39:
	.size	VStdLib_MemCpy_s, .-VStdLib_MemCpy_s
	.align 1
	.global	VStdLib_MemCmp
	.type	VStdLib_MemCmp, @function
VStdLib_MemCmp:
.LFB40:
	.loc 1 2533 0
.LVL143:
	sub.a	%SP, 8
.LCFI0:
.LVL144:
	.loc 1 2540 0
	mov	%d2, 0
	.loc 1 2561 0
	jeq.a	%a4, %a5, .L239
	.loc 1 2565 0
	ge.u	%d15, %d4, 32
	jnz	%d15, .L183
.LVL145:
.LBB232:
.LBB233:
	.loc 1 842 0
	jz	%d4, .L239
	.loc 1 845 0
	ld.bu	%d15, [%a4]0
	ld.bu	%d2, [%a5]0
	mov	%d3, 0
	mov.a	%a15, %d4
	add.a	%a15, -1
	jeq	%d15, %d2, .L185
	j	.L184
.LVL146:
.L186:
	addsc.a	%a2, %a4, %d3, 0
	ld.bu	%d15, [%a2]0
	addsc.a	%a2, %a5, %d3, 0
	ld.bu	%d2, [%a2]0
	jeq	%d15, %d2, .L185
.LVL147:
.L184:
.LBB234:
.LBB235:
	.loc 1 815 0
	lt.u	%d15, %d2, %d15
.LVL148:
	mov	%d2, 1
.LVL149:
	cmovn	%d2, %d15, -1
	ret
.L185:
.LVL150:
.LBE235:
.LBE234:
	.loc 1 842 0
	add	%d3, 1
.LVL151:
	loop	%a15, .L186
	.loc 1 838 0
	mov	%d2, 0
	ret
.LVL152:
.L183:
.LBE233:
.LBE232:
.LBB236:
	.loc 1 2574 0
	mov.d	%d6, %a4
	rsub	%d6
	and	%d6, %d6, 3
.LVL153:
	.loc 1 2580 0
	mov.a	%a2, %d6
.LVL154:
.LBB237:
.LBB238:
	.loc 1 842 0
	jz	%d6, .L187
	.loc 1 845 0
	ld.bu	%d15, [%a4]0
	ld.bu	%d2, [%a5]0
	mov	%d3, 0
	add.a	%a2, -1
	jeq	%d15, %d2, .L189
	j	.L188
.LVL155:
.L191:
	addsc.a	%a3, %a4, %d3, 0
	ld.bu	%d15, [%a3]0
	addsc.a	%a3, %a5, %d3, 0
	ld.bu	%d2, [%a3]0
	jeq	%d15, %d2, .L189
.LVL156:
.L188:
.LBB239:
.LBB240:
	.loc 1 815 0
	lt.u	%d15, %d2, %d15
.LVL157:
	mov	%d2, 1
.LVL158:
	cmovn	%d2, %d15, -1
	ret
.L189:
.LVL159:
.LBE240:
.LBE239:
	.loc 1 842 0
	add	%d3, 1
.LVL160:
	loop	%a2, .L191
	j	.L187
.LVL161:
.L220:
.LBE238:
.LBE237:
.LBB241:
.LBB242:
.LBB243:
	.loc 1 1709 0
	jlt.u	%d4, 4, .L231
	.loc 1 1712 0
	ld.w	%d15, [%a4]0
	mov.a	%a2, %d5
	ld.w	%d2, [%a2]0
	jeq	%d15, %d2, .L248
	j	.L193
.LVL162:
.L197:
	ld.w	%d15, [%a5+]4
	ld.w	%d2, [%a3+]4
	jeq	%d15, %d2, .L195
.LVL163:
.L193:
.LBB244:
.LBB245:
	.loc 1 815 0
	lt.u	%d2, %d2, %d15
.LVL164:
	mov	%d15, 1
.LVL165:
	sel	%d2, %d2, %d15, -1
	ret
.LVL166:
.L248:
	lea	%a5, [%a4] 4
.LVL167:
	mov.a	%a3, %d5
	add.a	%a3, 4
.LBE245:
.LBE244:
	.loc 1 1712 0
	mov	%d3, 0
	add	%d15, %d4, -4
	sh	%d15, -2
	mov.a	%a2, %d15
.LVL168:
.L195:
	.loc 1 1718 0
	add	%d3, 1
.LVL169:
	.loc 1 1709 0
	add	%d4, -4
.LVL170:
	loop	%a2, .L197
	j	.L192
.LVL171:
.L222:
.LBB246:
.LBB247:
	.loc 1 845 0
	addsc.a	%a15, %a4, %d3, 0
	ld.bu	%d15, [%a15]0
	mov.a	%a3, %d5
	addsc.a	%a15, %a3, %d3, 0
	ld.bu	%d2, [%a15]0
	mov	%d6, 0
.LVL172:
	mov.a	%a15, %d4
	add.a	%a15, -1
	jeq	%d15, %d2, .L199
	j	.L198
.LVL173:
.L200:
	mov.a	%a3, %d3
	addsc.a	%a2, %a3, %d6, 0
	add.a	%a3, %a4, %a2
	ld.bu	%d15, [%a3]0
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d2, [%a2]0
	jeq	%d15, %d2, .L199
.LVL174:
.L198:
.LBB248:
.LBB249:
	.loc 1 815 0
	lt.u	%d2, %d2, %d15
.LVL175:
	mov	%d15, 1
.LVL176:
	sel	%d2, %d2, %d15, -1
	ret
.L199:
.LVL177:
.LBE249:
.LBE248:
	.loc 1 842 0
	add	%d6, 1
.LVL178:
	loop	%a15, .L200
	.loc 1 838 0
	mov	%d2, 0
	ret
.LVL179:
.L251:
.LBE247:
.LBE246:
.LBE243:
.LBE242:
.LBB253:
.LBB254:
	.loc 1 1765 0
	mov.a	%a2, %d7
.LVL180:
.LBB255:
.LBB256:
	.loc 1 842 0
	jz	%d7, .L201
	.loc 1 845 0
	ld.bu	%d15, [%a4]0
	mov.a	%a15, %d5
	ld.bu	%d2, [%a15]0
	mov	%d3, 0
	add.a	%a2, -1
	jeq	%d15, %d2, .L203
	j	.L202
.LVL181:
.L205:
	addsc.a	%a3, %a4, %d3, 0
	ld.bu	%d15, [%a3]0
	mov.a	%a15, %d5
	addsc.a	%a3, %a15, %d3, 0
	ld.bu	%d2, [%a3]0
	jeq	%d15, %d2, .L203
.LVL182:
.L202:
.LBB257:
.LBB258:
	.loc 1 815 0
	lt.u	%d15, %d2, %d15
.LVL183:
	mov	%d2, 1
.LVL184:
	cmovn	%d2, %d15, -1
	ret
.L203:
.LVL185:
.LBE258:
.LBE257:
	.loc 1 842 0
	add	%d3, 1
.LVL186:
	loop	%a2, .L205
	j	.L201
.LVL187:
.L223:
.LBE256:
.LBE255:
.LBB259:
.LBB260:
	.loc 1 1795 0
	ld.w	%d15, [%a4] 4
.LVL188:
	.loc 1 1799 0
	mov	%d0, %d2
	sh	%d2, %d15, %d2
.LVL189:
	or	%d2, %d3
.LVL190:
	.loc 1 1805 0
	ld.w	%d3, [%a5]0
	jeq	%d2, %d3, .L249
	j	.L206
.LVL191:
.L210:
	.loc 1 1795 0
	ld.w	%d15, [%a3+]4
.LVL192:
	.loc 1 1799 0
	sh	%d3, %d15, %d0
.LVL193:
	or	%d2, %d3
.LVL194:
	.loc 1 1805 0
	ld.w	%d3, [%a6+]4
	.loc 1 1813 0
	mov	%d1, %d8
.LVL195:
	.loc 1 1805 0
	jeq	%d2, %d3, .L208
.LVL196:
.L206:
.LBB261:
.LBB262:
	.loc 1 815 0
	lt.u	%d2, %d3, %d2
.LVL197:
	mov	%d15, 1
.LVL198:
	sel	%d2, %d2, %d15, -1
	ret
.LVL199:
.L249:
	lea	%a3, [%a4] 8
	lea	%a6, [%a5] 4
.LBE262:
.LBE261:
	.loc 1 1805 0
	mov	%d1, 1
	addi	%d2, %d4, -4
.LVL200:
	sh	%d2, -2
	mov.a	%a2, %d2
.LVL201:
.L208:
	.loc 1 1813 0
	addi	%d8, %d1, 1
.LVL202:
	.loc 1 1818 0
	rsub	%d2, %d6, 0
	sh	%d2, %d15, %d2
.LBE260:
	.loc 1 1792 0
	add	%d4, -4
.LVL203:
	loop	%a2, .L210
	j	.L250
.LVL204:
.L225:
.LBB263:
.LBB264:
	.loc 1 845 0
	ld.bu	%d15, [%SP] 4
	ld.bu	%d2, [%a5]0
	mov	%d3, 0
	mov.a	%a2, %d7
	add.a	%a2, -1
	jeq	%d15, %d2, .L213
	j	.L212
.LVL205:
.L215:
	lea	%a3, [%SP] 4
.LVL206:
	addsc.a	%a15, %a3, %d3, 0
	ld.bu	%d15, [%a15]0
	addsc.a	%a15, %a5, %d3, 0
	ld.bu	%d2, [%a15]0
	jeq	%d15, %d2, .L213
.LVL207:
.L212:
.LBB265:
.LBB266:
	.loc 1 815 0
	lt.u	%d2, %d2, %d15
.LVL208:
	mov	%d15, 1
.LVL209:
	sel	%d2, %d2, %d15, -1
	ret
.L213:
.LVL210:
.LBE266:
.LBE265:
	.loc 1 842 0
	add	%d3, 1
.LVL211:
	loop	%a2, .L215
.LVL212:
.L226:
.LBE264:
.LBE263:
	.loc 1 1841 0
	sh	%d8, 2
.LVL213:
.LBB268:
.LBB269:
	.loc 1 838 0
	mov	%d2, 0
	.loc 1 842 0
	jz	%d4, .L239
	.loc 1 845 0
	addsc.a	%a15, %a4, %d8, 0
.LVL214:
	ld.bu	%d15, [%a15]0
	addsc.a	%a15, %a5, %d7, 0
.LVL215:
	ld.bu	%d2, [%a15]0
	jne	%d15, %d2, .L217
	addsc.a	%a4, %a4, %d8, 0
.LVL216:
	mov.d	%d5, %a5
	add	%d7, %d5
.LVL217:
	mov	%d3, 0
	mov.a	%a15, %d4
	add.a	%a15, -1
	j	.L218
.LVL218:
.L219:
	addsc.a	%a2, %a4, %d3, 0
	ld.bu	%d15, [%a2]0
	mov.a	%a3, %d7
	addsc.a	%a2, %a3, %d3, 0
	ld.bu	%d2, [%a2]0
	jeq	%d15, %d2, .L218
.LVL219:
.L217:
.LBB270:
.LBB271:
	.loc 1 815 0
	lt.u	%d2, %d2, %d15
.LVL220:
	mov	%d15, 1
.LVL221:
	sel	%d2, %d2, %d15, -1
	ret
.LVL222:
.L218:
.LBE271:
.LBE270:
	.loc 1 842 0
	add	%d3, 1
.LVL223:
	loop	%a15, .L219
	.loc 1 838 0
	mov	%d2, 0
	ret
.LVL224:
.L187:
.LBE269:
.LBE268:
.LBE259:
.LBE254:
.LBE253:
	.loc 1 2589 0
	addsc.a	%a4, %a4, %d6, 0
.LVL225:
	.loc 1 2590 0
	mov.d	%d5, %a5
	add	%d5, %d6
.LVL226:
	.loc 1 2591 0
	sub	%d4, %d6
.LVL227:
	.loc 1 2594 0
	rsub	%d7, %d5, 0
	and	%d7, %d7, 3
.LVL228:
	.loc 1 2597 0
	jnz	%d7, .L251
	j	.L220
.LVL229:
.L231:
.LBB275:
.LBB252:
	.loc 1 1709 0
	mov	%d3, 0
.LVL230:
.L192:
	.loc 1 1726 0
	sh	%d3, 2
.LVL231:
.LBB251:
.LBB250:
	.loc 1 842 0
	jnz	%d4, .L222
	.loc 1 838 0
	mov	%d2, 0
	ret
.LVL232:
.L201:
.LBE250:
.LBE251:
.LBE252:
.LBE275:
.LBB276:
.LBB274:
.LBB273:
	.loc 1 1772 0
	mov.a	%a15, %d5
	addsc.a	%a5, %a15, %d7, 0
.LVL233:
	.loc 1 1776 0
	add	%d4, -4
.LVL234:
	.loc 1 1781 0
	sh	%d15, %d7, 3
.LVL235:
	.loc 1 1782 0
	rsub	%d2, %d15, 32
	and	%d2, %d2, 255
.LVL236:
	.loc 1 1786 0
	mov	%d6, %d15
.LVL237:
	ld.w	%d3, [%a4]0
	rsub	%d5, %d15, 0
.LVL238:
	sh	%d5, %d3, %d5
	mov	%d3, %d5
	st.w	[%SP] 4, %d5
	.loc 1 1775 0
	mov	%d1, 0
	.loc 1 1774 0
	mov	%d8, 1
	.loc 1 1792 0
	jlt.u	%d4, 4, .L224
	j	.L223
.LVL239:
.L250:
	st.w	[%SP] 4, %d2
.LVL240:
.L224:
	.loc 1 1830 0
	addsc.a	%a5, %a5, %d1, 2
.LVL241:
	.loc 1 1831 0
	rsub	%d7, %d7, 4
.LVL242:
.LBB272:
.LBB267:
	.loc 1 842 0
	jnz	%d7, .L225
	j	.L226
.LVL243:
.L239:
.LBE267:
.LBE272:
.LBE273:
.LBE274:
.LBE276:
.LBE241:
.LBE236:
	.loc 1 2637 0
	ret
.LFE40:
	.size	VStdLib_MemCmp, .-VStdLib_MemCmp
	.align 1
	.global	VStdLib_GetHighestBitPosOne8
	.type	VStdLib_GetHighestBitPosOne8, @function
VStdLib_GetHighestBitPosOne8:
.LFB41:
	.loc 1 2701 0
.LVL244:
	.loc 1 2703 0
	mov	%d2, 128
	.loc 1 2707 0
	jz	%d4, .L253
.LVL245:
.LBB277:
.LBB278:
	.loc 1 1873 0
	and	%d3, %d4, 240
	.loc 1 1869 0
	mov	%d2, 0
	.loc 1 1873 0
	jz	%d3, .L254
	.loc 1 1876 0
	sh	%d4, -4
.LVL246:
	.loc 1 1877 0
	mov	%d2, 4
.LVL247:
.L254:
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	add	%d2, %d15
.LVL248:
	and	%d2, %d2, 255
.LVL249:
.L253:
.LBE278:
.LBE277:
	.loc 1 2714 0
	ret
.LFE41:
	.size	VStdLib_GetHighestBitPosOne8, .-VStdLib_GetHighestBitPosOne8
	.align 1
	.global	VStdLib_GetHighestBitPosZero8
	.type	VStdLib_GetHighestBitPosZero8, @function
VStdLib_GetHighestBitPosZero8:
.LFB42:
	.loc 1 2726 0
.LVL250:
	.loc 1 2732 0
	eq	%d15, %d4, 255
	.loc 1 2728 0
	mov	%d2, 128
	.loc 1 2732 0
	jnz	%d15, .L258
	.loc 1 2735 0
	not	%d4
.LVL251:
	and	%d4, %d4, 255
.LVL252:
.LBB279:
.LBB280:
	.loc 1 1873 0
	and	%d15, %d4, 240
	.loc 1 1869 0
	mov	%d2, 0
	.loc 1 1873 0
	jz	%d15, .L259
	.loc 1 1876 0
	sh	%d4, -4
.LVL253:
	.loc 1 1877 0
	mov	%d2, 4
.LVL254:
.L259:
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	add	%d2, %d15
.LVL255:
	and	%d2, %d2, 255
.LVL256:
.L258:
.LBE280:
.LBE279:
	.loc 1 2739 0
	ret
.LFE42:
	.size	VStdLib_GetHighestBitPosZero8, .-VStdLib_GetHighestBitPosZero8
	.align 1
	.global	VStdLib_GetLowestBitPosOne8
	.type	VStdLib_GetLowestBitPosOne8, @function
VStdLib_GetLowestBitPosOne8:
.LFB43:
	.loc 1 2751 0
.LVL257:
	.loc 1 2753 0
	mov	%d2, 128
	.loc 1 2757 0
	jz	%d4, .L263
.LVL258:
.LBB281:
.LBB282:
	.loc 1 1904 0
	and	%d15, %d4, 15
	.loc 1 1900 0
	mov	%d2, 0
	.loc 1 1904 0
	jnz	%d15, .L264
	.loc 1 1912 0
	sh	%d15, %d4, -4
.LVL259:
	.loc 1 1913 0
	mov	%d2, 4
.LVL260:
.L264:
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
.LVL261:
	add	%d2, %d15
.LVL262:
	and	%d2, %d2, 255
.LVL263:
.L263:
.LBE282:
.LBE281:
	.loc 1 2764 0
	ret
.LFE43:
	.size	VStdLib_GetLowestBitPosOne8, .-VStdLib_GetLowestBitPosOne8
	.align 1
	.global	VStdLib_GetLowestBitPosZero8
	.type	VStdLib_GetLowestBitPosZero8, @function
VStdLib_GetLowestBitPosZero8:
.LFB44:
	.loc 1 2776 0
.LVL264:
	.loc 1 2782 0
	eq	%d15, %d4, 255
	.loc 1 2778 0
	mov	%d2, 128
	.loc 1 2782 0
	jnz	%d15, .L268
	.loc 1 2785 0
	not	%d4
.LVL265:
	and	%d4, %d4, 255
.LVL266:
.LBB283:
.LBB284:
	.loc 1 1904 0
	and	%d15, %d4, 15
	.loc 1 1900 0
	mov	%d2, 0
	.loc 1 1904 0
	jnz	%d15, .L269
	.loc 1 1912 0
	sh	%d15, %d4, -4
.LVL267:
	.loc 1 1913 0
	mov	%d2, 4
.LVL268:
.L269:
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
.LVL269:
	add	%d2, %d15
.LVL270:
	and	%d2, %d2, 255
.LVL271:
.L268:
.LBE284:
.LBE283:
	.loc 1 2789 0
	ret
.LFE44:
	.size	VStdLib_GetLowestBitPosZero8, .-VStdLib_GetLowestBitPosZero8
	.align 1
	.global	VStdLib_GetCountLeadingOnes8
	.type	VStdLib_GetCountLeadingOnes8, @function
VStdLib_GetCountLeadingOnes8:
.LFB45:
	.loc 1 2801 0
.LVL272:
	.loc 1 2807 0
	eq	%d15, %d4, 255
	.loc 1 2803 0
	mov	%d2, 128
	.loc 1 2807 0
	jnz	%d15, .L273
	.loc 1 2810 0
	not	%d4
.LVL273:
	and	%d4, %d4, 255
.LVL274:
.LBB285:
.LBB286:
	.loc 1 1873 0
	and	%d3, %d4, 240
	.loc 1 1869 0
	mov	%d15, 0
	.loc 1 1873 0
	jz	%d3, .L274
	.loc 1 1876 0
	sh	%d4, -4
.LVL275:
	.loc 1 1877 0
	mov	%d15, 4
.LVL276:
.L274:
	rsub	%d2, %d15, 7
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
.LBE286:
.LBE285:
	.loc 1 2810 0
	ld.bu	%d15, [%a15]0
.LVL277:
	sub	%d15, %d2, %d15
	and	%d2, %d15, 255
.LVL278:
.L273:
	.loc 1 2814 0
	ret
.LFE45:
	.size	VStdLib_GetCountLeadingOnes8, .-VStdLib_GetCountLeadingOnes8
	.align 1
	.global	VStdLib_GetCountLeadingZeros8
	.type	VStdLib_GetCountLeadingZeros8, @function
VStdLib_GetCountLeadingZeros8:
.LFB46:
	.loc 1 2826 0
.LVL279:
	.loc 1 2828 0
	mov	%d2, 128
	.loc 1 2832 0
	jz	%d4, .L278
.LVL280:
.LBB287:
.LBB288:
	.loc 1 1873 0
	and	%d2, %d4, 240
	.loc 1 1869 0
	mov	%d15, 0
	.loc 1 1873 0
	jz	%d2, .L279
	.loc 1 1876 0
	sh	%d4, -4
.LVL281:
	.loc 1 1877 0
	mov	%d15, 4
.LVL282:
.L279:
	rsub	%d2, %d15, 7
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
.LBE288:
.LBE287:
	.loc 1 2835 0
	ld.bu	%d15, [%a15]0
.LVL283:
	sub	%d15, %d2, %d15
	and	%d2, %d15, 255
.LVL284:
.L278:
	.loc 1 2839 0
	ret
.LFE46:
	.size	VStdLib_GetCountLeadingZeros8, .-VStdLib_GetCountLeadingZeros8
	.align 1
	.global	VStdLib_GetCountTrailingOnes8
	.type	VStdLib_GetCountTrailingOnes8, @function
VStdLib_GetCountTrailingOnes8:
.LFB47:
	.loc 1 2851 0
.LVL285:
	.loc 1 2857 0
	eq	%d15, %d4, 255
	.loc 1 2853 0
	mov	%d2, 128
	.loc 1 2857 0
	jnz	%d15, .L283
	.loc 1 2860 0
	not	%d4
.LVL286:
	and	%d4, %d4, 255
.LVL287:
.LBB289:
.LBB290:
	.loc 1 1904 0
	and	%d15, %d4, 15
	.loc 1 1900 0
	mov	%d2, 0
	.loc 1 1904 0
	jnz	%d15, .L284
	.loc 1 1912 0
	sh	%d15, %d4, -4
.LVL288:
	.loc 1 1913 0
	mov	%d2, 4
.LVL289:
.L284:
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
.LVL290:
	add	%d2, %d15
.LVL291:
	and	%d2, %d2, 255
.LVL292:
.L283:
.LBE290:
.LBE289:
	.loc 1 2864 0
	ret
.LFE47:
	.size	VStdLib_GetCountTrailingOnes8, .-VStdLib_GetCountTrailingOnes8
	.align 1
	.global	VStdLib_GetCountTrailingZeros8
	.type	VStdLib_GetCountTrailingZeros8, @function
VStdLib_GetCountTrailingZeros8:
.LFB48:
	.loc 1 2876 0
.LVL293:
	.loc 1 2878 0
	mov	%d2, 128
	.loc 1 2882 0
	jz	%d4, .L288
.LVL294:
.LBB291:
.LBB292:
	.loc 1 1904 0
	and	%d15, %d4, 15
	.loc 1 1900 0
	mov	%d2, 0
	.loc 1 1904 0
	jnz	%d15, .L289
	.loc 1 1912 0
	sh	%d15, %d4, -4
.LVL295:
	.loc 1 1913 0
	mov	%d2, 4
.LVL296:
.L289:
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
.LVL297:
	add	%d2, %d15
.LVL298:
	and	%d2, %d2, 255
.LVL299:
.L288:
.LBE292:
.LBE291:
	.loc 1 2889 0
	ret
.LFE48:
	.size	VStdLib_GetCountTrailingZeros8, .-VStdLib_GetCountTrailingZeros8
	.align 1
	.global	VStdLib_GetHighestBitPosOne16
	.type	VStdLib_GetHighestBitPosOne16, @function
VStdLib_GetHighestBitPosOne16:
.LFB49:
	.loc 1 2905 0
.LVL300:
	.loc 1 2907 0
	mov	%d2, 128
	.loc 1 2911 0
	jz	%d4, .L293
.LVL301:
.LBB293:
.LBB294:
	.loc 1 1945 0
	andn	%d15, %d4, ~(-256)
	extr.u	%d15, %d15, 0, 16
	.loc 1 1941 0
	mov	%d2, 0
	.loc 1 1945 0
	jz	%d15, .L294
	.loc 1 1948 0
	sh	%d4, -8
.LVL302:
	.loc 1 1949 0
	mov	%d2, 8
.LVL303:
.L294:
	.loc 1 1953 0
	and	%d4, %d4, 255
.LVL304:
.LBB295:
.LBB296:
	.loc 1 1873 0
	and	%d15, %d4, 240
	.loc 1 1869 0
	mov	%d3, 0
	.loc 1 1873 0
	jz	%d15, .L295
	.loc 1 1876 0
	sh	%d4, -4
.LVL305:
	.loc 1 1877 0
	mov	%d3, 4
.LVL306:
.L295:
	add	%d2, %d3
.LVL307:
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
.LBE296:
.LBE295:
	.loc 1 1953 0
	ld.bu	%d15, [%a15]0
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL308:
.L293:
.LBE294:
.LBE293:
	.loc 1 2918 0
	ret
.LFE49:
	.size	VStdLib_GetHighestBitPosOne16, .-VStdLib_GetHighestBitPosOne16
	.align 1
	.global	VStdLib_GetHighestBitPosZero16
	.type	VStdLib_GetHighestBitPosZero16, @function
VStdLib_GetHighestBitPosZero16:
.LFB50:
	.loc 1 2930 0
.LVL309:
	.loc 1 2936 0
	mov.u	%d15, 65535
	.loc 1 2932 0
	mov	%d2, 128
	.loc 1 2936 0
	jeq	%d4, %d15, .L300
	.loc 1 2939 0
	not	%d4
.LVL310:
	extr.u	%d4, %d4, 0, 16
.LVL311:
.LBB297:
.LBB298:
	.loc 1 1945 0
	andn	%d15, %d4, ~(-256)
	extr.u	%d15, %d15, 0, 16
	.loc 1 1941 0
	mov	%d2, 0
	.loc 1 1945 0
	jz	%d15, .L301
	.loc 1 1948 0
	sh	%d4, -8
.LVL312:
	.loc 1 1949 0
	mov	%d2, 8
.LVL313:
.L301:
	.loc 1 1953 0
	and	%d4, %d4, 255
.LVL314:
.LBB299:
.LBB300:
	.loc 1 1873 0
	and	%d15, %d4, 240
	.loc 1 1869 0
	mov	%d3, 0
	.loc 1 1873 0
	jz	%d15, .L302
	.loc 1 1876 0
	sh	%d4, -4
.LVL315:
	.loc 1 1877 0
	mov	%d3, 4
.LVL316:
.L302:
	add	%d2, %d3
.LVL317:
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
.LBE300:
.LBE299:
	.loc 1 1953 0
	ld.bu	%d15, [%a15]0
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL318:
.L300:
.LBE298:
.LBE297:
	.loc 1 2943 0
	ret
.LFE50:
	.size	VStdLib_GetHighestBitPosZero16, .-VStdLib_GetHighestBitPosZero16
	.align 1
	.global	VStdLib_GetLowestBitPosOne16
	.type	VStdLib_GetLowestBitPosOne16, @function
VStdLib_GetLowestBitPosOne16:
.LFB51:
	.loc 1 2955 0
.LVL319:
	.loc 1 2957 0
	mov	%d2, 128
	.loc 1 2961 0
	jz	%d4, .L307
.LVL320:
.LBB301:
.LBB302:
	.loc 1 1976 0
	and	%d15, %d4, 255
	.loc 1 1972 0
	mov	%d2, 0
	.loc 1 1976 0
	jnz	%d15, .L308
	.loc 1 1984 0
	sh	%d15, %d4, -8
.LVL321:
	.loc 1 1985 0
	mov	%d2, 8
.LVL322:
.L308:
	.loc 1 1989 0
	and	%d3, %d15, 255
.LVL323:
.LBB303:
.LBB304:
	.loc 1 1904 0
	and	%d15, %d3, 15
.LVL324:
	.loc 1 1900 0
	mov	%d4, 0
.LVL325:
	.loc 1 1904 0
	jnz	%d15, .L309
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL326:
	.loc 1 1913 0
	mov	%d4, 4
.LVL327:
.L309:
	add	%d2, %d4
.LVL328:
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE304:
.LBE303:
	.loc 1 1989 0
	ld.bu	%d15, [%a15]0
.LVL329:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL330:
.L307:
.LBE302:
.LBE301:
	.loc 1 2968 0
	ret
.LFE51:
	.size	VStdLib_GetLowestBitPosOne16, .-VStdLib_GetLowestBitPosOne16
	.align 1
	.global	VStdLib_GetLowestBitPosZero16
	.type	VStdLib_GetLowestBitPosZero16, @function
VStdLib_GetLowestBitPosZero16:
.LFB52:
	.loc 1 2980 0
.LVL331:
	.loc 1 2986 0
	mov.u	%d15, 65535
	.loc 1 2982 0
	mov	%d2, 128
	.loc 1 2986 0
	jeq	%d4, %d15, .L314
	.loc 1 2989 0
	not	%d4
.LVL332:
	extr.u	%d4, %d4, 0, 16
.LVL333:
.LBB305:
.LBB306:
	.loc 1 1976 0
	and	%d15, %d4, 255
	.loc 1 1972 0
	mov	%d2, 0
	.loc 1 1976 0
	jnz	%d15, .L315
	.loc 1 1984 0
	sh	%d15, %d4, -8
.LVL334:
	.loc 1 1985 0
	mov	%d2, 8
.LVL335:
.L315:
	.loc 1 1989 0
	and	%d3, %d15, 255
.LVL336:
.LBB307:
.LBB308:
	.loc 1 1904 0
	and	%d15, %d3, 15
.LVL337:
	.loc 1 1900 0
	mov	%d4, 0
	.loc 1 1904 0
	jnz	%d15, .L316
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL338:
	.loc 1 1913 0
	mov	%d4, 4
.LVL339:
.L316:
	add	%d2, %d4
.LVL340:
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE308:
.LBE307:
	.loc 1 1989 0
	ld.bu	%d15, [%a15]0
.LVL341:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL342:
.L314:
.LBE306:
.LBE305:
	.loc 1 2993 0
	ret
.LFE52:
	.size	VStdLib_GetLowestBitPosZero16, .-VStdLib_GetLowestBitPosZero16
	.align 1
	.global	VStdLib_GetCountLeadingOnes16
	.type	VStdLib_GetCountLeadingOnes16, @function
VStdLib_GetCountLeadingOnes16:
.LFB53:
	.loc 1 3005 0
.LVL343:
	.loc 1 3011 0
	mov.u	%d15, 65535
	.loc 1 3007 0
	mov	%d2, 128
	.loc 1 3011 0
	jeq	%d4, %d15, .L321
	.loc 1 3014 0
	not	%d4
.LVL344:
	extr.u	%d4, %d4, 0, 16
.LVL345:
.LBB309:
.LBB310:
	.loc 1 1945 0
	andn	%d2, %d4, ~(-256)
	extr.u	%d2, %d2, 0, 16
	.loc 1 1941 0
	mov	%d15, 0
	.loc 1 1945 0
	jz	%d2, .L322
	.loc 1 1948 0
	sh	%d4, -8
.LVL346:
	.loc 1 1949 0
	mov	%d15, 8
.LVL347:
.L322:
	.loc 1 1953 0
	and	%d4, %d4, 255
.LVL348:
.LBB311:
.LBB312:
	.loc 1 1873 0
	and	%d3, %d4, 240
	.loc 1 1869 0
	mov	%d5, 0
	.loc 1 1873 0
	jz	%d3, .L323
	.loc 1 1876 0
	sh	%d4, -4
.LVL349:
	.loc 1 1877 0
	mov	%d5, 4
.LVL350:
.L323:
	rsub	%d15, %d15, 15
.LVL351:
	sub	%d5, %d15, %d5
.LVL352:
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
.LBE312:
.LBE311:
.LBE310:
.LBE309:
	.loc 1 3014 0
	ld.bu	%d15, [%a15]0
	sub	%d15, %d5, %d15
	and	%d2, %d15, 255
.LVL353:
.L321:
	.loc 1 3018 0
	ret
.LFE53:
	.size	VStdLib_GetCountLeadingOnes16, .-VStdLib_GetCountLeadingOnes16
	.align 1
	.global	VStdLib_GetCountLeadingZeros16
	.type	VStdLib_GetCountLeadingZeros16, @function
VStdLib_GetCountLeadingZeros16:
.LFB54:
	.loc 1 3030 0
.LVL354:
	.loc 1 3032 0
	mov	%d2, 128
	.loc 1 3036 0
	jz	%d4, .L328
.LVL355:
.LBB313:
.LBB314:
	.loc 1 1945 0
	andn	%d2, %d4, ~(-256)
	extr.u	%d2, %d2, 0, 16
	.loc 1 1941 0
	mov	%d15, 0
	.loc 1 1945 0
	jz	%d2, .L329
	.loc 1 1948 0
	sh	%d4, -8
.LVL356:
	.loc 1 1949 0
	mov	%d15, 8
.LVL357:
.L329:
	.loc 1 1953 0
	and	%d4, %d4, 255
.LVL358:
.LBB315:
.LBB316:
	.loc 1 1873 0
	and	%d3, %d4, 240
	.loc 1 1869 0
	mov	%d5, 0
	.loc 1 1873 0
	jz	%d3, .L330
	.loc 1 1876 0
	sh	%d4, -4
.LVL359:
	.loc 1 1877 0
	mov	%d5, 4
.LVL360:
.L330:
	rsub	%d15, %d15, 15
.LVL361:
	sub	%d5, %d15, %d5
.LVL362:
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
.LBE316:
.LBE315:
.LBE314:
.LBE313:
	.loc 1 3039 0
	ld.bu	%d15, [%a15]0
	sub	%d15, %d5, %d15
	and	%d2, %d15, 255
.LVL363:
.L328:
	.loc 1 3043 0
	ret
.LFE54:
	.size	VStdLib_GetCountLeadingZeros16, .-VStdLib_GetCountLeadingZeros16
	.align 1
	.global	VStdLib_GetCountTrailingOnes16
	.type	VStdLib_GetCountTrailingOnes16, @function
VStdLib_GetCountTrailingOnes16:
.LFB55:
	.loc 1 3055 0
.LVL364:
	.loc 1 3061 0
	mov.u	%d15, 65535
	.loc 1 3057 0
	mov	%d2, 128
	.loc 1 3061 0
	jeq	%d4, %d15, .L335
	.loc 1 3064 0
	not	%d4
.LVL365:
	extr.u	%d4, %d4, 0, 16
.LVL366:
.LBB317:
.LBB318:
	.loc 1 1976 0
	and	%d15, %d4, 255
	.loc 1 1972 0
	mov	%d2, 0
	.loc 1 1976 0
	jnz	%d15, .L336
	.loc 1 1984 0
	sh	%d15, %d4, -8
.LVL367:
	.loc 1 1985 0
	mov	%d2, 8
.LVL368:
.L336:
	.loc 1 1989 0
	and	%d3, %d15, 255
.LVL369:
.LBB319:
.LBB320:
	.loc 1 1904 0
	and	%d15, %d3, 15
.LVL370:
	.loc 1 1900 0
	mov	%d4, 0
	.loc 1 1904 0
	jnz	%d15, .L337
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL371:
	.loc 1 1913 0
	mov	%d4, 4
.LVL372:
.L337:
	add	%d2, %d4
.LVL373:
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE320:
.LBE319:
	.loc 1 1989 0
	ld.bu	%d15, [%a15]0
.LVL374:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL375:
.L335:
.LBE318:
.LBE317:
	.loc 1 3068 0
	ret
.LFE55:
	.size	VStdLib_GetCountTrailingOnes16, .-VStdLib_GetCountTrailingOnes16
	.align 1
	.global	VStdLib_GetCountTrailingZeros16
	.type	VStdLib_GetCountTrailingZeros16, @function
VStdLib_GetCountTrailingZeros16:
.LFB56:
	.loc 1 3080 0
.LVL376:
	.loc 1 3082 0
	mov	%d2, 128
	.loc 1 3086 0
	jz	%d4, .L342
.LVL377:
.LBB321:
.LBB322:
	.loc 1 1976 0
	and	%d15, %d4, 255
	.loc 1 1972 0
	mov	%d2, 0
	.loc 1 1976 0
	jnz	%d15, .L343
	.loc 1 1984 0
	sh	%d15, %d4, -8
.LVL378:
	.loc 1 1985 0
	mov	%d2, 8
.LVL379:
.L343:
	.loc 1 1989 0
	and	%d3, %d15, 255
.LVL380:
.LBB323:
.LBB324:
	.loc 1 1904 0
	and	%d15, %d3, 15
.LVL381:
	.loc 1 1900 0
	mov	%d4, 0
.LVL382:
	.loc 1 1904 0
	jnz	%d15, .L344
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL383:
	.loc 1 1913 0
	mov	%d4, 4
.LVL384:
.L344:
	add	%d2, %d4
.LVL385:
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE324:
.LBE323:
	.loc 1 1989 0
	ld.bu	%d15, [%a15]0
.LVL386:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL387:
.L342:
.LBE322:
.LBE321:
	.loc 1 3093 0
	ret
.LFE56:
	.size	VStdLib_GetCountTrailingZeros16, .-VStdLib_GetCountTrailingZeros16
	.align 1
	.global	VStdLib_GetHighestBitPosOne32
	.type	VStdLib_GetHighestBitPosOne32, @function
VStdLib_GetHighestBitPosOne32:
.LFB57:
	.loc 1 3109 0
.LVL388:
	.loc 1 3111 0
	mov	%d2, 128
	.loc 1 3115 0
	jz	%d4, .L349
.LVL389:
.LBB331:
.LBB332:
	.loc 1 2017 0
	insert	%d3, %d4, 0, 0, 16
	.loc 1 2013 0
	mov	%d2, 0
	.loc 1 2017 0
	jz	%d3, .L350
	.loc 1 2020 0
	sh	%d4, %d4, -16
.LVL390:
	.loc 1 2021 0
	mov	%d2, 16
.LVL391:
.L350:
	.loc 1 2025 0
	extr.u	%d4, %d4, 0, 16
.LVL392:
.LBB333:
.LBB334:
	.loc 1 1945 0
	andn	%d15, %d4, ~(-256)
	extr.u	%d15, %d15, 0, 16
	.loc 1 1941 0
	mov	%d5, 0
	.loc 1 1945 0
	jz	%d15, .L351
	.loc 1 1948 0
	sh	%d4, -8
.LVL393:
	.loc 1 1949 0
	mov	%d5, 8
.LVL394:
.L351:
	.loc 1 1953 0
	and	%d4, %d4, 255
.LVL395:
.LBB335:
.LBB336:
	.loc 1 1873 0
	and	%d15, %d4, 240
	.loc 1 1869 0
	mov	%d3, 0
	.loc 1 1873 0
	jz	%d15, .L352
	.loc 1 1876 0
	sh	%d4, -4
.LVL396:
	.loc 1 1877 0
	mov	%d3, 4
.LVL397:
.L352:
	add	%d2, %d5
.LVL398:
	add	%d2, %d3
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
.LBE336:
.LBE335:
.LBE334:
.LBE333:
	.loc 1 2025 0
	ld.bu	%d15, [%a15]0
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL399:
.L349:
.LBE332:
.LBE331:
	.loc 1 3122 0
	ret
.LFE57:
	.size	VStdLib_GetHighestBitPosOne32, .-VStdLib_GetHighestBitPosOne32
	.align 1
	.global	VStdLib_GetHighestBitPosZero32
	.type	VStdLib_GetHighestBitPosZero32, @function
VStdLib_GetHighestBitPosZero32:
.LFB58:
	.loc 1 3134 0
.LVL400:
	.loc 1 3136 0
	mov	%d2, 128
	.loc 1 3140 0
	jeq	%d4, -1, .L358
	.loc 1 3143 0
	not	%d4
.LVL401:
.LBB343:
.LBB344:
	.loc 1 2017 0
	insert	%d15, %d4, 0, 0, 16
	.loc 1 2013 0
	mov	%d2, 0
	.loc 1 2017 0
	jz	%d15, .L359
	.loc 1 2020 0
	sh	%d4, %d4, -16
.LVL402:
	.loc 1 2021 0
	mov	%d2, 16
.LVL403:
.L359:
	.loc 1 2025 0
	extr.u	%d4, %d4, 0, 16
.LVL404:
.LBB345:
.LBB346:
	.loc 1 1945 0
	andn	%d15, %d4, ~(-256)
	extr.u	%d15, %d15, 0, 16
	.loc 1 1941 0
	mov	%d5, 0
	.loc 1 1945 0
	jz	%d15, .L360
	.loc 1 1948 0
	sh	%d4, -8
.LVL405:
	.loc 1 1949 0
	mov	%d5, 8
.LVL406:
.L360:
	.loc 1 1953 0
	and	%d4, %d4, 255
.LVL407:
.LBB347:
.LBB348:
	.loc 1 1873 0
	and	%d15, %d4, 240
	.loc 1 1869 0
	mov	%d3, 0
	.loc 1 1873 0
	jz	%d15, .L361
	.loc 1 1876 0
	sh	%d4, -4
.LVL408:
	.loc 1 1877 0
	mov	%d3, 4
.LVL409:
.L361:
	add	%d2, %d5
.LVL410:
	add	%d2, %d3
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
.LBE348:
.LBE347:
.LBE346:
.LBE345:
	.loc 1 2025 0
	ld.bu	%d15, [%a15]0
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL411:
.L358:
.LBE344:
.LBE343:
	.loc 1 3147 0
	ret
.LFE58:
	.size	VStdLib_GetHighestBitPosZero32, .-VStdLib_GetHighestBitPosZero32
	.align 1
	.global	VStdLib_GetLowestBitPosOne32
	.type	VStdLib_GetLowestBitPosOne32, @function
VStdLib_GetLowestBitPosOne32:
.LFB59:
	.loc 1 3159 0
.LVL412:
	.loc 1 3161 0
	mov	%d2, 128
	.loc 1 3165 0
	jz	%d4, .L367
.LVL413:
.LBB355:
.LBB356:
	.loc 1 2048 0
	insert	%d15, %d4, 0, 16, 16
	.loc 1 2044 0
	mov	%d2, 0
	.loc 1 2048 0
	jnz	%d15, .L368
	.loc 1 2056 0
	sh	%d15, %d4, -16
.LVL414:
	.loc 1 2057 0
	mov	%d2, 16
.LVL415:
.L368:
	.loc 1 2061 0
	extr.u	%d15, %d15, 0, 16
.LVL416:
.LBB357:
.LBB358:
	.loc 1 1976 0
	and	%d3, %d15, 255
	.loc 1 1972 0
	mov	%d5, 0
	.loc 1 1976 0
	jnz	%d3, .L369
	.loc 1 1984 0
	sh	%d3, %d15, -8
.LVL417:
	.loc 1 1985 0
	mov	%d5, 8
.LVL418:
.L369:
	.loc 1 1989 0
	and	%d3, %d3, 255
.LVL419:
.LBB359:
.LBB360:
	.loc 1 1904 0
	and	%d15, %d3, 15
	.loc 1 1900 0
	mov	%d4, 0
.LVL420:
	.loc 1 1904 0
	jnz	%d15, .L370
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL421:
	.loc 1 1913 0
	mov	%d4, 4
.LVL422:
.L370:
	add	%d2, %d5
.LVL423:
	add	%d2, %d4
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE360:
.LBE359:
.LBE358:
.LBE357:
	.loc 1 2061 0
	ld.bu	%d15, [%a15]0
.LVL424:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL425:
.L367:
.LBE356:
.LBE355:
	.loc 1 3172 0
	ret
.LFE59:
	.size	VStdLib_GetLowestBitPosOne32, .-VStdLib_GetLowestBitPosOne32
	.align 1
	.global	VStdLib_GetLowestBitPosZero32
	.type	VStdLib_GetLowestBitPosZero32, @function
VStdLib_GetLowestBitPosZero32:
.LFB60:
	.loc 1 3184 0
.LVL426:
	.loc 1 3186 0
	mov	%d2, 128
	.loc 1 3190 0
	jeq	%d4, -1, .L376
	.loc 1 3193 0
	not	%d4
.LVL427:
.LBB367:
.LBB368:
	.loc 1 2048 0
	insert	%d15, %d4, 0, 16, 16
	.loc 1 2044 0
	mov	%d2, 0
	.loc 1 2048 0
	jnz	%d15, .L377
	.loc 1 2056 0
	sh	%d15, %d4, -16
.LVL428:
	.loc 1 2057 0
	mov	%d2, 16
.LVL429:
.L377:
	.loc 1 2061 0
	extr.u	%d15, %d15, 0, 16
.LVL430:
.LBB369:
.LBB370:
	.loc 1 1976 0
	and	%d3, %d15, 255
	.loc 1 1972 0
	mov	%d5, 0
	.loc 1 1976 0
	jnz	%d3, .L378
	.loc 1 1984 0
	sh	%d3, %d15, -8
.LVL431:
	.loc 1 1985 0
	mov	%d5, 8
.LVL432:
.L378:
	.loc 1 1989 0
	and	%d3, %d3, 255
.LVL433:
.LBB371:
.LBB372:
	.loc 1 1904 0
	and	%d15, %d3, 15
	.loc 1 1900 0
	mov	%d4, 0
.LVL434:
	.loc 1 1904 0
	jnz	%d15, .L379
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL435:
	.loc 1 1913 0
	mov	%d4, 4
.LVL436:
.L379:
	add	%d2, %d5
.LVL437:
	add	%d2, %d4
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE372:
.LBE371:
.LBE370:
.LBE369:
	.loc 1 2061 0
	ld.bu	%d15, [%a15]0
.LVL438:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL439:
.L376:
.LBE368:
.LBE367:
	.loc 1 3197 0
	ret
.LFE60:
	.size	VStdLib_GetLowestBitPosZero32, .-VStdLib_GetLowestBitPosZero32
	.align 1
	.global	VStdLib_GetCountLeadingOnes32
	.type	VStdLib_GetCountLeadingOnes32, @function
VStdLib_GetCountLeadingOnes32:
.LFB61:
	.loc 1 3209 0
.LVL440:
	.loc 1 3211 0
	mov	%d2, 128
	.loc 1 3215 0
	jeq	%d4, -1, .L385
	.loc 1 3218 0
	not	%d4
.LVL441:
.LBB379:
.LBB380:
	.loc 1 2017 0
	insert	%d2, %d4, 0, 0, 16
	.loc 1 2013 0
	mov	%d15, 0
	.loc 1 2017 0
	jz	%d2, .L386
	.loc 1 2020 0
	sh	%d4, %d4, -16
.LVL442:
	.loc 1 2021 0
	mov	%d15, 16
.LVL443:
.L386:
	.loc 1 2025 0
	extr.u	%d4, %d4, 0, 16
.LVL444:
.LBB381:
.LBB382:
	.loc 1 1945 0
	andn	%d2, %d4, ~(-256)
	extr.u	%d2, %d2, 0, 16
	.loc 1 1941 0
	mov	%d6, 0
	.loc 1 1945 0
	jz	%d2, .L387
	.loc 1 1948 0
	sh	%d4, -8
.LVL445:
	.loc 1 1949 0
	mov	%d6, 8
.LVL446:
.L387:
	.loc 1 1953 0
	and	%d4, %d4, 255
.LVL447:
.LBB383:
.LBB384:
	.loc 1 1873 0
	and	%d3, %d4, 240
	.loc 1 1869 0
	mov	%d5, 0
	.loc 1 1873 0
	jz	%d3, .L388
	.loc 1 1876 0
	sh	%d4, -4
.LVL448:
	.loc 1 1877 0
	mov	%d5, 4
.LVL449:
.L388:
	rsub	%d15, %d15, 31
.LVL450:
	sub	%d15, %d6
	sub	%d5, %d15, %d5
.LVL451:
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
.LBE384:
.LBE383:
.LBE382:
.LBE381:
.LBE380:
.LBE379:
	.loc 1 3218 0
	ld.bu	%d15, [%a15]0
	sub	%d5, %d15
	and	%d2, %d5, 255
.LVL452:
.L385:
	.loc 1 3222 0
	ret
.LFE61:
	.size	VStdLib_GetCountLeadingOnes32, .-VStdLib_GetCountLeadingOnes32
	.align 1
	.global	VStdLib_GetCountLeadingZeros32
	.type	VStdLib_GetCountLeadingZeros32, @function
VStdLib_GetCountLeadingZeros32:
.LFB62:
	.loc 1 3234 0
.LVL453:
	.loc 1 3236 0
	mov	%d2, 128
	.loc 1 3240 0
	jz	%d4, .L394
.LVL454:
.LBB391:
.LBB392:
	.loc 1 2017 0
	insert	%d2, %d4, 0, 0, 16
	.loc 1 2013 0
	mov	%d15, 0
	.loc 1 2017 0
	jz	%d2, .L395
	.loc 1 2020 0
	sh	%d4, %d4, -16
.LVL455:
	.loc 1 2021 0
	mov	%d15, 16
.LVL456:
.L395:
	.loc 1 2025 0
	extr.u	%d4, %d4, 0, 16
.LVL457:
.LBB393:
.LBB394:
	.loc 1 1945 0
	andn	%d2, %d4, ~(-256)
	extr.u	%d2, %d2, 0, 16
	.loc 1 1941 0
	mov	%d6, 0
	.loc 1 1945 0
	jz	%d2, .L396
	.loc 1 1948 0
	sh	%d4, -8
.LVL458:
	.loc 1 1949 0
	mov	%d6, 8
.LVL459:
.L396:
	.loc 1 1953 0
	and	%d4, %d4, 255
.LVL460:
.LBB395:
.LBB396:
	.loc 1 1873 0
	and	%d3, %d4, 240
	.loc 1 1869 0
	mov	%d5, 0
	.loc 1 1873 0
	jz	%d3, .L397
	.loc 1 1876 0
	sh	%d4, -4
.LVL461:
	.loc 1 1877 0
	mov	%d5, 4
.LVL462:
.L397:
	rsub	%d15, %d15, 31
.LVL463:
	sub	%d15, %d6
	sub	%d5, %d15, %d5
.LVL464:
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d4, 0
.LBE396:
.LBE395:
.LBE394:
.LBE393:
.LBE392:
.LBE391:
	.loc 1 3243 0
	ld.bu	%d15, [%a15]0
	sub	%d5, %d15
	and	%d2, %d5, 255
.LVL465:
.L394:
	.loc 1 3247 0
	ret
.LFE62:
	.size	VStdLib_GetCountLeadingZeros32, .-VStdLib_GetCountLeadingZeros32
	.align 1
	.global	VStdLib_GetCountTrailingOnes32
	.type	VStdLib_GetCountTrailingOnes32, @function
VStdLib_GetCountTrailingOnes32:
.LFB63:
	.loc 1 3259 0
.LVL466:
	.loc 1 3261 0
	mov	%d2, 128
	.loc 1 3265 0
	jeq	%d4, -1, .L403
	.loc 1 3268 0
	not	%d4
.LVL467:
.LBB403:
.LBB404:
	.loc 1 2048 0
	insert	%d15, %d4, 0, 16, 16
	.loc 1 2044 0
	mov	%d2, 0
	.loc 1 2048 0
	jnz	%d15, .L404
	.loc 1 2056 0
	sh	%d15, %d4, -16
.LVL468:
	.loc 1 2057 0
	mov	%d2, 16
.LVL469:
.L404:
	.loc 1 2061 0
	extr.u	%d15, %d15, 0, 16
.LVL470:
.LBB405:
.LBB406:
	.loc 1 1976 0
	and	%d3, %d15, 255
	.loc 1 1972 0
	mov	%d5, 0
	.loc 1 1976 0
	jnz	%d3, .L405
	.loc 1 1984 0
	sh	%d3, %d15, -8
.LVL471:
	.loc 1 1985 0
	mov	%d5, 8
.LVL472:
.L405:
	.loc 1 1989 0
	and	%d3, %d3, 255
.LVL473:
.LBB407:
.LBB408:
	.loc 1 1904 0
	and	%d15, %d3, 15
	.loc 1 1900 0
	mov	%d4, 0
.LVL474:
	.loc 1 1904 0
	jnz	%d15, .L406
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL475:
	.loc 1 1913 0
	mov	%d4, 4
.LVL476:
.L406:
	add	%d2, %d5
.LVL477:
	add	%d2, %d4
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE408:
.LBE407:
.LBE406:
.LBE405:
	.loc 1 2061 0
	ld.bu	%d15, [%a15]0
.LVL478:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL479:
.L403:
.LBE404:
.LBE403:
	.loc 1 3272 0
	ret
.LFE63:
	.size	VStdLib_GetCountTrailingOnes32, .-VStdLib_GetCountTrailingOnes32
	.align 1
	.global	VStdLib_GetCountTrailingZeros32
	.type	VStdLib_GetCountTrailingZeros32, @function
VStdLib_GetCountTrailingZeros32:
.LFB64:
	.loc 1 3284 0
.LVL480:
	.loc 1 3286 0
	mov	%d2, 128
	.loc 1 3290 0
	jz	%d4, .L412
.LVL481:
.LBB415:
.LBB416:
	.loc 1 2048 0
	insert	%d15, %d4, 0, 16, 16
	.loc 1 2044 0
	mov	%d2, 0
	.loc 1 2048 0
	jnz	%d15, .L413
	.loc 1 2056 0
	sh	%d15, %d4, -16
.LVL482:
	.loc 1 2057 0
	mov	%d2, 16
.LVL483:
.L413:
	.loc 1 2061 0
	extr.u	%d15, %d15, 0, 16
.LVL484:
.LBB417:
.LBB418:
	.loc 1 1976 0
	and	%d3, %d15, 255
	.loc 1 1972 0
	mov	%d5, 0
	.loc 1 1976 0
	jnz	%d3, .L414
	.loc 1 1984 0
	sh	%d3, %d15, -8
.LVL485:
	.loc 1 1985 0
	mov	%d5, 8
.LVL486:
.L414:
	.loc 1 1989 0
	and	%d3, %d3, 255
.LVL487:
.LBB419:
.LBB420:
	.loc 1 1904 0
	and	%d15, %d3, 15
	.loc 1 1900 0
	mov	%d4, 0
.LVL488:
	.loc 1 1904 0
	jnz	%d15, .L415
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL489:
	.loc 1 1913 0
	mov	%d4, 4
.LVL490:
.L415:
	add	%d2, %d5
.LVL491:
	add	%d2, %d4
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE420:
.LBE419:
.LBE418:
.LBE417:
	.loc 1 2061 0
	ld.bu	%d15, [%a15]0
.LVL492:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL493:
.L412:
.LBE416:
.LBE415:
	.loc 1 3297 0
	ret
.LFE64:
	.size	VStdLib_GetCountTrailingZeros32, .-VStdLib_GetCountTrailingZeros32
	.align 1
	.global	VStdLib_GetHighestBitPosOne64
	.type	VStdLib_GetHighestBitPosOne64, @function
VStdLib_GetHighestBitPosOne64:
.LFB65:
	.loc 1 3313 0
.LVL494:
	.loc 1 3319 0
	or	%d15, %d5, %d4
	.loc 1 3315 0
	mov	%d2, 128
	.loc 1 3319 0
	jz	%d15, .L421
.LVL495:
.LBB429:
.LBB430:
	.loc 1 2083 0
	mov	%d2, 0
	.loc 1 2087 0
	jz	%d5, .L422
	.loc 1 2090 0
	mov	%d4, %d5
.LVL496:
	.loc 1 2091 0
	mov	%d2, 32
.LVL497:
.L422:
	.loc 1 2095 0
	mov	%d15, %d4
.LVL498:
.LBB431:
.LBB432:
	.loc 1 2017 0
	insert	%d3, %d4, 0, 0, 16
	.loc 1 2013 0
	mov	%d6, 0
	.loc 1 2017 0
	jz	%d3, .L423
	.loc 1 2020 0
	sh	%d15, %d4, -16
.LVL499:
	.loc 1 2021 0
	mov	%d6, 16
.LVL500:
.L423:
	.loc 1 2025 0
	extr.u	%d15, %d15, 0, 16
.LVL501:
.LBB433:
.LBB434:
	.loc 1 1945 0
	andn	%d3, %d15, ~(-256)
	extr.u	%d3, %d3, 0, 16
	.loc 1 1941 0
	mov	%d5, 0
	.loc 1 1945 0
	jz	%d3, .L424
	.loc 1 1948 0
	sh	%d15, -8
.LVL502:
	.loc 1 1949 0
	mov	%d5, 8
.LVL503:
.L424:
	.loc 1 1953 0
	and	%d15, 255
.LVL504:
.LBB435:
.LBB436:
	.loc 1 1873 0
	and	%d3, %d15, 240
	.loc 1 1869 0
	mov	%d4, 0
	.loc 1 1873 0
	jz	%d3, .L425
	.loc 1 1876 0
	sh	%d15, -4
.LVL505:
	.loc 1 1877 0
	mov	%d4, 4
.LVL506:
.L425:
	add	%d3, %d6, %d2
	add	%d2, %d5, %d3
.LVL507:
	add	%d2, %d4
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE436:
.LBE435:
.LBE434:
.LBE433:
.LBE432:
.LBE431:
	.loc 1 2095 0
	ld.bu	%d15, [%a15]0
.LVL508:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL509:
.L421:
.LBE430:
.LBE429:
	.loc 1 3326 0
	ret
.LFE65:
	.size	VStdLib_GetHighestBitPosOne64, .-VStdLib_GetHighestBitPosOne64
	.align 1
	.global	VStdLib_GetHighestBitPosZero64
	.type	VStdLib_GetHighestBitPosZero64, @function
VStdLib_GetHighestBitPosZero64:
.LFB66:
	.loc 1 3338 0
.LVL510:
	.loc 1 3344 0
	and	%d15, %d5, %d4
	.loc 1 3340 0
	mov	%d2, 128
	.loc 1 3344 0
	jeq	%d15, -1, .L432
	.loc 1 3347 0
	nor	%d2, %d4, 0
	nor	%d3, %d5, 0
.LVL511:
.LBB445:
.LBB446:
	.loc 1 2083 0
	mov	%d6, 0
	.loc 1 2087 0
	jeq	%d5, -1, .L433
	.loc 1 2090 0
	mov	%d2, %d3
.LVL512:
	.loc 1 2091 0
	mov	%d6, 32
.LVL513:
.L433:
	.loc 1 2095 0
	mov	%d15, %d2
.LVL514:
.LBB447:
.LBB448:
	.loc 1 2017 0
	insert	%d3, %d2, 0, 0, 16
	.loc 1 2013 0
	mov	%d7, 0
	.loc 1 2017 0
	jz	%d3, .L434
	.loc 1 2020 0
	sh	%d15, %d2, -16
.LVL515:
	.loc 1 2021 0
	mov	%d7, 16
.LVL516:
.L434:
	.loc 1 2025 0
	extr.u	%d15, %d15, 0, 16
.LVL517:
.LBB449:
.LBB450:
	.loc 1 1945 0
	andn	%d3, %d15, ~(-256)
	extr.u	%d3, %d3, 0, 16
	.loc 1 1941 0
	mov	%d5, 0
	.loc 1 1945 0
	jz	%d3, .L435
	.loc 1 1948 0
	sh	%d15, -8
.LVL518:
	.loc 1 1949 0
	mov	%d5, 8
.LVL519:
.L435:
	.loc 1 1953 0
	and	%d15, 255
.LVL520:
.LBB451:
.LBB452:
	.loc 1 1873 0
	and	%d3, %d15, 240
	.loc 1 1869 0
	mov	%d4, 0
.LVL521:
	.loc 1 1873 0
	jz	%d3, .L436
	.loc 1 1876 0
	sh	%d15, -4
.LVL522:
	.loc 1 1877 0
	mov	%d4, 4
.LVL523:
.L436:
	add	%d3, %d7, %d6
	add	%d2, %d5, %d3
	add	%d2, %d4
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE452:
.LBE451:
.LBE450:
.LBE449:
.LBE448:
.LBE447:
	.loc 1 2095 0
	ld.bu	%d15, [%a15]0
.LVL524:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL525:
.L432:
.LBE446:
.LBE445:
	.loc 1 3351 0
	ret
.LFE66:
	.size	VStdLib_GetHighestBitPosZero64, .-VStdLib_GetHighestBitPosZero64
	.align 1
	.global	VStdLib_GetLowestBitPosOne64
	.type	VStdLib_GetLowestBitPosOne64, @function
VStdLib_GetLowestBitPosOne64:
.LFB67:
	.loc 1 3363 0
.LVL526:
	.loc 1 3369 0
	or	%d15, %d5, %d4
	.loc 1 3365 0
	mov	%d2, 128
	.loc 1 3369 0
	jz	%d15, .L443
.LVL527:
.LBB461:
.LBB462:
	.loc 1 2118 0
	mov	%d2, %d4
	.loc 1 2114 0
	mov	%d6, 0
	.loc 1 2118 0
	jnz	%d4, .L444
	.loc 1 2126 0
	mov	%d2, %d5
.LVL528:
	.loc 1 2127 0
	mov	%d6, 32
.LVL529:
.L444:
.LBB463:
.LBB464:
	.loc 1 2048 0
	insert	%d15, %d2, 0, 16, 16
	.loc 1 2044 0
	mov	%d7, 0
	.loc 1 2048 0
	jnz	%d15, .L445
	.loc 1 2056 0
	sh	%d15, %d2, -16
.LVL530:
	.loc 1 2057 0
	mov	%d7, 16
.LVL531:
.L445:
	.loc 1 2061 0
	extr.u	%d15, %d15, 0, 16
.LVL532:
.LBB465:
.LBB466:
	.loc 1 1976 0
	and	%d3, %d15, 255
	.loc 1 1972 0
	mov	%d5, 0
	.loc 1 1976 0
	jnz	%d3, .L446
	.loc 1 1984 0
	sh	%d3, %d15, -8
.LVL533:
	.loc 1 1985 0
	mov	%d5, 8
.LVL534:
.L446:
	.loc 1 1989 0
	and	%d3, %d3, 255
.LVL535:
.LBB467:
.LBB468:
	.loc 1 1904 0
	and	%d15, %d3, 15
	.loc 1 1900 0
	mov	%d4, 0
.LVL536:
	.loc 1 1904 0
	jnz	%d15, .L447
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL537:
	.loc 1 1913 0
	mov	%d4, 4
.LVL538:
.L447:
	add	%d3, %d7, %d6
	add	%d2, %d5, %d3
	add	%d2, %d4
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE468:
.LBE467:
.LBE466:
.LBE465:
.LBE464:
.LBE463:
	.loc 1 2131 0
	ld.bu	%d15, [%a15]0
.LVL539:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL540:
.L443:
.LBE462:
.LBE461:
	.loc 1 3376 0
	ret
.LFE67:
	.size	VStdLib_GetLowestBitPosOne64, .-VStdLib_GetLowestBitPosOne64
	.align 1
	.global	VStdLib_GetLowestBitPosZero64
	.type	VStdLib_GetLowestBitPosZero64, @function
VStdLib_GetLowestBitPosZero64:
.LFB68:
	.loc 1 3388 0
.LVL541:
	.loc 1 3394 0
	and	%d15, %d5, %d4
	.loc 1 3390 0
	mov	%d2, 128
	.loc 1 3394 0
	jeq	%d15, -1, .L454
	.loc 1 3397 0
	nor	%d15, %d4, 0
	nor	%d3, %d5, 0
.LVL542:
.LBB477:
.LBB478:
	.loc 1 2118 0
	mov	%d2, %d15
	.loc 1 2114 0
	mov	%d6, 0
	.loc 1 2118 0
	jnz	%d15, .L455
	.loc 1 2126 0
	mov	%d2, %d3
.LVL543:
	.loc 1 2127 0
	mov	%d6, 32
.LVL544:
.L455:
.LBB479:
.LBB480:
	.loc 1 2048 0
	insert	%d15, %d2, 0, 16, 16
	.loc 1 2044 0
	mov	%d7, 0
	.loc 1 2048 0
	jnz	%d15, .L456
	.loc 1 2056 0
	sh	%d15, %d2, -16
.LVL545:
	.loc 1 2057 0
	mov	%d7, 16
.LVL546:
.L456:
	.loc 1 2061 0
	extr.u	%d15, %d15, 0, 16
.LVL547:
.LBB481:
.LBB482:
	.loc 1 1976 0
	and	%d3, %d15, 255
	.loc 1 1972 0
	mov	%d5, 0
	.loc 1 1976 0
	jnz	%d3, .L457
	.loc 1 1984 0
	sh	%d3, %d15, -8
.LVL548:
	.loc 1 1985 0
	mov	%d5, 8
.LVL549:
.L457:
	.loc 1 1989 0
	and	%d3, %d3, 255
.LVL550:
.LBB483:
.LBB484:
	.loc 1 1904 0
	and	%d15, %d3, 15
	.loc 1 1900 0
	mov	%d4, 0
.LVL551:
	.loc 1 1904 0
	jnz	%d15, .L458
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL552:
	.loc 1 1913 0
	mov	%d4, 4
.LVL553:
.L458:
	add	%d3, %d7, %d6
	add	%d2, %d5, %d3
	add	%d2, %d4
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE484:
.LBE483:
.LBE482:
.LBE481:
.LBE480:
.LBE479:
	.loc 1 2131 0
	ld.bu	%d15, [%a15]0
.LVL554:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL555:
.L454:
.LBE478:
.LBE477:
	.loc 1 3401 0
	ret
.LFE68:
	.size	VStdLib_GetLowestBitPosZero64, .-VStdLib_GetLowestBitPosZero64
	.align 1
	.global	VStdLib_GetCountLeadingOnes64
	.type	VStdLib_GetCountLeadingOnes64, @function
VStdLib_GetCountLeadingOnes64:
.LFB69:
	.loc 1 3413 0
.LVL556:
	.loc 1 3419 0
	and	%d15, %d5, %d4
	.loc 1 3415 0
	mov	%d2, 128
	.loc 1 3419 0
	jeq	%d15, -1, .L465
	.loc 1 3422 0
	nor	%d2, %d4, 0
	nor	%d15, %d5, 0
.LVL557:
.LBB493:
.LBB494:
	.loc 1 2083 0
	mov	%d7, 0
	.loc 1 2087 0
	jeq	%d5, -1, .L466
	.loc 1 2090 0
	mov	%d2, %d15
.LVL558:
	.loc 1 2091 0
	mov	%d7, 32
.LVL559:
.L466:
	.loc 1 2095 0
	mov	%d15, %d2
.LVL560:
.LBB495:
.LBB496:
	.loc 1 2017 0
	insert	%d3, %d2, 0, 0, 16
	.loc 1 2013 0
	mov	%d6, 0
	.loc 1 2017 0
	jz	%d3, .L467
	.loc 1 2020 0
	sh	%d15, %d2, -16
.LVL561:
	.loc 1 2021 0
	mov	%d6, 16
.LVL562:
.L467:
	.loc 1 2025 0
	extr.u	%d15, %d15, 0, 16
.LVL563:
.LBB497:
.LBB498:
	.loc 1 1945 0
	andn	%d2, %d15, ~(-256)
	extr.u	%d2, %d2, 0, 16
	.loc 1 1941 0
	mov	%d5, 0
	.loc 1 1945 0
	jz	%d2, .L468
	.loc 1 1948 0
	sh	%d15, -8
.LVL564:
	.loc 1 1949 0
	mov	%d5, 8
.LVL565:
.L468:
	.loc 1 1953 0
	and	%d15, 255
.LVL566:
.LBB499:
.LBB500:
	.loc 1 1873 0
	and	%d3, %d15, 240
	.loc 1 1869 0
	mov	%d4, 0
.LVL567:
	.loc 1 1873 0
	jz	%d3, .L469
	.loc 1 1876 0
	sh	%d15, -4
.LVL568:
	.loc 1 1877 0
	mov	%d4, 4
.LVL569:
.L469:
	rsub	%d7, %d7, 63
.LVL570:
	sub	%d7, %d6
	sub	%d5, %d7, %d5
.LVL571:
	sub	%d4, %d5, %d4
.LVL572:
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE500:
.LBE499:
.LBE498:
.LBE497:
.LBE496:
.LBE495:
.LBE494:
.LBE493:
	.loc 1 3422 0
	ld.bu	%d15, [%a15]0
.LVL573:
	sub	%d4, %d15
	and	%d2, %d4, 255
.LVL574:
.L465:
	.loc 1 3426 0
	ret
.LFE69:
	.size	VStdLib_GetCountLeadingOnes64, .-VStdLib_GetCountLeadingOnes64
	.align 1
	.global	VStdLib_GetCountLeadingZeros64
	.type	VStdLib_GetCountLeadingZeros64, @function
VStdLib_GetCountLeadingZeros64:
.LFB70:
	.loc 1 3438 0
.LVL575:
	.loc 1 3444 0
	or	%d15, %d5, %d4
	.loc 1 3440 0
	mov	%d2, 128
	.loc 1 3444 0
	jz	%d15, .L476
.LVL576:
.LBB509:
.LBB510:
	.loc 1 2083 0
	mov	%d7, 0
	.loc 1 2087 0
	jz	%d5, .L477
	.loc 1 2090 0
	mov	%d4, %d5
.LVL577:
	.loc 1 2091 0
	mov	%d7, 32
.LVL578:
.L477:
	.loc 1 2095 0
	mov	%d15, %d4
.LVL579:
.LBB511:
.LBB512:
	.loc 1 2017 0
	insert	%d2, %d4, 0, 0, 16
	.loc 1 2013 0
	mov	%d6, 0
	.loc 1 2017 0
	jz	%d2, .L478
	.loc 1 2020 0
	sh	%d15, %d4, -16
.LVL580:
	.loc 1 2021 0
	mov	%d6, 16
.LVL581:
.L478:
	.loc 1 2025 0
	extr.u	%d15, %d15, 0, 16
.LVL582:
.LBB513:
.LBB514:
	.loc 1 1945 0
	andn	%d2, %d15, ~(-256)
	extr.u	%d2, %d2, 0, 16
	.loc 1 1941 0
	mov	%d5, 0
	.loc 1 1945 0
	jz	%d2, .L479
	.loc 1 1948 0
	sh	%d15, -8
.LVL583:
	.loc 1 1949 0
	mov	%d5, 8
.LVL584:
.L479:
	.loc 1 1953 0
	and	%d15, 255
.LVL585:
.LBB515:
.LBB516:
	.loc 1 1873 0
	and	%d3, %d15, 240
	.loc 1 1869 0
	mov	%d4, 0
	.loc 1 1873 0
	jz	%d3, .L480
	.loc 1 1876 0
	sh	%d15, -4
.LVL586:
	.loc 1 1877 0
	mov	%d4, 4
.LVL587:
.L480:
	rsub	%d7, %d7, 63
.LVL588:
	sub	%d7, %d6
	sub	%d5, %d7, %d5
.LVL589:
	sub	%d4, %d5, %d4
.LVL590:
	.loc 1 1881 0
	movh.a	%a15, hi:VStdLib_HighestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_HighestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE516:
.LBE515:
.LBE514:
.LBE513:
.LBE512:
.LBE511:
.LBE510:
.LBE509:
	.loc 1 3447 0
	ld.bu	%d15, [%a15]0
.LVL591:
	sub	%d4, %d15
	and	%d2, %d4, 255
.LVL592:
.L476:
	.loc 1 3451 0
	ret
.LFE70:
	.size	VStdLib_GetCountLeadingZeros64, .-VStdLib_GetCountLeadingZeros64
	.align 1
	.global	VStdLib_GetCountTrailingOnes64
	.type	VStdLib_GetCountTrailingOnes64, @function
VStdLib_GetCountTrailingOnes64:
.LFB71:
	.loc 1 3463 0
.LVL593:
	.loc 1 3469 0
	and	%d15, %d5, %d4
	.loc 1 3465 0
	mov	%d2, 128
	.loc 1 3469 0
	jeq	%d15, -1, .L487
	.loc 1 3472 0
	nor	%d15, %d4, 0
	nor	%d3, %d5, 0
.LVL594:
.LBB525:
.LBB526:
	.loc 1 2118 0
	mov	%d2, %d15
	.loc 1 2114 0
	mov	%d6, 0
	.loc 1 2118 0
	jnz	%d15, .L488
	.loc 1 2126 0
	mov	%d2, %d3
.LVL595:
	.loc 1 2127 0
	mov	%d6, 32
.LVL596:
.L488:
.LBB527:
.LBB528:
	.loc 1 2048 0
	insert	%d15, %d2, 0, 16, 16
	.loc 1 2044 0
	mov	%d7, 0
	.loc 1 2048 0
	jnz	%d15, .L489
	.loc 1 2056 0
	sh	%d15, %d2, -16
.LVL597:
	.loc 1 2057 0
	mov	%d7, 16
.LVL598:
.L489:
	.loc 1 2061 0
	extr.u	%d15, %d15, 0, 16
.LVL599:
.LBB529:
.LBB530:
	.loc 1 1976 0
	and	%d3, %d15, 255
	.loc 1 1972 0
	mov	%d5, 0
	.loc 1 1976 0
	jnz	%d3, .L490
	.loc 1 1984 0
	sh	%d3, %d15, -8
.LVL600:
	.loc 1 1985 0
	mov	%d5, 8
.LVL601:
.L490:
	.loc 1 1989 0
	and	%d3, %d3, 255
.LVL602:
.LBB531:
.LBB532:
	.loc 1 1904 0
	and	%d15, %d3, 15
	.loc 1 1900 0
	mov	%d4, 0
.LVL603:
	.loc 1 1904 0
	jnz	%d15, .L491
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL604:
	.loc 1 1913 0
	mov	%d4, 4
.LVL605:
.L491:
	add	%d3, %d7, %d6
	add	%d2, %d5, %d3
	add	%d2, %d4
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE532:
.LBE531:
.LBE530:
.LBE529:
.LBE528:
.LBE527:
	.loc 1 2131 0
	ld.bu	%d15, [%a15]0
.LVL606:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL607:
.L487:
.LBE526:
.LBE525:
	.loc 1 3476 0
	ret
.LFE71:
	.size	VStdLib_GetCountTrailingOnes64, .-VStdLib_GetCountTrailingOnes64
	.align 1
	.global	VStdLib_GetCountTrailingZeros64
	.type	VStdLib_GetCountTrailingZeros64, @function
VStdLib_GetCountTrailingZeros64:
.LFB72:
	.loc 1 3488 0
.LVL608:
	.loc 1 3494 0
	or	%d15, %d5, %d4
	.loc 1 3490 0
	mov	%d2, 128
	.loc 1 3494 0
	jz	%d15, .L498
.LVL609:
.LBB541:
.LBB542:
	.loc 1 2118 0
	mov	%d2, %d4
	.loc 1 2114 0
	mov	%d6, 0
	.loc 1 2118 0
	jnz	%d4, .L499
	.loc 1 2126 0
	mov	%d2, %d5
.LVL610:
	.loc 1 2127 0
	mov	%d6, 32
.LVL611:
.L499:
.LBB543:
.LBB544:
	.loc 1 2048 0
	insert	%d15, %d2, 0, 16, 16
	.loc 1 2044 0
	mov	%d7, 0
	.loc 1 2048 0
	jnz	%d15, .L500
	.loc 1 2056 0
	sh	%d15, %d2, -16
.LVL612:
	.loc 1 2057 0
	mov	%d7, 16
.LVL613:
.L500:
	.loc 1 2061 0
	extr.u	%d15, %d15, 0, 16
.LVL614:
.LBB545:
.LBB546:
	.loc 1 1976 0
	and	%d3, %d15, 255
	.loc 1 1972 0
	mov	%d5, 0
	.loc 1 1976 0
	jnz	%d3, .L501
	.loc 1 1984 0
	sh	%d3, %d15, -8
.LVL615:
	.loc 1 1985 0
	mov	%d5, 8
.LVL616:
.L501:
	.loc 1 1989 0
	and	%d3, %d3, 255
.LVL617:
.LBB547:
.LBB548:
	.loc 1 1904 0
	and	%d15, %d3, 15
	.loc 1 1900 0
	mov	%d4, 0
.LVL618:
	.loc 1 1904 0
	jnz	%d15, .L502
	.loc 1 1912 0
	sh	%d15, %d3, -4
.LVL619:
	.loc 1 1913 0
	mov	%d4, 4
.LVL620:
.L502:
	add	%d3, %d7, %d6
	add	%d2, %d5, %d3
	add	%d2, %d4
	.loc 1 1917 0
	movh.a	%a15, hi:VStdLib_LowestBitPosOneInNibble
	lea	%a15, [%a15] lo:VStdLib_LowestBitPosOneInNibble
	addsc.a	%a15, %a15, %d15, 0
.LBE548:
.LBE547:
.LBE546:
.LBE545:
.LBE544:
.LBE543:
	.loc 1 2131 0
	ld.bu	%d15, [%a15]0
.LVL621:
	add	%d2, %d15
	and	%d2, %d2, 255
.LVL622:
.L498:
.LBE542:
.LBE541:
	.loc 1 3501 0
	ret
.LFE72:
	.size	VStdLib_GetCountTrailingZeros64, .-VStdLib_GetCountTrailingZeros64
.section .RamConstSection,"a",@progbits
	.type	VStdLib_LowestBitPosOneInNibble, @object
	.size	VStdLib_LowestBitPosOneInNibble, 16
VStdLib_LowestBitPosOneInNibble:
	.byte	-128
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.type	VStdLib_HighestBitPosOneInNibble, @object
	.size	VStdLib_HighestBitPosOneInNibble, 16
VStdLib_HighestBitPosOneInNibble:
	.byte	-128
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
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
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.byte	0x4
	.uaword	.LCFI0-.LFB40
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB55
	.uaword	.LFE55-.LFB55
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB56
	.uaword	.LFE56-.LFB56
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB57
	.uaword	.LFE57-.LFB57
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB58
	.uaword	.LFE58-.LFB58
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB59
	.uaword	.LFE59-.LFB59
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB60
	.uaword	.LFE60-.LFB60
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB61
	.uaword	.LFE61-.LFB61
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB62
	.uaword	.LFE62-.LFB62
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB63
	.uaword	.LFE63-.LFB63
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB64
	.uaword	.LFE64-.LFB64
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB65
	.uaword	.LFE65-.LFB65
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB66
	.uaword	.LFE66-.LFB66
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB67
	.uaword	.LFE67-.LFB67
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB68
	.uaword	.LFE68-.LFB68
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB69
	.uaword	.LFE69-.LFB69
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB70
	.uaword	.LFE70-.LFB70
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.align 2
.LEFDE74:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../../BSW/_Common/Platform_Types.h"
	.file 3 "../../../../external/BSW/VStdLib/vstdlib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x30ba
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2020-09-01 -mlicense-dir=d:\\uti\\hightec\\tricore\\v4.9.4.1\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc162 -g -O1 -ffunction-sections -fno-common -fomit-frame-pointer"
	.byte	0x1
	.string	"../../../../external/BSW/VStdLib/vstdlib.c"
	.string	"D:\\\\usr\\\\usage\\\\Delivery\\\\CBD23x\\\\CBD2300515\\\\D00\\\\external\\\\Demo\\\\DemoUpdater\\\\Appl"
	.uaword	.Ldebug_ranges0+0xd8
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint8"
	.byte	0x2
	.byte	0x67
	.uaword	0x1b5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x68
	.uaword	0x197
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1ec
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6c
	.uaword	0x21c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x6f
	.uaword	0x197
	.uleb128 0x3
	.string	"uint32_least"
	.byte	0x2
	.byte	0x73
	.uaword	0x21c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint64"
	.byte	0x2
	.byte	0x7e
	.uaword	0x17d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x290
	.uleb128 0x5
	.uaword	0x1c4
	.uleb128 0x3
	.string	"VStdLib_CntType"
	.byte	0x3
	.byte	0x81
	.uaword	0x244
	.uleb128 0x6
	.string	"VStdLib_Loc_GetMemCmpNeqResult"
	.byte	0x1
	.uahalf	0x322
	.byte	0x1
	.uaword	0x1a8
	.byte	0x3
	.uaword	0x30a
	.uleb128 0x7
	.string	"buf1Value"
	.byte	0x1
	.uahalf	0x322
	.uaword	0x20e
	.uleb128 0x7
	.string	"buf2Value"
	.byte	0x1
	.uahalf	0x322
	.uaword	0x20e
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x325
	.uaword	0x1a8
	.byte	0
	.uleb128 0x9
	.string	"VStdLib_Loc_MemSet_8_3"
	.byte	0x1
	.uahalf	0x365
	.byte	0x1
	.byte	0x3
	.uaword	0x350
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x366
	.uaword	0x350
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x367
	.uaword	0x1c4
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x368
	.uaword	0x231
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1c4
	.uleb128 0x9
	.string	"VStdLib_Loc_MemCpy_8_3"
	.byte	0x1
	.uahalf	0x475
	.byte	0x1
	.byte	0x3
	.uaword	0x39e
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x476
	.uaword	0x350
	.uleb128 0x7
	.string	"pSrc8"
	.byte	0x1
	.uahalf	0x477
	.uaword	0x28a
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x478
	.uaword	0x231
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_MemCmp_8"
	.byte	0x1
	.uahalf	0x33f
	.byte	0x1
	.uaword	0x1a8
	.byte	0x3
	.uaword	0x402
	.uleb128 0x7
	.string	"pBuf1_8"
	.byte	0x1
	.uahalf	0x340
	.uaword	0x28a
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x341
	.uaword	0x28a
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x342
	.uaword	0x244
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.uahalf	0x345
	.uaword	0x244
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x346
	.uaword	0x1a8
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_GetHighestBitPosOneInByte"
	.byte	0x1
	.uahalf	0x74a
	.byte	0x1
	.uaword	0x1c4
	.byte	0x3
	.uaword	0x44f
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x74a
	.uaword	0x1c4
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.uahalf	0x74d
	.uaword	0x1c4
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_GetLowestBitPosOneInByte"
	.byte	0x1
	.uahalf	0x769
	.byte	0x1
	.uaword	0x1c4
	.byte	0x3
	.uaword	0x49b
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x769
	.uaword	0x1c4
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.uahalf	0x76c
	.uaword	0x1c4
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_GetHighestBitPosOneInTwoBytes"
	.byte	0x1
	.uahalf	0x792
	.byte	0x1
	.uaword	0x1c4
	.byte	0x3
	.uaword	0x4ec
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x792
	.uaword	0x1de
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.uahalf	0x795
	.uaword	0x1c4
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_GetLowestBitPosOneInTwoBytes"
	.byte	0x1
	.uahalf	0x7b1
	.byte	0x1
	.uaword	0x1c4
	.byte	0x3
	.uaword	0x53c
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x7b1
	.uaword	0x1de
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.uahalf	0x7b4
	.uaword	0x1c4
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_GetHighestBitPosOneInEightBytes"
	.byte	0x1
	.uahalf	0x820
	.byte	0x1
	.uaword	0x1c4
	.byte	0x3
	.uaword	0x58f
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x820
	.uaword	0x269
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.uahalf	0x823
	.uaword	0x1c4
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_GetLowestBitPosOneInEightBytes"
	.byte	0x1
	.uahalf	0x83f
	.byte	0x1
	.uaword	0x1c4
	.byte	0x3
	.uaword	0x5e1
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x83f
	.uaword	0x269
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.uahalf	0x842
	.uaword	0x1c4
	.byte	0
	.uleb128 0x9
	.string	"VStdLib_Loc_MemSet_8_31"
	.byte	0x1
	.uahalf	0x398
	.byte	0x1
	.byte	0x3
	.uaword	0x628
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x399
	.uaword	0x350
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x39a
	.uaword	0x1c4
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x39b
	.uaword	0x231
	.byte	0
	.uleb128 0x9
	.string	"VStdLib_Loc_MemSet_32_Aligned"
	.byte	0x1
	.uahalf	0x420
	.byte	0x1
	.byte	0x3
	.uaword	0x6a1
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x421
	.uaword	0x6a1
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x422
	.uaword	0x1c4
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x423
	.uaword	0x244
	.uleb128 0xb
	.string	"dPos"
	.byte	0x1
	.uahalf	0x426
	.uaword	0x244
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x427
	.uaword	0x244
	.uleb128 0xb
	.string	"nPattern32"
	.byte	0x1
	.uahalf	0x428
	.uaword	0x20e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x20e
	.uleb128 0xc
	.byte	0x1
	.string	"VStdLib_MemSet"
	.byte	0x1
	.uahalf	0x872
	.byte	0x1
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x80f
	.uleb128 0xd
	.string	"pDst"
	.byte	0x1
	.uahalf	0x872
	.uaword	0x80f
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x873
	.uaword	0x1c4
	.byte	0x1
	.byte	0x54
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x874
	.uaword	0x295
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x877
	.uaword	0x350
	.uaword	.LLST2
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x879
	.uaword	0x1c4
	.byte	0
	.uleb128 0x12
	.uaword	0x5e1
	.uaword	.LBB131
	.uaword	.LBE131
	.byte	0x1
	.uahalf	0x88c
	.uaword	0x747
	.uleb128 0x13
	.uaword	0x61b
	.uaword	.LLST3
	.uleb128 0x13
	.uaword	0x60f
	.uaword	.LLST4
	.uleb128 0x13
	.uaword	0x603
	.uaword	.LLST5
	.byte	0
	.uleb128 0x14
	.uaword	.LBB133
	.uaword	.LBE133
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x895
	.uaword	0x231
	.uaword	.LLST6
	.uleb128 0x12
	.uaword	0x30a
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.uahalf	0x89b
	.uaword	0x790
	.uleb128 0x13
	.uaword	0x343
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x337
	.uaword	.LLST8
	.uleb128 0x13
	.uaword	0x32b
	.uaword	.LLST9
	.byte	0
	.uleb128 0x15
	.uaword	0x628
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.uahalf	0x8a5
	.uleb128 0x13
	.uaword	0x668
	.uaword	.LLST10
	.uleb128 0x13
	.uaword	0x65c
	.uaword	.LLST11
	.uleb128 0x13
	.uaword	0x650
	.uaword	.LLST12
	.uleb128 0x14
	.uaword	.LBB137
	.uaword	.LBE137
	.uleb128 0x16
	.uaword	0x674
	.uaword	.LLST13
	.uleb128 0x16
	.uaword	0x681
	.uaword	.LLST14
	.uleb128 0x16
	.uaword	0x68d
	.uaword	.LLST15
	.uleb128 0x15
	.uaword	0x30a
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.uahalf	0x454
	.uleb128 0x13
	.uaword	0x343
	.uaword	.LLST16
	.uleb128 0x13
	.uaword	0x337
	.uaword	.LLST17
	.uleb128 0x13
	.uaword	0x32b
	.uaword	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x9
	.string	"VStdLib_Loc_MemCpy_8_31"
	.byte	0x1
	.uahalf	0x4a8
	.byte	0x1
	.byte	0x3
	.uaword	0x85a
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x4a9
	.uaword	0x350
	.uleb128 0x7
	.string	"pSrc8"
	.byte	0x1
	.uahalf	0x4aa
	.uaword	0x28a
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x4ab
	.uaword	0x231
	.byte	0
	.uleb128 0x9
	.string	"VStdLib_Loc_MemCpy_32_Aligned"
	.byte	0x1
	.uahalf	0x530
	.byte	0x1
	.byte	0x3
	.uaword	0x8ef
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x531
	.uaword	0x6a1
	.uleb128 0x7
	.string	"pSrc32"
	.byte	0x1
	.uahalf	0x532
	.uaword	0x8ef
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x533
	.uaword	0x244
	.uleb128 0xb
	.string	"dPos"
	.byte	0x1
	.uahalf	0x536
	.uaword	0x244
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x537
	.uaword	0x244
	.uleb128 0xb
	.string	"x0"
	.byte	0x1
	.uahalf	0x538
	.uaword	0x20e
	.uleb128 0xb
	.string	"x1"
	.byte	0x1
	.uahalf	0x538
	.uaword	0x20e
	.uleb128 0xb
	.string	"x2"
	.byte	0x1
	.uahalf	0x538
	.uaword	0x20e
	.uleb128 0xb
	.string	"x3"
	.byte	0x1
	.uahalf	0x538
	.uaword	0x20e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x8f5
	.uleb128 0x5
	.uaword	0x20e
	.uleb128 0x9
	.string	"VStdLib_Loc_MemCpy_32_Unaligned"
	.byte	0x1
	.uahalf	0x5f1
	.byte	0x1
	.byte	0x3
	.uaword	0xa85
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x5f2
	.uaword	0x350
	.uleb128 0x7
	.string	"pSrc32"
	.byte	0x1
	.uahalf	0x5f3
	.uaword	0x8ef
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x5f4
	.uaword	0x244
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x5f5
	.uaword	0x231
	.uleb128 0xb
	.string	"dPos"
	.byte	0x1
	.uahalf	0x5f8
	.uaword	0x244
	.uleb128 0xb
	.string	"sPos"
	.byte	0x1
	.uahalf	0x5f9
	.uaword	0x244
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x5fa
	.uaword	0x244
	.uleb128 0x18
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x600
	.uaword	0x6a1
	.uleb128 0xb
	.string	"prev"
	.byte	0x1
	.uahalf	0x601
	.uaword	0x20e
	.uleb128 0x19
	.uaword	0x9d4
	.uleb128 0xb
	.string	"x0"
	.byte	0x1
	.uahalf	0x616
	.uaword	0x20e
	.uleb128 0xb
	.string	"x1"
	.byte	0x1
	.uahalf	0x616
	.uaword	0x20e
	.uleb128 0xb
	.string	"x2"
	.byte	0x1
	.uahalf	0x616
	.uaword	0x20e
	.uleb128 0xb
	.string	"x3"
	.byte	0x1
	.uahalf	0x616
	.uaword	0x20e
	.uleb128 0xb
	.string	"x4"
	.byte	0x1
	.uahalf	0x616
	.uaword	0x20e
	.byte	0
	.uleb128 0x19
	.uaword	0xa11
	.uleb128 0xb
	.string	"x0"
	.byte	0x1
	.uahalf	0x634
	.uaword	0x20e
	.uleb128 0xb
	.string	"x1"
	.byte	0x1
	.uahalf	0x634
	.uaword	0x20e
	.uleb128 0xb
	.string	"x2"
	.byte	0x1
	.uahalf	0x634
	.uaword	0x20e
	.uleb128 0xb
	.string	"x3"
	.byte	0x1
	.uahalf	0x634
	.uaword	0x20e
	.uleb128 0xb
	.string	"x4"
	.byte	0x1
	.uahalf	0x634
	.uaword	0x20e
	.byte	0
	.uleb128 0x19
	.uaword	0xa4e
	.uleb128 0xb
	.string	"x0"
	.byte	0x1
	.uahalf	0x653
	.uaword	0x20e
	.uleb128 0xb
	.string	"x1"
	.byte	0x1
	.uahalf	0x653
	.uaword	0x20e
	.uleb128 0xb
	.string	"x2"
	.byte	0x1
	.uahalf	0x653
	.uaword	0x20e
	.uleb128 0xb
	.string	"x3"
	.byte	0x1
	.uahalf	0x653
	.uaword	0x20e
	.uleb128 0xb
	.string	"x4"
	.byte	0x1
	.uahalf	0x653
	.uaword	0x20e
	.byte	0
	.uleb128 0x18
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x670
	.uaword	0x231
	.uleb128 0xb
	.string	"xShift"
	.byte	0x1
	.uahalf	0x671
	.uaword	0x231
	.uleb128 0x18
	.uleb128 0xb
	.string	"x0"
	.byte	0x1
	.uahalf	0x675
	.uaword	0x20e
	.uleb128 0xb
	.string	"x1"
	.byte	0x1
	.uahalf	0x675
	.uaword	0x20e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"VStdLib_Loc_MemCpy_8_PartialWord"
	.byte	0x1
	.uahalf	0x58e
	.byte	0x1
	.byte	0x3
	.uaword	0xae5
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x58f
	.uaword	0x350
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x590
	.uaword	0x231
	.uleb128 0x7
	.string	"pPrev"
	.byte	0x1
	.uahalf	0x591
	.uaword	0x6a1
	.uleb128 0x7
	.string	"pDPos"
	.byte	0x1
	.uahalf	0x592
	.uaword	0xae5
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x244
	.uleb128 0xc
	.byte	0x1
	.string	"VStdLib_MemCpy"
	.byte	0x1
	.uahalf	0x8d9
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe8f
	.uleb128 0xd
	.string	"pDst"
	.byte	0x1
	.uahalf	0x8d9
	.uaword	0x80f
	.uaword	.LLST19
	.uleb128 0xd
	.string	"pSrc"
	.byte	0x1
	.uahalf	0x8da
	.uaword	0xe8f
	.uaword	.LLST20
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x8db
	.uaword	0x295
	.uaword	.LLST21
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x8de
	.uaword	0x350
	.uaword	.LLST22
	.uleb128 0x1a
	.string	"pSrc8"
	.byte	0x1
	.uahalf	0x8e0
	.uaword	0x28a
	.uaword	.LLST23
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x8e2
	.uaword	0x1c4
	.byte	0
	.uleb128 0x12
	.uaword	0x811
	.uaword	.LBB163
	.uaword	.LBE163
	.byte	0x1
	.uahalf	0x8f5
	.uaword	0xba0
	.uleb128 0x13
	.uaword	0x84d
	.uaword	.LLST24
	.uleb128 0x13
	.uaword	0x83f
	.uaword	.LLST25
	.uleb128 0x13
	.uaword	0x833
	.uaword	.LLST26
	.byte	0
	.uleb128 0x14
	.uaword	.LBB165
	.uaword	.LBE165
	.uleb128 0x1a
	.string	"nSrcOffset"
	.byte	0x1
	.uahalf	0x8fe
	.uaword	0x231
	.uaword	.LLST27
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x8ff
	.uaword	0x231
	.uaword	.LLST28
	.uleb128 0x12
	.uaword	0x356
	.uaword	.LBB166
	.uaword	.LBE166
	.byte	0x1
	.uahalf	0x905
	.uaword	0xc00
	.uleb128 0x13
	.uaword	0x391
	.uaword	.LLST29
	.uleb128 0x13
	.uaword	0x383
	.uaword	.LLST30
	.uleb128 0x13
	.uaword	0x377
	.uaword	.LLST31
	.byte	0
	.uleb128 0x12
	.uaword	0x85a
	.uaword	.LBB168
	.uaword	.LBE168
	.byte	0x1
	.uahalf	0x916
	.uaword	0xc90
	.uleb128 0x1b
	.uaword	0x89d
	.uleb128 0x1b
	.uaword	0x88e
	.uleb128 0x1b
	.uaword	0x882
	.uleb128 0x14
	.uaword	.LBB169
	.uaword	.LBE169
	.uleb128 0x16
	.uaword	0x8a9
	.uaword	.LLST32
	.uleb128 0x16
	.uaword	0x8b6
	.uaword	.LLST33
	.uleb128 0x16
	.uaword	0x8c2
	.uaword	.LLST34
	.uleb128 0x16
	.uaword	0x8cd
	.uaword	.LLST35
	.uleb128 0x16
	.uaword	0x8d8
	.uaword	.LLST36
	.uleb128 0x16
	.uaword	0x8e3
	.uaword	.LLST37
	.uleb128 0x15
	.uaword	0x356
	.uaword	.LBB170
	.uaword	.LBE170
	.byte	0x1
	.uahalf	0x567
	.uleb128 0x13
	.uaword	0x391
	.uaword	.LLST38
	.uleb128 0x13
	.uaword	0x383
	.uaword	.LLST39
	.uleb128 0x13
	.uaword	0x377
	.uaword	.LLST40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x8fa
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.uahalf	0x91f
	.uleb128 0x13
	.uaword	0x94b
	.uaword	.LLST41
	.uleb128 0x13
	.uaword	0x93f
	.uaword	.LLST42
	.uleb128 0x13
	.uaword	0x930
	.uaword	.LLST43
	.uleb128 0x13
	.uaword	0x924
	.uaword	.LLST44
	.uleb128 0x14
	.uaword	.LBB173
	.uaword	.LBE173
	.uleb128 0x16
	.uaword	0x957
	.uaword	.LLST45
	.uleb128 0x16
	.uaword	0x964
	.uaword	.LLST46
	.uleb128 0x16
	.uaword	0x971
	.uaword	.LLST47
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0
	.uaword	0xe5f
	.uleb128 0x16
	.uaword	0x97e
	.uaword	.LLST48
	.uleb128 0x16
	.uaword	0x98a
	.uaword	.LLST49
	.uleb128 0x1d
	.uaword	0xa85
	.uaword	.LBB175
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x606
	.uaword	0xd3c
	.uleb128 0x13
	.uaword	0xad6
	.uaword	.LLST50
	.uleb128 0x13
	.uaword	0xac8
	.uaword	.LLST51
	.uleb128 0x13
	.uaword	0xabc
	.uaword	.LLST52
	.uleb128 0x13
	.uaword	0xab0
	.uaword	.LLST53
	.byte	0
	.uleb128 0x1e
	.uaword	.LBB181
	.uaword	.LBE181
	.uaword	0xd77
	.uleb128 0x16
	.uaword	0x99c
	.uaword	.LLST54
	.uleb128 0x16
	.uaword	0x9a7
	.uaword	.LLST55
	.uleb128 0x16
	.uaword	0x9b2
	.uaword	.LLST56
	.uleb128 0x16
	.uaword	0x9bd
	.uaword	.LLST57
	.uleb128 0x16
	.uaword	0x9c8
	.uaword	.LLST58
	.byte	0
	.uleb128 0x1e
	.uaword	.LBB182
	.uaword	.LBE182
	.uaword	0xdb2
	.uleb128 0x16
	.uaword	0x9d9
	.uaword	.LLST59
	.uleb128 0x16
	.uaword	0x9e4
	.uaword	.LLST60
	.uleb128 0x16
	.uaword	0x9ef
	.uaword	.LLST61
	.uleb128 0x16
	.uaword	0x9fa
	.uaword	.LLST62
	.uleb128 0x16
	.uaword	0xa05
	.uaword	.LLST63
	.byte	0
	.uleb128 0x1e
	.uaword	.LBB183
	.uaword	.LBE183
	.uaword	0xded
	.uleb128 0x16
	.uaword	0xa16
	.uaword	.LLST64
	.uleb128 0x16
	.uaword	0xa21
	.uaword	.LLST65
	.uleb128 0x16
	.uaword	0xa2c
	.uaword	.LLST66
	.uleb128 0x16
	.uaword	0xa37
	.uaword	.LLST67
	.uleb128 0x16
	.uaword	0xa42
	.uaword	.LLST68
	.byte	0
	.uleb128 0x1e
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	0xe29
	.uleb128 0x16
	.uaword	0xa4f
	.uaword	.LLST69
	.uleb128 0x16
	.uaword	0xa5b
	.uaword	.LLST70
	.uleb128 0x14
	.uaword	.LBB185
	.uaword	.LBE185
	.uleb128 0x16
	.uaword	0xa6b
	.uaword	.LLST71
	.uleb128 0x16
	.uaword	0xa76
	.uaword	.LLST72
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0xa85
	.uaword	.LBB186
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.uahalf	0x687
	.uleb128 0x13
	.uaword	0xad6
	.uaword	.LLST73
	.uleb128 0x13
	.uaword	0xac8
	.uaword	.LLST74
	.uleb128 0x13
	.uaword	0xabc
	.uaword	.LLST75
	.uleb128 0x13
	.uaword	0xab0
	.uaword	.LLST76
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x811
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x1
	.uahalf	0x68f
	.uleb128 0x13
	.uaword	0x84d
	.uaword	.LLST77
	.uleb128 0x13
	.uaword	0x83f
	.uaword	.LLST78
	.uleb128 0x13
	.uaword	0x833
	.uaword	.LLST79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe95
	.uleb128 0x20
	.uleb128 0xc
	.byte	0x1
	.string	"VStdLib_MemCpy16"
	.byte	0x1
	.uahalf	0x948
	.byte	0x1
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf0a
	.uleb128 0xd
	.string	"pDst"
	.byte	0x1
	.uahalf	0x948
	.uaword	0xf0a
	.uaword	.LLST80
	.uleb128 0xd
	.string	"pSrc"
	.byte	0x1
	.uahalf	0x949
	.uaword	0xf10
	.uaword	.LLST81
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x94a
	.uaword	0x295
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"idx"
	.byte	0x1
	.uahalf	0x94d
	.uaword	0x295
	.uaword	.LLST82
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x94e
	.uaword	0x1c4
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1de
	.uleb128 0x4
	.byte	0x4
	.uaword	0xf16
	.uleb128 0x5
	.uaword	0x1de
	.uleb128 0xc
	.byte	0x1
	.string	"VStdLib_MemCpy32"
	.byte	0x1
	.uahalf	0x976
	.byte	0x1
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf8f
	.uleb128 0xd
	.string	"pDst"
	.byte	0x1
	.uahalf	0x976
	.uaword	0x6a1
	.uaword	.LLST83
	.uleb128 0xd
	.string	"pSrc"
	.byte	0x1
	.uahalf	0x977
	.uaword	0x8ef
	.uaword	.LLST84
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x978
	.uaword	0x295
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"idx"
	.byte	0x1
	.uahalf	0x97b
	.uaword	0x295
	.uaword	.LLST85
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x97c
	.uaword	0x1c4
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"VStdLib_MemCpy_s"
	.byte	0x1
	.uahalf	0x9a6
	.byte	0x1
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1029
	.uleb128 0xd
	.string	"pDst"
	.byte	0x1
	.uahalf	0x9a6
	.uaword	0x80f
	.uaword	.LLST86
	.uleb128 0xd
	.string	"nDstSize"
	.byte	0x1
	.uahalf	0x9a7
	.uaword	0x295
	.uaword	.LLST87
	.uleb128 0xd
	.string	"pSrc"
	.byte	0x1
	.uahalf	0x9a8
	.uaword	0xe8f
	.uaword	.LLST88
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x9a9
	.uaword	0x295
	.uaword	.LLST89
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x9ac
	.uaword	0x1c4
	.byte	0
	.uleb128 0x21
	.uaword	.LVL142
	.uaword	0xaeb
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_MemCmp_32_Aligned"
	.byte	0x1
	.uahalf	0x6a1
	.byte	0x1
	.uaword	0x1a8
	.byte	0x3
	.uaword	0x109e
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x6a2
	.uaword	0x8ef
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x6a3
	.uaword	0x8ef
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x6a4
	.uaword	0x244
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.uahalf	0x6a7
	.uaword	0x244
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x6a8
	.uaword	0x244
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x6a9
	.uaword	0x1a8
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_MemCmp_32_Unaligned"
	.byte	0x1
	.uahalf	0x6d9
	.byte	0x1
	.uaword	0x1a8
	.byte	0x3
	.uaword	0x1183
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x6da
	.uaword	0x8ef
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x6db
	.uaword	0x28a
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x6dc
	.uaword	0x244
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x6dd
	.uaword	0x231
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x6e0
	.uaword	0x1a8
	.uleb128 0x18
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x6ec
	.uaword	0x8ef
	.uleb128 0xb
	.string	"buf1Pos"
	.byte	0x1
	.uahalf	0x6ee
	.uaword	0x244
	.uleb128 0xb
	.string	"buf2Pos"
	.byte	0x1
	.uahalf	0x6ef
	.uaword	0x244
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x6f0
	.uaword	0x244
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x6f5
	.uaword	0x231
	.uleb128 0xb
	.string	"xShift"
	.byte	0x1
	.uahalf	0x6f6
	.uaword	0x231
	.uleb128 0xb
	.string	"prev"
	.byte	0x1
	.uahalf	0x6fa
	.uaword	0x20e
	.uleb128 0x18
	.uleb128 0xb
	.string	"x0"
	.byte	0x1
	.uahalf	0x702
	.uaword	0x20e
	.uleb128 0xb
	.string	"x1"
	.byte	0x1
	.uahalf	0x702
	.uaword	0x20e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_MemCmp"
	.byte	0x1
	.uahalf	0x9e1
	.byte	0x1
	.uaword	0x1a8
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1683
	.uleb128 0xd
	.string	"pBuf1"
	.byte	0x1
	.uahalf	0x9e2
	.uaword	0xe8f
	.uaword	.LLST90
	.uleb128 0xd
	.string	"pBuf2"
	.byte	0x1
	.uahalf	0x9e3
	.uaword	0xe8f
	.uaword	.LLST91
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x9e4
	.uaword	0x295
	.uaword	.LLST92
	.uleb128 0x1a
	.string	"pBuf1_8"
	.byte	0x1
	.uahalf	0x9e7
	.uaword	0x28a
	.uaword	.LLST93
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x9e9
	.uaword	0x28a
	.uaword	.LLST94
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x9eb
	.uaword	0x1c4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x9ec
	.uaword	0x1a8
	.byte	0
	.uleb128 0x12
	.uaword	0x39e
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x1
	.uahalf	0xa08
	.uaword	0x128b
	.uleb128 0x1b
	.uaword	0x3dd
	.uleb128 0x1b
	.uaword	0x3d1
	.uleb128 0x1b
	.uaword	0x3c1
	.uleb128 0x14
	.uaword	.LBB233
	.uaword	.LBE233
	.uleb128 0x16
	.uaword	0x3e9
	.uaword	.LLST95
	.uleb128 0x24
	.uaword	0x3f5
	.uleb128 0x15
	.uaword	0x2ac
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x1
	.uahalf	0x350
	.uleb128 0x13
	.uaword	0x2eb
	.uaword	.LLST96
	.uleb128 0x13
	.uaword	0x2d9
	.uaword	.LLST97
	.uleb128 0x14
	.uaword	.LBB235
	.uaword	.LBE235
	.uleb128 0x24
	.uaword	0x2fd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	.LBB236
	.uaword	.LBE236
	.uleb128 0x1a
	.string	"nBuf1Offset"
	.byte	0x1
	.uahalf	0xa0e
	.uaword	0x231
	.uaword	.LLST98
	.uleb128 0x12
	.uaword	0x39e
	.uaword	.LBB237
	.uaword	.LBE237
	.byte	0x1
	.uahalf	0xa14
	.uaword	0x132a
	.uleb128 0x13
	.uaword	0x3dd
	.uaword	.LLST99
	.uleb128 0x13
	.uaword	0x3d1
	.uaword	.LLST100
	.uleb128 0x13
	.uaword	0x3c1
	.uaword	.LLST101
	.uleb128 0x14
	.uaword	.LBB238
	.uaword	.LBE238
	.uleb128 0x16
	.uaword	0x3e9
	.uaword	.LLST102
	.uleb128 0x16
	.uaword	0x3f5
	.uaword	.LLST103
	.uleb128 0x15
	.uaword	0x2ac
	.uaword	.LBB239
	.uaword	.LBE239
	.byte	0x1
	.uahalf	0x350
	.uleb128 0x13
	.uaword	0x2eb
	.uaword	.LLST104
	.uleb128 0x13
	.uaword	0x2d9
	.uaword	.LLST105
	.uleb128 0x14
	.uaword	.LBB240
	.uaword	.LBE240
	.uleb128 0x24
	.uaword	0x2fd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	.LBB241
	.uaword	.LBE241
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0xa1a
	.uaword	0x231
	.uaword	.LLST106
	.uleb128 0x1d
	.uaword	0x1029
	.uaword	.LBB242
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0xa28
	.uaword	0x1434
	.uleb128 0x1b
	.uaword	0x106d
	.uleb128 0x1b
	.uaword	0x1061
	.uleb128 0x1b
	.uaword	0x1055
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x16
	.uaword	0x1079
	.uaword	.LLST107
	.uleb128 0x16
	.uaword	0x1085
	.uaword	.LLST108
	.uleb128 0x16
	.uaword	0x1091
	.uaword	.LLST109
	.uleb128 0x12
	.uaword	0x2ac
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.uahalf	0x6b3
	.uaword	0x13bc
	.uleb128 0x13
	.uaword	0x2eb
	.uaword	.LLST110
	.uleb128 0x13
	.uaword	0x2d9
	.uaword	.LLST111
	.uleb128 0x14
	.uaword	.LBB245
	.uaword	.LBE245
	.uleb128 0x24
	.uaword	0x2fd
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x39e
	.uaword	.LBB246
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.uahalf	0x6bd
	.uleb128 0x13
	.uaword	0x3dd
	.uaword	.LLST112
	.uleb128 0x13
	.uaword	0x3d1
	.uaword	.LLST113
	.uleb128 0x13
	.uaword	0x3c1
	.uaword	.LLST114
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x16
	.uaword	0x3e9
	.uaword	.LLST115
	.uleb128 0x16
	.uaword	0x3f5
	.uaword	.LLST116
	.uleb128 0x15
	.uaword	0x2ac
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.uahalf	0x350
	.uleb128 0x13
	.uaword	0x2eb
	.uaword	.LLST117
	.uleb128 0x13
	.uaword	0x2d9
	.uaword	.LLST118
	.uleb128 0x14
	.uaword	.LBB249
	.uaword	.LBE249
	.uleb128 0x24
	.uaword	0x2fd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x109e
	.uaword	.LBB253
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0xa31
	.uleb128 0x13
	.uaword	0x10f0
	.uaword	.LLST119
	.uleb128 0x13
	.uaword	0x10e4
	.uaword	.LLST120
	.uleb128 0x13
	.uaword	0x10d8
	.uaword	.LLST121
	.uleb128 0x13
	.uaword	0x10cc
	.uaword	.LLST122
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x16
	.uaword	0x10fc
	.uaword	.LLST123
	.uleb128 0x12
	.uaword	0x39e
	.uaword	.LBB255
	.uaword	.LBE255
	.byte	0x1
	.uahalf	0x6e5
	.uaword	0x14f4
	.uleb128 0x13
	.uaword	0x3dd
	.uaword	.LLST124
	.uleb128 0x13
	.uaword	0x3d1
	.uaword	.LLST125
	.uleb128 0x13
	.uaword	0x3c1
	.uaword	.LLST126
	.uleb128 0x14
	.uaword	.LBB256
	.uaword	.LBE256
	.uleb128 0x16
	.uaword	0x3e9
	.uaword	.LLST127
	.uleb128 0x16
	.uaword	0x3f5
	.uaword	.LLST128
	.uleb128 0x15
	.uaword	0x2ac
	.uaword	.LBB257
	.uaword	.LBE257
	.byte	0x1
	.uahalf	0x350
	.uleb128 0x13
	.uaword	0x2eb
	.uaword	.LLST129
	.uleb128 0x13
	.uaword	0x2d9
	.uaword	.LLST130
	.uleb128 0x14
	.uaword	.LBB258
	.uaword	.LBE258
	.uleb128 0x24
	.uaword	0x2fd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x16
	.uaword	0x1109
	.uaword	.LLST131
	.uleb128 0x16
	.uaword	0x1115
	.uaword	.LLST132
	.uleb128 0x16
	.uaword	0x1125
	.uaword	.LLST133
	.uleb128 0x16
	.uaword	0x1135
	.uaword	.LLST134
	.uleb128 0x16
	.uaword	0x1141
	.uaword	.LLST135
	.uleb128 0x16
	.uaword	0x114d
	.uaword	.LLST136
	.uleb128 0x26
	.uaword	0x115c
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1e
	.uaword	.LBB260
	.uaword	.LBE260
	.uaword	0x1589
	.uleb128 0x16
	.uaword	0x116a
	.uaword	.LLST137
	.uleb128 0x16
	.uaword	0x1175
	.uaword	.LLST138
	.uleb128 0x15
	.uaword	0x2ac
	.uaword	.LBB261
	.uaword	.LBE261
	.byte	0x1
	.uahalf	0x710
	.uleb128 0x13
	.uaword	0x2eb
	.uaword	.LLST139
	.uleb128 0x13
	.uaword	0x2d9
	.uaword	.LLST140
	.uleb128 0x14
	.uaword	.LBB262
	.uaword	.LBE262
	.uleb128 0x24
	.uaword	0x2fd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x39e
	.uaword	.LBB263
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.uahalf	0x727
	.uaword	0x1603
	.uleb128 0x13
	.uaword	0x3dd
	.uaword	.LLST141
	.uleb128 0x13
	.uaword	0x3d1
	.uaword	.LLST142
	.uleb128 0x13
	.uaword	0x3c1
	.uaword	.LLST143
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x16
	.uaword	0x3e9
	.uaword	.LLST144
	.uleb128 0x16
	.uaword	0x3f5
	.uaword	.LLST145
	.uleb128 0x15
	.uaword	0x2ac
	.uaword	.LBB265
	.uaword	.LBE265
	.byte	0x1
	.uahalf	0x350
	.uleb128 0x13
	.uaword	0x2eb
	.uaword	.LLST146
	.uleb128 0x13
	.uaword	0x2d9
	.uaword	.LLST147
	.uleb128 0x14
	.uaword	.LBB266
	.uaword	.LBE266
	.uleb128 0x24
	.uaword	0x2fd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x39e
	.uaword	.LBB268
	.uaword	.LBE268
	.byte	0x1
	.uahalf	0x730
	.uleb128 0x13
	.uaword	0x3dd
	.uaword	.LLST148
	.uleb128 0x13
	.uaword	0x3d1
	.uaword	.LLST149
	.uleb128 0x13
	.uaword	0x3c1
	.uaword	.LLST150
	.uleb128 0x14
	.uaword	.LBB269
	.uaword	.LBE269
	.uleb128 0x16
	.uaword	0x3e9
	.uaword	.LLST151
	.uleb128 0x16
	.uaword	0x3f5
	.uaword	.LLST152
	.uleb128 0x15
	.uaword	0x2ac
	.uaword	.LBB270
	.uaword	.LBE270
	.byte	0x1
	.uahalf	0x350
	.uleb128 0x13
	.uaword	0x2eb
	.uaword	.LLST153
	.uleb128 0x13
	.uaword	0x2d9
	.uaword	.LLST154
	.uleb128 0x14
	.uaword	.LBB271
	.uaword	.LBE271
	.uleb128 0x24
	.uaword	0x2fd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetHighestBitPosOne8"
	.byte	0x1
	.uahalf	0xa8c
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB41
	.uaword	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1707
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xa8c
	.uaword	0x1c4
	.uaword	.LLST155
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xa8f
	.uaword	0x1c4
	.uaword	.LLST156
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB277
	.uaword	.LBE277
	.byte	0x1
	.uahalf	0xa96
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST157
	.uleb128 0x14
	.uaword	.LBB278
	.uaword	.LBE278
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST158
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetHighestBitPosZero8"
	.byte	0x1
	.uahalf	0xaa5
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB42
	.uaword	.LFE42
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x178c
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xaa5
	.uaword	0x1c4
	.uaword	.LLST159
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xaa8
	.uaword	0x1c4
	.uaword	.LLST160
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB279
	.uaword	.LBE279
	.byte	0x1
	.uahalf	0xaaf
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST161
	.uleb128 0x14
	.uaword	.LBB280
	.uaword	.LBE280
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST162
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetLowestBitPosOne8"
	.byte	0x1
	.uahalf	0xabe
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB43
	.uaword	.LFE43
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x180d
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xabe
	.uaword	0x1c4
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xac1
	.uaword	0x1c4
	.uaword	.LLST163
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB281
	.uaword	.LBE281
	.byte	0x1
	.uahalf	0xac8
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST164
	.uleb128 0x14
	.uaword	.LBB282
	.uaword	.LBE282
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST165
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetLowestBitPosZero8"
	.byte	0x1
	.uahalf	0xad7
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB44
	.uaword	.LFE44
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1891
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xad7
	.uaword	0x1c4
	.uaword	.LLST166
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xada
	.uaword	0x1c4
	.uaword	.LLST167
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB283
	.uaword	.LBE283
	.byte	0x1
	.uahalf	0xae1
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST168
	.uleb128 0x14
	.uaword	.LBB284
	.uaword	.LBE284
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST169
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountLeadingOnes8"
	.byte	0x1
	.uahalf	0xaf0
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB45
	.uaword	.LFE45
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1915
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xaf0
	.uaword	0x1c4
	.uaword	.LLST170
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xaf3
	.uaword	0x1c4
	.uaword	.LLST171
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB285
	.uaword	.LBE285
	.byte	0x1
	.uahalf	0xafa
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST172
	.uleb128 0x14
	.uaword	.LBB286
	.uaword	.LBE286
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST173
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountLeadingZeros8"
	.byte	0x1
	.uahalf	0xb09
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB46
	.uaword	.LFE46
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x199a
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xb09
	.uaword	0x1c4
	.uaword	.LLST174
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xb0c
	.uaword	0x1c4
	.uaword	.LLST175
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB287
	.uaword	.LBE287
	.byte	0x1
	.uahalf	0xb13
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST176
	.uleb128 0x14
	.uaword	.LBB288
	.uaword	.LBE288
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST177
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountTrailingOnes8"
	.byte	0x1
	.uahalf	0xb22
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB47
	.uaword	.LFE47
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1a1f
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xb22
	.uaword	0x1c4
	.uaword	.LLST178
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xb25
	.uaword	0x1c4
	.uaword	.LLST179
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB289
	.uaword	.LBE289
	.byte	0x1
	.uahalf	0xb2c
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST180
	.uleb128 0x14
	.uaword	.LBB290
	.uaword	.LBE290
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST181
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountTrailingZeros8"
	.byte	0x1
	.uahalf	0xb3b
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB48
	.uaword	.LFE48
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1aa3
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xb3b
	.uaword	0x1c4
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xb3e
	.uaword	0x1c4
	.uaword	.LLST182
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB291
	.uaword	.LBE291
	.byte	0x1
	.uahalf	0xb45
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST183
	.uleb128 0x14
	.uaword	.LBB292
	.uaword	.LBE292
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST184
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetHighestBitPosOne16"
	.byte	0x1
	.uahalf	0xb58
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1b55
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xb58
	.uaword	0x1de
	.uaword	.LLST185
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xb5b
	.uaword	0x1c4
	.uaword	.LLST186
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB293
	.uaword	.LBE293
	.byte	0x1
	.uahalf	0xb62
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST187
	.uleb128 0x14
	.uaword	.LBB294
	.uaword	.LBE294
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST188
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB295
	.uaword	.LBE295
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST189
	.uleb128 0x14
	.uaword	.LBB296
	.uaword	.LBE296
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST190
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetHighestBitPosZero16"
	.byte	0x1
	.uahalf	0xb71
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB50
	.uaword	.LFE50
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1c08
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xb71
	.uaword	0x1de
	.uaword	.LLST191
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xb74
	.uaword	0x1c4
	.uaword	.LLST192
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB297
	.uaword	.LBE297
	.byte	0x1
	.uahalf	0xb7b
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST193
	.uleb128 0x14
	.uaword	.LBB298
	.uaword	.LBE298
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST194
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB299
	.uaword	.LBE299
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST195
	.uleb128 0x14
	.uaword	.LBB300
	.uaword	.LBE300
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST196
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetLowestBitPosOne16"
	.byte	0x1
	.uahalf	0xb8a
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB51
	.uaword	.LFE51
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1cb9
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xb8a
	.uaword	0x1de
	.uaword	.LLST197
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xb8d
	.uaword	0x1c4
	.uaword	.LLST198
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB301
	.uaword	.LBE301
	.byte	0x1
	.uahalf	0xb94
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST199
	.uleb128 0x14
	.uaword	.LBB302
	.uaword	.LBE302
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST200
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB303
	.uaword	.LBE303
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST201
	.uleb128 0x14
	.uaword	.LBB304
	.uaword	.LBE304
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST202
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetLowestBitPosZero16"
	.byte	0x1
	.uahalf	0xba3
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB52
	.uaword	.LFE52
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1d6b
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xba3
	.uaword	0x1de
	.uaword	.LLST203
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xba6
	.uaword	0x1c4
	.uaword	.LLST204
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB305
	.uaword	.LBE305
	.byte	0x1
	.uahalf	0xbad
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST205
	.uleb128 0x14
	.uaword	.LBB306
	.uaword	.LBE306
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST206
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB307
	.uaword	.LBE307
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST207
	.uleb128 0x14
	.uaword	.LBB308
	.uaword	.LBE308
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST208
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountLeadingOnes16"
	.byte	0x1
	.uahalf	0xbbc
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB53
	.uaword	.LFE53
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1e1d
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xbbc
	.uaword	0x1de
	.uaword	.LLST209
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xbbf
	.uaword	0x1c4
	.uaword	.LLST210
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB309
	.uaword	.LBE309
	.byte	0x1
	.uahalf	0xbc6
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST211
	.uleb128 0x14
	.uaword	.LBB310
	.uaword	.LBE310
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST212
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB311
	.uaword	.LBE311
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST213
	.uleb128 0x14
	.uaword	.LBB312
	.uaword	.LBE312
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST214
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountLeadingZeros16"
	.byte	0x1
	.uahalf	0xbd5
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB54
	.uaword	.LFE54
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1ed0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xbd5
	.uaword	0x1de
	.uaword	.LLST215
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xbd8
	.uaword	0x1c4
	.uaword	.LLST216
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB313
	.uaword	.LBE313
	.byte	0x1
	.uahalf	0xbdf
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST217
	.uleb128 0x14
	.uaword	.LBB314
	.uaword	.LBE314
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST218
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB315
	.uaword	.LBE315
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST219
	.uleb128 0x14
	.uaword	.LBB316
	.uaword	.LBE316
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST220
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountTrailingOnes16"
	.byte	0x1
	.uahalf	0xbee
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB55
	.uaword	.LFE55
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1f83
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xbee
	.uaword	0x1de
	.uaword	.LLST221
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xbf1
	.uaword	0x1c4
	.uaword	.LLST222
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB317
	.uaword	.LBE317
	.byte	0x1
	.uahalf	0xbf8
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST223
	.uleb128 0x14
	.uaword	.LBB318
	.uaword	.LBE318
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST224
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB319
	.uaword	.LBE319
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST225
	.uleb128 0x14
	.uaword	.LBB320
	.uaword	.LBE320
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST226
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountTrailingZeros16"
	.byte	0x1
	.uahalf	0xc07
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB56
	.uaword	.LFE56
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2037
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xc07
	.uaword	0x1de
	.uaword	.LLST227
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xc0a
	.uaword	0x1c4
	.uaword	.LLST228
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB321
	.uaword	.LBE321
	.byte	0x1
	.uahalf	0xc11
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST229
	.uleb128 0x14
	.uaword	.LBB322
	.uaword	.LBE322
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST230
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB323
	.uaword	.LBE323
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST231
	.uleb128 0x14
	.uaword	.LBB324
	.uaword	.LBE324
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST232
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_GetHighestBitPosOneInFourBytes"
	.byte	0x1
	.uahalf	0x7da
	.byte	0x1
	.uaword	0x1c4
	.byte	0x3
	.uaword	0x2089
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x7da
	.uaword	0x20e
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.uahalf	0x7dd
	.uaword	0x1c4
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetHighestBitPosOne32"
	.byte	0x1
	.uahalf	0xc24
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB57
	.uaword	.LFE57
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2168
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xc24
	.uaword	0x20e
	.uaword	.LLST233
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xc27
	.uaword	0x1c4
	.uaword	.LLST234
	.uleb128 0x15
	.uaword	0x2037
	.uaword	.LBB331
	.uaword	.LBE331
	.byte	0x1
	.uahalf	0xc2e
	.uleb128 0x13
	.uaword	0x2070
	.uaword	.LLST235
	.uleb128 0x14
	.uaword	.LBB332
	.uaword	.LBE332
	.uleb128 0x16
	.uaword	0x207c
	.uaword	.LLST236
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB333
	.uaword	.LBE333
	.byte	0x1
	.uahalf	0x7e9
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST237
	.uleb128 0x14
	.uaword	.LBB334
	.uaword	.LBE334
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST238
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB335
	.uaword	.LBE335
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST239
	.uleb128 0x14
	.uaword	.LBB336
	.uaword	.LBE336
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST240
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetHighestBitPosZero32"
	.byte	0x1
	.uahalf	0xc3d
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB58
	.uaword	.LFE58
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2248
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xc3d
	.uaword	0x20e
	.uaword	.LLST241
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xc40
	.uaword	0x1c4
	.uaword	.LLST242
	.uleb128 0x15
	.uaword	0x2037
	.uaword	.LBB343
	.uaword	.LBE343
	.byte	0x1
	.uahalf	0xc47
	.uleb128 0x13
	.uaword	0x2070
	.uaword	.LLST243
	.uleb128 0x14
	.uaword	.LBB344
	.uaword	.LBE344
	.uleb128 0x16
	.uaword	0x207c
	.uaword	.LLST244
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB345
	.uaword	.LBE345
	.byte	0x1
	.uahalf	0x7e9
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST245
	.uleb128 0x14
	.uaword	.LBB346
	.uaword	.LBE346
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST246
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB347
	.uaword	.LBE347
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST247
	.uleb128 0x14
	.uaword	.LBB348
	.uaword	.LBE348
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST248
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"VStdLib_Loc_GetLowestBitPosOneInFourBytes"
	.byte	0x1
	.uahalf	0x7f9
	.byte	0x1
	.uaword	0x1c4
	.byte	0x3
	.uaword	0x2299
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x7f9
	.uaword	0x20e
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.uahalf	0x7fc
	.uaword	0x1c4
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetLowestBitPosOne32"
	.byte	0x1
	.uahalf	0xc56
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB59
	.uaword	.LFE59
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2377
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xc56
	.uaword	0x20e
	.uaword	.LLST249
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xc59
	.uaword	0x1c4
	.uaword	.LLST250
	.uleb128 0x15
	.uaword	0x2248
	.uaword	.LBB355
	.uaword	.LBE355
	.byte	0x1
	.uahalf	0xc60
	.uleb128 0x13
	.uaword	0x2280
	.uaword	.LLST251
	.uleb128 0x14
	.uaword	.LBB356
	.uaword	.LBE356
	.uleb128 0x16
	.uaword	0x228c
	.uaword	.LLST252
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB357
	.uaword	.LBE357
	.byte	0x1
	.uahalf	0x80d
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST253
	.uleb128 0x14
	.uaword	.LBB358
	.uaword	.LBE358
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST254
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB359
	.uaword	.LBE359
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST255
	.uleb128 0x14
	.uaword	.LBB360
	.uaword	.LBE360
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST256
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetLowestBitPosZero32"
	.byte	0x1
	.uahalf	0xc6f
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB60
	.uaword	.LFE60
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2456
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xc6f
	.uaword	0x20e
	.uaword	.LLST257
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xc72
	.uaword	0x1c4
	.uaword	.LLST258
	.uleb128 0x15
	.uaword	0x2248
	.uaword	.LBB367
	.uaword	.LBE367
	.byte	0x1
	.uahalf	0xc79
	.uleb128 0x13
	.uaword	0x2280
	.uaword	.LLST259
	.uleb128 0x14
	.uaword	.LBB368
	.uaword	.LBE368
	.uleb128 0x16
	.uaword	0x228c
	.uaword	.LLST260
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB369
	.uaword	.LBE369
	.byte	0x1
	.uahalf	0x80d
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST261
	.uleb128 0x14
	.uaword	.LBB370
	.uaword	.LBE370
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST262
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB371
	.uaword	.LBE371
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST263
	.uleb128 0x14
	.uaword	.LBB372
	.uaword	.LBE372
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST264
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountLeadingOnes32"
	.byte	0x1
	.uahalf	0xc88
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB61
	.uaword	.LFE61
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2535
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xc88
	.uaword	0x20e
	.uaword	.LLST265
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xc8b
	.uaword	0x1c4
	.uaword	.LLST266
	.uleb128 0x15
	.uaword	0x2037
	.uaword	.LBB379
	.uaword	.LBE379
	.byte	0x1
	.uahalf	0xc92
	.uleb128 0x13
	.uaword	0x2070
	.uaword	.LLST267
	.uleb128 0x14
	.uaword	.LBB380
	.uaword	.LBE380
	.uleb128 0x16
	.uaword	0x207c
	.uaword	.LLST268
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB381
	.uaword	.LBE381
	.byte	0x1
	.uahalf	0x7e9
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST269
	.uleb128 0x14
	.uaword	.LBB382
	.uaword	.LBE382
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST270
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB383
	.uaword	.LBE383
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST271
	.uleb128 0x14
	.uaword	.LBB384
	.uaword	.LBE384
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST272
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountLeadingZeros32"
	.byte	0x1
	.uahalf	0xca1
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB62
	.uaword	.LFE62
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2615
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xca1
	.uaword	0x20e
	.uaword	.LLST273
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xca4
	.uaword	0x1c4
	.uaword	.LLST274
	.uleb128 0x15
	.uaword	0x2037
	.uaword	.LBB391
	.uaword	.LBE391
	.byte	0x1
	.uahalf	0xcab
	.uleb128 0x13
	.uaword	0x2070
	.uaword	.LLST275
	.uleb128 0x14
	.uaword	.LBB392
	.uaword	.LBE392
	.uleb128 0x16
	.uaword	0x207c
	.uaword	.LLST276
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB393
	.uaword	.LBE393
	.byte	0x1
	.uahalf	0x7e9
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST277
	.uleb128 0x14
	.uaword	.LBB394
	.uaword	.LBE394
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST278
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB395
	.uaword	.LBE395
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST279
	.uleb128 0x14
	.uaword	.LBB396
	.uaword	.LBE396
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST280
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountTrailingOnes32"
	.byte	0x1
	.uahalf	0xcba
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB63
	.uaword	.LFE63
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x26f5
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xcba
	.uaword	0x20e
	.uaword	.LLST281
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xcbd
	.uaword	0x1c4
	.uaword	.LLST282
	.uleb128 0x15
	.uaword	0x2248
	.uaword	.LBB403
	.uaword	.LBE403
	.byte	0x1
	.uahalf	0xcc4
	.uleb128 0x13
	.uaword	0x2280
	.uaword	.LLST283
	.uleb128 0x14
	.uaword	.LBB404
	.uaword	.LBE404
	.uleb128 0x16
	.uaword	0x228c
	.uaword	.LLST284
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB405
	.uaword	.LBE405
	.byte	0x1
	.uahalf	0x80d
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST285
	.uleb128 0x14
	.uaword	.LBB406
	.uaword	.LBE406
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST286
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB407
	.uaword	.LBE407
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST287
	.uleb128 0x14
	.uaword	.LBB408
	.uaword	.LBE408
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST288
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountTrailingZeros32"
	.byte	0x1
	.uahalf	0xcd3
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB64
	.uaword	.LFE64
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x27d6
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xcd3
	.uaword	0x20e
	.uaword	.LLST289
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xcd6
	.uaword	0x1c4
	.uaword	.LLST290
	.uleb128 0x15
	.uaword	0x2248
	.uaword	.LBB415
	.uaword	.LBE415
	.byte	0x1
	.uahalf	0xcdd
	.uleb128 0x13
	.uaword	0x2280
	.uaword	.LLST291
	.uleb128 0x14
	.uaword	.LBB416
	.uaword	.LBE416
	.uleb128 0x16
	.uaword	0x228c
	.uaword	.LLST292
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB417
	.uaword	.LBE417
	.byte	0x1
	.uahalf	0x80d
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST293
	.uleb128 0x14
	.uaword	.LBB418
	.uaword	.LBE418
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST294
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB419
	.uaword	.LBE419
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST295
	.uleb128 0x14
	.uaword	.LBB420
	.uaword	.LBE420
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST296
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetHighestBitPosOne64"
	.byte	0x1
	.uahalf	0xcf0
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB65
	.uaword	.LFE65
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x28e2
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xcf0
	.uaword	0x269
	.uaword	.LLST297
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xcf3
	.uaword	0x1c4
	.uaword	.LLST298
	.uleb128 0x15
	.uaword	0x53c
	.uaword	.LBB429
	.uaword	.LBE429
	.byte	0x1
	.uahalf	0xcfa
	.uleb128 0x13
	.uaword	0x576
	.uaword	.LLST299
	.uleb128 0x14
	.uaword	.LBB430
	.uaword	.LBE430
	.uleb128 0x16
	.uaword	0x582
	.uaword	.LLST300
	.uleb128 0x15
	.uaword	0x2037
	.uaword	.LBB431
	.uaword	.LBE431
	.byte	0x1
	.uahalf	0x82f
	.uleb128 0x13
	.uaword	0x2070
	.uaword	.LLST301
	.uleb128 0x14
	.uaword	.LBB432
	.uaword	.LBE432
	.uleb128 0x16
	.uaword	0x207c
	.uaword	.LLST302
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB433
	.uaword	.LBE433
	.byte	0x1
	.uahalf	0x7e9
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST303
	.uleb128 0x14
	.uaword	.LBB434
	.uaword	.LBE434
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST304
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB435
	.uaword	.LBE435
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST305
	.uleb128 0x14
	.uaword	.LBB436
	.uaword	.LBE436
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST306
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetHighestBitPosZero64"
	.byte	0x1
	.uahalf	0xd09
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB66
	.uaword	.LFE66
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x29ef
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xd09
	.uaword	0x269
	.uaword	.LLST307
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xd0c
	.uaword	0x1c4
	.uaword	.LLST308
	.uleb128 0x15
	.uaword	0x53c
	.uaword	.LBB445
	.uaword	.LBE445
	.byte	0x1
	.uahalf	0xd13
	.uleb128 0x13
	.uaword	0x576
	.uaword	.LLST309
	.uleb128 0x14
	.uaword	.LBB446
	.uaword	.LBE446
	.uleb128 0x16
	.uaword	0x582
	.uaword	.LLST310
	.uleb128 0x15
	.uaword	0x2037
	.uaword	.LBB447
	.uaword	.LBE447
	.byte	0x1
	.uahalf	0x82f
	.uleb128 0x13
	.uaword	0x2070
	.uaword	.LLST311
	.uleb128 0x14
	.uaword	.LBB448
	.uaword	.LBE448
	.uleb128 0x16
	.uaword	0x207c
	.uaword	.LLST312
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB449
	.uaword	.LBE449
	.byte	0x1
	.uahalf	0x7e9
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST313
	.uleb128 0x14
	.uaword	.LBB450
	.uaword	.LBE450
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST314
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB451
	.uaword	.LBE451
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST315
	.uleb128 0x14
	.uaword	.LBB452
	.uaword	.LBE452
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST316
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetLowestBitPosOne64"
	.byte	0x1
	.uahalf	0xd22
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB67
	.uaword	.LFE67
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2afa
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xd22
	.uaword	0x269
	.uaword	.LLST317
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xd25
	.uaword	0x1c4
	.uaword	.LLST318
	.uleb128 0x15
	.uaword	0x58f
	.uaword	.LBB461
	.uaword	.LBE461
	.byte	0x1
	.uahalf	0xd2c
	.uleb128 0x13
	.uaword	0x5c8
	.uaword	.LLST319
	.uleb128 0x14
	.uaword	.LBB462
	.uaword	.LBE462
	.uleb128 0x16
	.uaword	0x5d4
	.uaword	.LLST320
	.uleb128 0x15
	.uaword	0x2248
	.uaword	.LBB463
	.uaword	.LBE463
	.byte	0x1
	.uahalf	0x853
	.uleb128 0x13
	.uaword	0x2280
	.uaword	.LLST321
	.uleb128 0x14
	.uaword	.LBB464
	.uaword	.LBE464
	.uleb128 0x16
	.uaword	0x228c
	.uaword	.LLST322
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB465
	.uaword	.LBE465
	.byte	0x1
	.uahalf	0x80d
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST323
	.uleb128 0x14
	.uaword	.LBB466
	.uaword	.LBE466
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST324
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB467
	.uaword	.LBE467
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST325
	.uleb128 0x14
	.uaword	.LBB468
	.uaword	.LBE468
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST326
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetLowestBitPosZero64"
	.byte	0x1
	.uahalf	0xd3b
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB68
	.uaword	.LFE68
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c06
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xd3b
	.uaword	0x269
	.uaword	.LLST327
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.uahalf	0xd3e
	.uaword	0x1c4
	.uaword	.LLST328
	.uleb128 0x15
	.uaword	0x58f
	.uaword	.LBB477
	.uaword	.LBE477
	.byte	0x1
	.uahalf	0xd45
	.uleb128 0x13
	.uaword	0x5c8
	.uaword	.LLST329
	.uleb128 0x14
	.uaword	.LBB478
	.uaword	.LBE478
	.uleb128 0x16
	.uaword	0x5d4
	.uaword	.LLST330
	.uleb128 0x15
	.uaword	0x2248
	.uaword	.LBB479
	.uaword	.LBE479
	.byte	0x1
	.uahalf	0x853
	.uleb128 0x13
	.uaword	0x2280
	.uaword	.LLST331
	.uleb128 0x14
	.uaword	.LBB480
	.uaword	.LBE480
	.uleb128 0x16
	.uaword	0x228c
	.uaword	.LLST332
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB481
	.uaword	.LBE481
	.byte	0x1
	.uahalf	0x80d
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST333
	.uleb128 0x14
	.uaword	.LBB482
	.uaword	.LBE482
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST334
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB483
	.uaword	.LBE483
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST335
	.uleb128 0x14
	.uaword	.LBB484
	.uaword	.LBE484
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST336
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountLeadingOnes64"
	.byte	0x1
	.uahalf	0xd54
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB69
	.uaword	.LFE69
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2d12
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xd54
	.uaword	0x269
	.uaword	.LLST337
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xd57
	.uaword	0x1c4
	.uaword	.LLST338
	.uleb128 0x15
	.uaword	0x53c
	.uaword	.LBB493
	.uaword	.LBE493
	.byte	0x1
	.uahalf	0xd5e
	.uleb128 0x13
	.uaword	0x576
	.uaword	.LLST339
	.uleb128 0x14
	.uaword	.LBB494
	.uaword	.LBE494
	.uleb128 0x16
	.uaword	0x582
	.uaword	.LLST340
	.uleb128 0x15
	.uaword	0x2037
	.uaword	.LBB495
	.uaword	.LBE495
	.byte	0x1
	.uahalf	0x82f
	.uleb128 0x13
	.uaword	0x2070
	.uaword	.LLST341
	.uleb128 0x14
	.uaword	.LBB496
	.uaword	.LBE496
	.uleb128 0x16
	.uaword	0x207c
	.uaword	.LLST342
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB497
	.uaword	.LBE497
	.byte	0x1
	.uahalf	0x7e9
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST343
	.uleb128 0x14
	.uaword	.LBB498
	.uaword	.LBE498
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST344
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB499
	.uaword	.LBE499
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST345
	.uleb128 0x14
	.uaword	.LBB500
	.uaword	.LBE500
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST346
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountLeadingZeros64"
	.byte	0x1
	.uahalf	0xd6d
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB70
	.uaword	.LFE70
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e1f
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xd6d
	.uaword	0x269
	.uaword	.LLST347
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xd70
	.uaword	0x1c4
	.uaword	.LLST348
	.uleb128 0x15
	.uaword	0x53c
	.uaword	.LBB509
	.uaword	.LBE509
	.byte	0x1
	.uahalf	0xd77
	.uleb128 0x13
	.uaword	0x576
	.uaword	.LLST349
	.uleb128 0x14
	.uaword	.LBB510
	.uaword	.LBE510
	.uleb128 0x16
	.uaword	0x582
	.uaword	.LLST350
	.uleb128 0x15
	.uaword	0x2037
	.uaword	.LBB511
	.uaword	.LBE511
	.byte	0x1
	.uahalf	0x82f
	.uleb128 0x13
	.uaword	0x2070
	.uaword	.LLST351
	.uleb128 0x14
	.uaword	.LBB512
	.uaword	.LBE512
	.uleb128 0x16
	.uaword	0x207c
	.uaword	.LLST352
	.uleb128 0x15
	.uaword	0x49b
	.uaword	.LBB513
	.uaword	.LBE513
	.byte	0x1
	.uahalf	0x7e9
	.uleb128 0x13
	.uaword	0x4d3
	.uaword	.LLST353
	.uleb128 0x14
	.uaword	.LBB514
	.uaword	.LBE514
	.uleb128 0x16
	.uaword	0x4df
	.uaword	.LLST354
	.uleb128 0x15
	.uaword	0x402
	.uaword	.LBB515
	.uaword	.LBE515
	.byte	0x1
	.uahalf	0x7a1
	.uleb128 0x13
	.uaword	0x436
	.uaword	.LLST355
	.uleb128 0x14
	.uaword	.LBB516
	.uaword	.LBE516
	.uleb128 0x16
	.uaword	0x442
	.uaword	.LLST356
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountTrailingOnes64"
	.byte	0x1
	.uahalf	0xd86
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB71
	.uaword	.LFE71
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f2c
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xd86
	.uaword	0x269
	.uaword	.LLST357
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xd89
	.uaword	0x1c4
	.uaword	.LLST358
	.uleb128 0x15
	.uaword	0x58f
	.uaword	.LBB525
	.uaword	.LBE525
	.byte	0x1
	.uahalf	0xd90
	.uleb128 0x13
	.uaword	0x5c8
	.uaword	.LLST359
	.uleb128 0x14
	.uaword	.LBB526
	.uaword	.LBE526
	.uleb128 0x16
	.uaword	0x5d4
	.uaword	.LLST360
	.uleb128 0x15
	.uaword	0x2248
	.uaword	.LBB527
	.uaword	.LBE527
	.byte	0x1
	.uahalf	0x853
	.uleb128 0x13
	.uaword	0x2280
	.uaword	.LLST361
	.uleb128 0x14
	.uaword	.LBB528
	.uaword	.LBE528
	.uleb128 0x16
	.uaword	0x228c
	.uaword	.LLST362
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB529
	.uaword	.LBE529
	.byte	0x1
	.uahalf	0x80d
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST363
	.uleb128 0x14
	.uaword	.LBB530
	.uaword	.LBE530
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST364
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB531
	.uaword	.LBE531
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST365
	.uleb128 0x14
	.uaword	.LBB532
	.uaword	.LBE532
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST366
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"VStdLib_GetCountTrailingZeros64"
	.byte	0x1
	.uahalf	0xd9f
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB72
	.uaword	.LFE72
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x303a
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0xd9f
	.uaword	0x269
	.uaword	.LLST367
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.uahalf	0xda2
	.uaword	0x1c4
	.uaword	.LLST368
	.uleb128 0x15
	.uaword	0x58f
	.uaword	.LBB541
	.uaword	.LBE541
	.byte	0x1
	.uahalf	0xda9
	.uleb128 0x13
	.uaword	0x5c8
	.uaword	.LLST369
	.uleb128 0x14
	.uaword	.LBB542
	.uaword	.LBE542
	.uleb128 0x16
	.uaword	0x5d4
	.uaword	.LLST370
	.uleb128 0x15
	.uaword	0x2248
	.uaword	.LBB543
	.uaword	.LBE543
	.byte	0x1
	.uahalf	0x853
	.uleb128 0x13
	.uaword	0x2280
	.uaword	.LLST371
	.uleb128 0x14
	.uaword	.LBB544
	.uaword	.LBE544
	.uleb128 0x16
	.uaword	0x228c
	.uaword	.LLST372
	.uleb128 0x15
	.uaword	0x4ec
	.uaword	.LBB545
	.uaword	.LBE545
	.byte	0x1
	.uahalf	0x80d
	.uleb128 0x13
	.uaword	0x523
	.uaword	.LLST373
	.uleb128 0x14
	.uaword	.LBB546
	.uaword	.LBE546
	.uleb128 0x16
	.uaword	0x52f
	.uaword	.LLST374
	.uleb128 0x15
	.uaword	0x44f
	.uaword	.LBB547
	.uaword	.LBE547
	.byte	0x1
	.uahalf	0x7c5
	.uleb128 0x13
	.uaword	0x482
	.uaword	.LLST375
	.uleb128 0x14
	.uaword	.LBB548
	.uaword	.LBE548
	.uleb128 0x16
	.uaword	0x48e
	.uaword	.LLST376
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x1c4
	.uaword	0x304a
	.uleb128 0x28
	.uaword	0x304a
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x29
	.string	"VStdLib_HighestBitPosOneInNibble"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x3085
	.byte	0x5
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.uleb128 0x5
	.uaword	0x303a
	.uleb128 0x29
	.string	"VStdLib_LowestBitPosOneInNibble"
	.byte	0x1
	.uahalf	0x158
	.uaword	0x30b8
	.byte	0x5
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.uleb128 0x5
	.uaword	0x303a
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL19
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL9
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x5
	.byte	0x73
	.sleb128 1
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL20
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL27
	.uaword	.LVL133
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL135
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL26
	.uaword	.LVL133
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL135
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL75
	.uaword	.LVL79
	.uahalf	0x3
	.byte	0x74
	.sleb128 20
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL91
	.uaword	.LVL95
	.uahalf	0x3
	.byte	0x74
	.sleb128 20
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL106
	.uaword	.LVL110
	.uahalf	0x3
	.byte	0x74
	.sleb128 20
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL20
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL48
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL20
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL48
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL24
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31
	.uaword	.LVL48
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL49
	.uaword	.LVL133
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL33
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL34
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL48
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL48
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL75
	.uaword	.LVL79
	.uahalf	0x3
	.byte	0x74
	.sleb128 20
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL91
	.uaword	.LVL95
	.uahalf	0x3
	.byte	0x74
	.sleb128 20
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL106
	.uaword	.LVL110
	.uahalf	0x3
	.byte	0x74
	.sleb128 20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL48
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL48
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL120
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL48
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL120
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL124
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL48
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL129
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL48
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL52
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL79
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL95
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL110
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL113
	.uaword	.LVL116
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL63
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL51
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL61
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL115
	.uaword	.LVL119
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL52
	.uaword	.LVL129
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+3277
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL52
	.uaword	.LVL129
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+3322
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL52
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL52
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL69
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL65
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL66
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0xa
	.byte	0x77
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL69
	.uaword	.LVL73
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL68
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL85
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL81
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL85
	.uaword	.LVL88
	.uahalf	0xa
	.byte	0x77
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL85
	.uaword	.LVL89
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL84
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL100
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL96
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL97
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL100
	.uaword	.LVL103
	.uahalf	0xa
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL98
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL100
	.uaword	.LVL104
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL99
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL111
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL112
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL115
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL114
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL120
	.uaword	.LVL129
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+3277
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL120
	.uaword	.LVL129
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+3322
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x5
	.byte	0x34
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL120
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL131
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL131
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL137
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL137
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL139
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL139
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL140
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL142-1
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL141
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL140
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL142-1
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL140
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL142-1
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL143
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL161
	.uaword	.LVL224
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL225
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL143
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL162
	.uaword	.LVL166
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL167
	.uaword	.LVL179
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL179
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL187
	.uaword	.LVL224
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL230
	.uaword	.LVL232
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL233
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL143
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL162
	.uaword	.LVL172
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL172
	.uaword	.LVL179
	.uahalf	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL179
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL187
	.uaword	.LVL191
	.uahalf	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL191
	.uaword	.LVL224
	.uahalf	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL230
	.uaword	.LVL232
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL234
	.uaword	.LVL239
	.uahalf	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL239
	.uaword	.LVL243
	.uahalf	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL144
	.uaword	.LVL216
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL216
	.uaword	.LVL224
	.uahalf	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LFE40
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL144
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL161
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL187
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL205
	.uaword	.LVL224
	.uahalf	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL226
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL238
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL150
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL147
	.uaword	.LVL149
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL153
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL172
	.uaword	.LVL179
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL179
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL187
	.uaword	.LVL224
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL237
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL237
	.uaword	.LVL243
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL154
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL172
	.uaword	.LVL179
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL179
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL187
	.uaword	.LVL224
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL237
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL237
	.uaword	.LVL243
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL154
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL162
	.uaword	.LVL166
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL167
	.uaword	.LVL179
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL179
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL187
	.uaword	.LVL224
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL230
	.uaword	.LVL232
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL233
	.uaword	.LVL243
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL154
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL161
	.uaword	.LVL224
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL225
	.uaword	.LVL243
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL159
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL154
	.uaword	.LVL243
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL156
	.uaword	.LVL158
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL161
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL224
	.uahalf	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL228
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL162
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL166
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL161
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL229
	.uaword	.LVL232
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL171
	.uaword	.LVL179
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL230
	.uaword	.LVL232
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL163
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL171
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL231
	.uaword	.LVL232
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL171
	.uaword	.LVL179
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL231
	.uaword	.LVL232
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL171
	.uaword	.LVL179
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL231
	.uaword	.LVL232
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL171
	.uaword	.LVL173
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL177
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL231
	.uaword	.LVL232
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL171
	.uaword	.LVL179
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL231
	.uaword	.LVL232
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL174
	.uaword	.LVL176
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL179
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL224
	.uahalf	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL179
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL187
	.uaword	.LVL191
	.uahalf	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL191
	.uaword	.LVL224
	.uahalf	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL234
	.uaword	.LVL239
	.uahalf	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL239
	.uaword	.LVL243
	.uahalf	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL179
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL187
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0xe
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL224
	.uahalf	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x33
	.byte	0x1a
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL238
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0xb
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0xe
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL179
	.uaword	.LVL216
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL216
	.uaword	.LVL224
	.uahalf	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL204
	.uaword	.LVL224
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL240
	.uaword	.LVL243
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL180
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL224
	.uahalf	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL180
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL187
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL205
	.uaword	.LVL224
	.uahalf	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL238
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL180
	.uaword	.LVL216
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL216
	.uaword	.LVL224
	.uahalf	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL185
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL180
	.uaword	.LVL224
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL243
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL182
	.uaword	.LVL184
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL187
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0x9
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL224
	.uahalf	0x19
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x33
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL233
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x9
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL187
	.uaword	.LVL191
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL191
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL199
	.uaword	.LVL201
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL201
	.uaword	.LVL202
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL202
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL233
	.uaword	.LVL239
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL187
	.uaword	.LVL191
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL191
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL199
	.uaword	.LVL201
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL201
	.uaword	.LVL202
	.uahalf	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL202
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL233
	.uaword	.LVL239
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL187
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL234
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL187
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL235
	.uaword	.LVL239
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL239
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL187
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL189
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL204
	.uaword	.LVL224
	.uahalf	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL236
	.uaword	.LVL239
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL240
	.uaword	.LVL243
	.uahalf	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL193
	.uaword	.LVL194
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL199
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL200
	.uaword	.LVL201
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL188
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL199
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL196
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL204
	.uaword	.LVL217
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL217
	.uaword	.LVL224
	.uahalf	0x10
	.byte	0x34
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x33
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0xe
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL224
	.uahalf	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x33
	.byte	0x1a
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0xe
	.byte	0x8f
	.sleb128 0
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL204
	.uaword	.LVL206
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL207
	.uaword	.LVL224
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL210
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL204
	.uaword	.LVL224
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL207
	.uaword	.LVL209
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL213
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL213
	.uaword	.LVL217
	.uahalf	0x21
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x1c
	.byte	0x33
	.byte	0x1a
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL217
	.uaword	.LVL224
	.uahalf	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL215
	.uaword	.LVL216
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL219
	.uaword	.LVL222
	.uahalf	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1f
	.byte	0x33
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL222
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL213
	.uaword	.LVL218
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL222
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL213
	.uaword	.LVL224
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL219
	.uaword	.LVL220
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL219
	.uaword	.LVL221
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL244
	.uaword	.LVL246
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL246
	.uaword	.LFE41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL244
	.uaword	.LVL249
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL249
	.uaword	.LFE41
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL245
	.uaword	.LVL249
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL245
	.uaword	.LVL246
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL250
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL251
	.uaword	.LFE42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL250
	.uaword	.LVL256
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL256
	.uaword	.LFE42
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL252
	.uaword	.LVL256
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL252
	.uaword	.LVL253
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL253
	.uaword	.LVL254
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL257
	.uaword	.LVL263
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL263
	.uaword	.LFE43
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL258
	.uaword	.LVL259
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL259
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL258
	.uaword	.LVL259
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL259
	.uaword	.LVL260
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL260
	.uaword	.LVL262
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL264
	.uaword	.LVL265
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL265
	.uaword	.LFE44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL264
	.uaword	.LVL271
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LFE44
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL266
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL267
	.uaword	.LVL269
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL266
	.uaword	.LVL267
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL267
	.uaword	.LVL268
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL268
	.uaword	.LVL270
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL272
	.uaword	.LVL273
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL273
	.uaword	.LFE45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL272
	.uaword	.LVL278
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL278
	.uaword	.LFE45
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL274
	.uaword	.LVL278
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL276
	.uaword	.LVL277
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL279
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL281
	.uaword	.LFE46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL279
	.uaword	.LVL284
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL284
	.uaword	.LFE46
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL280
	.uaword	.LVL284
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL280
	.uaword	.LVL281
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL281
	.uaword	.LVL282
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL282
	.uaword	.LVL283
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL285
	.uaword	.LVL286
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL286
	.uaword	.LFE47
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL285
	.uaword	.LVL292
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL292
	.uaword	.LFE47
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL287
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL288
	.uaword	.LVL290
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL287
	.uaword	.LVL288
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL289
	.uaword	.LVL291
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL293
	.uaword	.LVL299
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL299
	.uaword	.LFE48
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL294
	.uaword	.LVL295
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL295
	.uaword	.LVL297
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL294
	.uaword	.LVL295
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL296
	.uaword	.LVL298
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL300
	.uaword	.LVL302
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL302
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL300
	.uaword	.LVL308
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL308
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL301
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL301
	.uaword	.LVL302
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL302
	.uaword	.LVL303
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL303
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL304
	.uaword	.LVL308
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL304
	.uaword	.LVL305
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL305
	.uaword	.LVL306
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL306
	.uaword	.LVL308
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL309
	.uaword	.LVL310
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL310
	.uaword	.LFE50
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL309
	.uaword	.LVL318
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL318
	.uaword	.LFE50
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL311
	.uaword	.LVL314
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL311
	.uaword	.LVL312
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL312
	.uaword	.LVL313
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL313
	.uaword	.LVL317
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL314
	.uaword	.LVL318
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL314
	.uaword	.LVL315
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL315
	.uaword	.LVL316
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL316
	.uaword	.LVL318
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL319
	.uaword	.LVL325
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL325
	.uaword	.LFE51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL319
	.uaword	.LVL330
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL330
	.uaword	.LFE51
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL320
	.uaword	.LVL321
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL321
	.uaword	.LVL324
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL320
	.uaword	.LVL321
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL321
	.uaword	.LVL322
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL322
	.uaword	.LVL328
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL323
	.uaword	.LVL324
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL324
	.uaword	.LVL326
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL326
	.uaword	.LVL329
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL323
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL326
	.uaword	.LVL327
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL327
	.uaword	.LVL329
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL331
	.uaword	.LVL332
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL332
	.uaword	.LFE52
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL331
	.uaword	.LVL342
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL342
	.uaword	.LFE52
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL333
	.uaword	.LVL334
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL334
	.uaword	.LVL337
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL333
	.uaword	.LVL334
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL335
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL335
	.uaword	.LVL340
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL336
	.uaword	.LVL337
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL337
	.uaword	.LVL338
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL338
	.uaword	.LVL341
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL336
	.uaword	.LVL338
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL338
	.uaword	.LVL339
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL339
	.uaword	.LVL341
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL343
	.uaword	.LVL344
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL344
	.uaword	.LFE53
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL343
	.uaword	.LVL353
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL353
	.uaword	.LFE53
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL345
	.uaword	.LVL348
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST212:
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL347
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL347
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x14
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST213:
	.uaword	.LVL348
	.uaword	.LVL353
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST214:
	.uaword	.LVL348
	.uaword	.LVL349
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL349
	.uaword	.LVL350
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL350
	.uaword	.LVL352
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST215:
	.uaword	.LVL354
	.uaword	.LVL356
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL356
	.uaword	.LFE54
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST216:
	.uaword	.LVL354
	.uaword	.LVL363
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL363
	.uaword	.LFE54
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST217:
	.uaword	.LVL355
	.uaword	.LVL358
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST218:
	.uaword	.LVL355
	.uaword	.LVL356
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL356
	.uaword	.LVL357
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL357
	.uaword	.LVL360
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL360
	.uaword	.LVL361
	.uahalf	0x14
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST219:
	.uaword	.LVL358
	.uaword	.LVL363
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST220:
	.uaword	.LVL358
	.uaword	.LVL359
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL359
	.uaword	.LVL360
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL360
	.uaword	.LVL362
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST221:
	.uaword	.LVL364
	.uaword	.LVL365
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL365
	.uaword	.LFE55
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST222:
	.uaword	.LVL364
	.uaword	.LVL375
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL375
	.uaword	.LFE55
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST223:
	.uaword	.LVL366
	.uaword	.LVL367
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL367
	.uaword	.LVL370
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST224:
	.uaword	.LVL366
	.uaword	.LVL367
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL367
	.uaword	.LVL368
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL368
	.uaword	.LVL373
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST225:
	.uaword	.LVL369
	.uaword	.LVL370
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL370
	.uaword	.LVL371
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL371
	.uaword	.LVL374
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST226:
	.uaword	.LVL369
	.uaword	.LVL371
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL371
	.uaword	.LVL372
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL372
	.uaword	.LVL374
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST227:
	.uaword	.LVL376
	.uaword	.LVL382
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL382
	.uaword	.LFE56
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST228:
	.uaword	.LVL376
	.uaword	.LVL387
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL387
	.uaword	.LFE56
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST229:
	.uaword	.LVL377
	.uaword	.LVL378
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL378
	.uaword	.LVL381
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST230:
	.uaword	.LVL377
	.uaword	.LVL378
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL378
	.uaword	.LVL379
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL379
	.uaword	.LVL385
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST231:
	.uaword	.LVL380
	.uaword	.LVL381
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL381
	.uaword	.LVL383
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL383
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST232:
	.uaword	.LVL380
	.uaword	.LVL383
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL383
	.uaword	.LVL384
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL384
	.uaword	.LVL386
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST233:
	.uaword	.LVL388
	.uaword	.LVL390
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL390
	.uaword	.LFE57
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST234:
	.uaword	.LVL388
	.uaword	.LVL399
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL399
	.uaword	.LFE57
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST235:
	.uaword	.LVL389
	.uaword	.LVL392
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST236:
	.uaword	.LVL389
	.uaword	.LVL390
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL390
	.uaword	.LVL391
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL391
	.uaword	.LVL398
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST237:
	.uaword	.LVL392
	.uaword	.LVL395
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST238:
	.uaword	.LVL392
	.uaword	.LVL393
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL393
	.uaword	.LVL394
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL394
	.uaword	.LVL397
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL397
	.uaword	.LVL399
	.uahalf	0x14
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST239:
	.uaword	.LVL395
	.uaword	.LVL399
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST240:
	.uaword	.LVL395
	.uaword	.LVL396
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL396
	.uaword	.LVL397
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL397
	.uaword	.LVL399
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST241:
	.uaword	.LVL400
	.uaword	.LVL401
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL401
	.uaword	.LVL402
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL402
	.uaword	.LFE58
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST242:
	.uaword	.LVL400
	.uaword	.LVL411
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL411
	.uaword	.LFE58
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST243:
	.uaword	.LVL401
	.uaword	.LVL404
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST244:
	.uaword	.LVL401
	.uaword	.LVL402
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL402
	.uaword	.LVL403
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL403
	.uaword	.LVL410
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST245:
	.uaword	.LVL404
	.uaword	.LVL407
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST246:
	.uaword	.LVL404
	.uaword	.LVL405
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL405
	.uaword	.LVL406
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL406
	.uaword	.LVL409
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL409
	.uaword	.LVL411
	.uahalf	0x14
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST247:
	.uaword	.LVL407
	.uaword	.LVL411
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST248:
	.uaword	.LVL407
	.uaword	.LVL408
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL408
	.uaword	.LVL409
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL409
	.uaword	.LVL411
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST249:
	.uaword	.LVL412
	.uaword	.LVL420
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL420
	.uaword	.LFE59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST250:
	.uaword	.LVL412
	.uaword	.LVL425
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL425
	.uaword	.LFE59
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST251:
	.uaword	.LVL413
	.uaword	.LVL414
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL414
	.uaword	.LVL416
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST252:
	.uaword	.LVL413
	.uaword	.LVL414
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL414
	.uaword	.LVL415
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL415
	.uaword	.LVL423
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST253:
	.uaword	.LVL416
	.uaword	.LVL417
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL417
	.uaword	.LVL419
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST254:
	.uaword	.LVL416
	.uaword	.LVL417
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL417
	.uaword	.LVL418
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL418
	.uaword	.LVL422
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL422
	.uaword	.LVL424
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST255:
	.uaword	.LVL419
	.uaword	.LVL421
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL421
	.uaword	.LVL424
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST256:
	.uaword	.LVL419
	.uaword	.LVL421
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL421
	.uaword	.LVL422
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL422
	.uaword	.LVL424
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST257:
	.uaword	.LVL426
	.uaword	.LVL427
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL427
	.uaword	.LVL434
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL434
	.uaword	.LFE60
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST258:
	.uaword	.LVL426
	.uaword	.LVL439
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL439
	.uaword	.LFE60
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST259:
	.uaword	.LVL427
	.uaword	.LVL428
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL428
	.uaword	.LVL430
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST260:
	.uaword	.LVL427
	.uaword	.LVL428
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL428
	.uaword	.LVL429
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL429
	.uaword	.LVL437
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST261:
	.uaword	.LVL430
	.uaword	.LVL431
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL431
	.uaword	.LVL433
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST262:
	.uaword	.LVL430
	.uaword	.LVL431
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL431
	.uaword	.LVL432
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL432
	.uaword	.LVL436
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL436
	.uaword	.LVL438
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST263:
	.uaword	.LVL433
	.uaword	.LVL435
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL435
	.uaword	.LVL438
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST264:
	.uaword	.LVL433
	.uaword	.LVL435
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL435
	.uaword	.LVL436
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL436
	.uaword	.LVL438
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST265:
	.uaword	.LVL440
	.uaword	.LVL441
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL441
	.uaword	.LVL442
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL442
	.uaword	.LFE61
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST266:
	.uaword	.LVL440
	.uaword	.LVL452
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL452
	.uaword	.LFE61
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST267:
	.uaword	.LVL441
	.uaword	.LVL444
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST268:
	.uaword	.LVL441
	.uaword	.LVL442
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL442
	.uaword	.LVL443
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL443
	.uaword	.LVL449
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL449
	.uaword	.LVL450
	.uahalf	0x17
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST269:
	.uaword	.LVL444
	.uaword	.LVL447
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST270:
	.uaword	.LVL444
	.uaword	.LVL445
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL445
	.uaword	.LVL446
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL446
	.uaword	.LVL449
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL449
	.uaword	.LVL451
	.uahalf	0x14
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST271:
	.uaword	.LVL447
	.uaword	.LVL452
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST272:
	.uaword	.LVL447
	.uaword	.LVL448
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL448
	.uaword	.LVL449
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL449
	.uaword	.LVL451
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST273:
	.uaword	.LVL453
	.uaword	.LVL455
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL455
	.uaword	.LFE62
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST274:
	.uaword	.LVL453
	.uaword	.LVL465
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL465
	.uaword	.LFE62
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST275:
	.uaword	.LVL454
	.uaword	.LVL457
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST276:
	.uaword	.LVL454
	.uaword	.LVL455
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL455
	.uaword	.LVL456
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL456
	.uaword	.LVL462
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL462
	.uaword	.LVL463
	.uahalf	0x17
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST277:
	.uaword	.LVL457
	.uaword	.LVL460
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST278:
	.uaword	.LVL457
	.uaword	.LVL458
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL458
	.uaword	.LVL459
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL459
	.uaword	.LVL462
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL462
	.uaword	.LVL464
	.uahalf	0x14
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST279:
	.uaword	.LVL460
	.uaword	.LVL465
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST280:
	.uaword	.LVL460
	.uaword	.LVL461
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL461
	.uaword	.LVL462
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL462
	.uaword	.LVL464
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST281:
	.uaword	.LVL466
	.uaword	.LVL467
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL467
	.uaword	.LVL474
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL474
	.uaword	.LFE63
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST282:
	.uaword	.LVL466
	.uaword	.LVL479
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL479
	.uaword	.LFE63
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST283:
	.uaword	.LVL467
	.uaword	.LVL468
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL468
	.uaword	.LVL470
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST284:
	.uaword	.LVL467
	.uaword	.LVL468
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL468
	.uaword	.LVL469
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL469
	.uaword	.LVL477
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST285:
	.uaword	.LVL470
	.uaword	.LVL471
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL471
	.uaword	.LVL473
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST286:
	.uaword	.LVL470
	.uaword	.LVL471
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL471
	.uaword	.LVL472
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL472
	.uaword	.LVL476
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL476
	.uaword	.LVL478
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST287:
	.uaword	.LVL473
	.uaword	.LVL475
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL475
	.uaword	.LVL478
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST288:
	.uaword	.LVL473
	.uaword	.LVL475
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL475
	.uaword	.LVL476
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL476
	.uaword	.LVL478
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST289:
	.uaword	.LVL480
	.uaword	.LVL488
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL488
	.uaword	.LFE64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST290:
	.uaword	.LVL480
	.uaword	.LVL493
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL493
	.uaword	.LFE64
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST291:
	.uaword	.LVL481
	.uaword	.LVL482
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL482
	.uaword	.LVL484
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST292:
	.uaword	.LVL481
	.uaword	.LVL482
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL482
	.uaword	.LVL483
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL483
	.uaword	.LVL491
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST293:
	.uaword	.LVL484
	.uaword	.LVL485
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL485
	.uaword	.LVL487
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST294:
	.uaword	.LVL484
	.uaword	.LVL485
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL485
	.uaword	.LVL486
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL486
	.uaword	.LVL490
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL490
	.uaword	.LVL492
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST295:
	.uaword	.LVL487
	.uaword	.LVL489
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL489
	.uaword	.LVL492
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST296:
	.uaword	.LVL487
	.uaword	.LVL489
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL489
	.uaword	.LVL490
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL490
	.uaword	.LVL492
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST297:
	.uaword	.LVL494
	.uaword	.LVL496
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL496
	.uaword	.LFE65
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x17d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST298:
	.uaword	.LVL494
	.uaword	.LVL509
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL509
	.uaword	.LFE65
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST299:
	.uaword	.LVL495
	.uaword	.LVL496
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL496
	.uaword	.LVL497
	.uahalf	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST300:
	.uaword	.LVL495
	.uaword	.LVL496
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL496
	.uaword	.LVL497
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL497
	.uaword	.LVL507
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST301:
	.uaword	.LVL498
	.uaword	.LVL499
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL499
	.uaword	.LVL501
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST302:
	.uaword	.LVL498
	.uaword	.LVL499
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL499
	.uaword	.LVL500
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL500
	.uaword	.LVL506
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL506
	.uaword	.LVL508
	.uahalf	0x17
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST303:
	.uaword	.LVL501
	.uaword	.LVL504
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST304:
	.uaword	.LVL501
	.uaword	.LVL502
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL502
	.uaword	.LVL503
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL503
	.uaword	.LVL506
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL506
	.uaword	.LVL508
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST305:
	.uaword	.LVL504
	.uaword	.LVL508
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST306:
	.uaword	.LVL504
	.uaword	.LVL505
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL505
	.uaword	.LVL506
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL506
	.uaword	.LVL508
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST307:
	.uaword	.LVL510
	.uaword	.LVL521
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL521
	.uaword	.LFE66
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x17d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST308:
	.uaword	.LVL510
	.uaword	.LVL525
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL525
	.uaword	.LFE66
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST309:
	.uaword	.LVL511
	.uaword	.LVL512
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL512
	.uaword	.LVL513
	.uahalf	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST310:
	.uaword	.LVL511
	.uaword	.LVL512
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL512
	.uaword	.LVL513
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL513
	.uaword	.LVL525
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST311:
	.uaword	.LVL514
	.uaword	.LVL515
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL515
	.uaword	.LVL517
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST312:
	.uaword	.LVL514
	.uaword	.LVL515
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL515
	.uaword	.LVL516
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL516
	.uaword	.LVL523
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL523
	.uaword	.LVL524
	.uahalf	0x17
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST313:
	.uaword	.LVL517
	.uaword	.LVL520
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST314:
	.uaword	.LVL517
	.uaword	.LVL518
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL518
	.uaword	.LVL519
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL519
	.uaword	.LVL523
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL523
	.uaword	.LVL524
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST315:
	.uaword	.LVL520
	.uaword	.LVL524
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST316:
	.uaword	.LVL520
	.uaword	.LVL522
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL522
	.uaword	.LVL523
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL523
	.uaword	.LVL524
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST317:
	.uaword	.LVL526
	.uaword	.LVL536
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL536
	.uaword	.LFE67
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x17d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST318:
	.uaword	.LVL526
	.uaword	.LVL540
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL540
	.uaword	.LFE67
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST319:
	.uaword	.LVL527
	.uaword	.LVL528
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST320:
	.uaword	.LVL527
	.uaword	.LVL528
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL528
	.uaword	.LVL529
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL529
	.uaword	.LVL540
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST321:
	.uaword	.LVL529
	.uaword	.LVL530
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL530
	.uaword	.LVL532
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST322:
	.uaword	.LVL529
	.uaword	.LVL530
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL530
	.uaword	.LVL531
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL531
	.uaword	.LVL538
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL538
	.uaword	.LVL539
	.uahalf	0x17
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST323:
	.uaword	.LVL532
	.uaword	.LVL533
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL533
	.uaword	.LVL535
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST324:
	.uaword	.LVL532
	.uaword	.LVL533
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL533
	.uaword	.LVL534
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL534
	.uaword	.LVL538
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL538
	.uaword	.LVL539
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST325:
	.uaword	.LVL535
	.uaword	.LVL537
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL537
	.uaword	.LVL539
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST326:
	.uaword	.LVL535
	.uaword	.LVL537
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL537
	.uaword	.LVL538
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL538
	.uaword	.LVL539
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST327:
	.uaword	.LVL541
	.uaword	.LVL551
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL551
	.uaword	.LFE68
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x17d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST328:
	.uaword	.LVL541
	.uaword	.LVL555
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL555
	.uaword	.LFE68
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST329:
	.uaword	.LVL542
	.uaword	.LVL543
	.uahalf	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST330:
	.uaword	.LVL542
	.uaword	.LVL543
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL543
	.uaword	.LVL544
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL544
	.uaword	.LVL555
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST331:
	.uaword	.LVL544
	.uaword	.LVL545
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL545
	.uaword	.LVL547
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST332:
	.uaword	.LVL544
	.uaword	.LVL545
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL545
	.uaword	.LVL546
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL546
	.uaword	.LVL553
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL553
	.uaword	.LVL554
	.uahalf	0x17
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST333:
	.uaword	.LVL547
	.uaword	.LVL548
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL548
	.uaword	.LVL550
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST334:
	.uaword	.LVL547
	.uaword	.LVL548
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL548
	.uaword	.LVL549
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL549
	.uaword	.LVL553
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL553
	.uaword	.LVL554
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST335:
	.uaword	.LVL550
	.uaword	.LVL552
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL552
	.uaword	.LVL554
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST336:
	.uaword	.LVL550
	.uaword	.LVL552
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL552
	.uaword	.LVL553
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL553
	.uaword	.LVL554
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST337:
	.uaword	.LVL556
	.uaword	.LVL567
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL567
	.uaword	.LFE69
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x17d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST338:
	.uaword	.LVL556
	.uaword	.LVL574
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL574
	.uaword	.LFE69
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST339:
	.uaword	.LVL557
	.uaword	.LVL558
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL558
	.uaword	.LVL559
	.uahalf	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST340:
	.uaword	.LVL557
	.uaword	.LVL558
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL558
	.uaword	.LVL559
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL559
	.uaword	.LVL569
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL569
	.uaword	.LVL570
	.uahalf	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST341:
	.uaword	.LVL560
	.uaword	.LVL561
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL561
	.uaword	.LVL563
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST342:
	.uaword	.LVL560
	.uaword	.LVL561
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL561
	.uaword	.LVL562
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL562
	.uaword	.LVL569
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL569
	.uaword	.LVL571
	.uahalf	0x17
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST343:
	.uaword	.LVL563
	.uaword	.LVL566
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST344:
	.uaword	.LVL563
	.uaword	.LVL564
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL564
	.uaword	.LVL565
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL565
	.uaword	.LVL569
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL569
	.uaword	.LVL571
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST345:
	.uaword	.LVL566
	.uaword	.LVL573
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST346:
	.uaword	.LVL566
	.uaword	.LVL568
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL568
	.uaword	.LVL569
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL569
	.uaword	.LVL572
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST347:
	.uaword	.LVL575
	.uaword	.LVL577
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL577
	.uaword	.LFE70
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x17d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST348:
	.uaword	.LVL575
	.uaword	.LVL592
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL592
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST349:
	.uaword	.LVL576
	.uaword	.LVL577
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL577
	.uaword	.LVL578
	.uahalf	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST350:
	.uaword	.LVL576
	.uaword	.LVL577
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL577
	.uaword	.LVL578
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL578
	.uaword	.LVL587
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL587
	.uaword	.LVL588
	.uahalf	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST351:
	.uaword	.LVL579
	.uaword	.LVL580
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL580
	.uaword	.LVL582
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST352:
	.uaword	.LVL579
	.uaword	.LVL580
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL580
	.uaword	.LVL581
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL581
	.uaword	.LVL587
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL587
	.uaword	.LVL589
	.uahalf	0x17
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST353:
	.uaword	.LVL582
	.uaword	.LVL585
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST354:
	.uaword	.LVL582
	.uaword	.LVL583
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL583
	.uaword	.LVL584
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL584
	.uaword	.LVL587
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL587
	.uaword	.LVL589
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST355:
	.uaword	.LVL585
	.uaword	.LVL591
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST356:
	.uaword	.LVL585
	.uaword	.LVL586
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL586
	.uaword	.LVL587
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL587
	.uaword	.LVL590
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_HighestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST357:
	.uaword	.LVL593
	.uaword	.LVL603
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL603
	.uaword	.LFE71
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x17d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST358:
	.uaword	.LVL593
	.uaword	.LVL607
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL607
	.uaword	.LFE71
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST359:
	.uaword	.LVL594
	.uaword	.LVL595
	.uahalf	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST360:
	.uaword	.LVL594
	.uaword	.LVL595
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL595
	.uaword	.LVL596
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL596
	.uaword	.LVL607
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST361:
	.uaword	.LVL596
	.uaword	.LVL597
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL597
	.uaword	.LVL599
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST362:
	.uaword	.LVL596
	.uaword	.LVL597
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL597
	.uaword	.LVL598
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL598
	.uaword	.LVL605
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL605
	.uaword	.LVL606
	.uahalf	0x17
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST363:
	.uaword	.LVL599
	.uaword	.LVL600
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL600
	.uaword	.LVL602
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST364:
	.uaword	.LVL599
	.uaword	.LVL600
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL600
	.uaword	.LVL601
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL601
	.uaword	.LVL605
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL605
	.uaword	.LVL606
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST365:
	.uaword	.LVL602
	.uaword	.LVL604
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL604
	.uaword	.LVL606
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST366:
	.uaword	.LVL602
	.uaword	.LVL604
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL604
	.uaword	.LVL605
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL605
	.uaword	.LVL606
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST367:
	.uaword	.LVL608
	.uaword	.LVL618
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL618
	.uaword	.LFE72
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x17d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST368:
	.uaword	.LVL608
	.uaword	.LVL622
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL622
	.uaword	.LFE72
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST369:
	.uaword	.LVL609
	.uaword	.LVL610
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST370:
	.uaword	.LVL609
	.uaword	.LVL610
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL610
	.uaword	.LVL611
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL611
	.uaword	.LVL622
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST371:
	.uaword	.LVL611
	.uaword	.LVL612
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL612
	.uaword	.LVL614
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST372:
	.uaword	.LVL611
	.uaword	.LVL612
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL612
	.uaword	.LVL613
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL613
	.uaword	.LVL620
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL620
	.uaword	.LVL621
	.uahalf	0x17
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST373:
	.uaword	.LVL614
	.uaword	.LVL615
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL615
	.uaword	.LVL617
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST374:
	.uaword	.LVL614
	.uaword	.LVL615
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL615
	.uaword	.LVL616
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL616
	.uaword	.LVL620
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL620
	.uaword	.LVL621
	.uahalf	0x14
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST375:
	.uaword	.LVL617
	.uaword	.LVL619
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL619
	.uaword	.LVL621
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST376:
	.uaword	.LVL617
	.uaword	.LVL619
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL619
	.uaword	.LVL620
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL620
	.uaword	.LVL621
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	VStdLib_LowestBitPosOneInNibble
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x144
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.uaword	.LFB55
	.uaword	.LFE55-.LFB55
	.uaword	.LFB56
	.uaword	.LFE56-.LFB56
	.uaword	.LFB57
	.uaword	.LFE57-.LFB57
	.uaword	.LFB58
	.uaword	.LFE58-.LFB58
	.uaword	.LFB59
	.uaword	.LFE59-.LFB59
	.uaword	.LFB60
	.uaword	.LFE60-.LFB60
	.uaword	.LFB61
	.uaword	.LFE61-.LFB61
	.uaword	.LFB62
	.uaword	.LFE62-.LFB62
	.uaword	.LFB63
	.uaword	.LFE63-.LFB63
	.uaword	.LFB64
	.uaword	.LFE64-.LFB64
	.uaword	.LFB65
	.uaword	.LFE65-.LFB65
	.uaword	.LFB66
	.uaword	.LFE66-.LFB66
	.uaword	.LFB67
	.uaword	.LFE67-.LFB67
	.uaword	.LFB68
	.uaword	.LFE68-.LFB68
	.uaword	.LFB69
	.uaword	.LFE69-.LFB69
	.uaword	.LFB70
	.uaword	.LFE70-.LFB70
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB174
	.uaword	.LBE174
	.uaword	.LBB192
	.uaword	.LBE192
	.uaword	.LBB193
	.uaword	.LBE193
	.uaword	0
	.uaword	0
	.uaword	.LBB175
	.uaword	.LBE175
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	0
	.uaword	0
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	.LBB190
	.uaword	.LBE190
	.uaword	.LBB191
	.uaword	.LBE191
	.uaword	0
	.uaword	0
	.uaword	.LBB242
	.uaword	.LBE242
	.uaword	.LBB275
	.uaword	.LBE275
	.uaword	0
	.uaword	0
	.uaword	.LBB246
	.uaword	.LBE246
	.uaword	.LBB251
	.uaword	.LBE251
	.uaword	0
	.uaword	0
	.uaword	.LBB253
	.uaword	.LBE253
	.uaword	.LBB276
	.uaword	.LBE276
	.uaword	0
	.uaword	0
	.uaword	.LBB259
	.uaword	.LBE259
	.uaword	.LBB273
	.uaword	.LBE273
	.uaword	0
	.uaword	0
	.uaword	.LBB263
	.uaword	.LBE263
	.uaword	.LBB272
	.uaword	.LBE272
	.uaword	0
	.uaword	0
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	.LFB40
	.uaword	.LFE40
	.uaword	.LFB41
	.uaword	.LFE41
	.uaword	.LFB42
	.uaword	.LFE42
	.uaword	.LFB43
	.uaword	.LFE43
	.uaword	.LFB44
	.uaword	.LFE44
	.uaword	.LFB45
	.uaword	.LFE45
	.uaword	.LFB46
	.uaword	.LFE46
	.uaword	.LFB47
	.uaword	.LFE47
	.uaword	.LFB48
	.uaword	.LFE48
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LFB50
	.uaword	.LFE50
	.uaword	.LFB51
	.uaword	.LFE51
	.uaword	.LFB52
	.uaword	.LFE52
	.uaword	.LFB53
	.uaword	.LFE53
	.uaword	.LFB54
	.uaword	.LFE54
	.uaword	.LFB55
	.uaword	.LFE55
	.uaword	.LFB56
	.uaword	.LFE56
	.uaword	.LFB57
	.uaword	.LFE57
	.uaword	.LFB58
	.uaword	.LFE58
	.uaword	.LFB59
	.uaword	.LFE59
	.uaword	.LFB60
	.uaword	.LFE60
	.uaword	.LFB61
	.uaword	.LFE61
	.uaword	.LFB62
	.uaword	.LFE62
	.uaword	.LFB63
	.uaword	.LFE63
	.uaword	.LFB64
	.uaword	.LFE64
	.uaword	.LFB65
	.uaword	.LFE65
	.uaword	.LFB66
	.uaword	.LFE66
	.uaword	.LFB67
	.uaword	.LFE67
	.uaword	.LFB68
	.uaword	.LFE68
	.uaword	.LFB69
	.uaword	.LFE69
	.uaword	.LFB70
	.uaword	.LFE70
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	.LFB72
	.uaword	.LFE72
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF6:
	.string	"pDst32"
.LASF11:
	.string	"pBuf1_32"
.LASF8:
	.string	"errorId"
.LASF4:
	.string	"result"
.LASF3:
	.string	"pBuf2_8"
.LASF1:
	.string	"nPattern"
.LASF9:
	.string	"nDstOffset"
.LASF12:
	.string	"pBuf2_32"
.LASF5:
	.string	"value"
.LASF13:
	.string	"nBuf2Offset"
.LASF0:
	.string	"pDst8"
.LASF10:
	.string	"prevShift"
.LASF2:
	.string	"nCnt"
.LASF7:
	.string	"remaining"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
