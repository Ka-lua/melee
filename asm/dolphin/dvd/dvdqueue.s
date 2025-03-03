.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global __DVDClearWaitingQueue
__DVDClearWaitingQueue:
/* 8033A150 00336D30  3C 60 80 4A */	lis r3, lbl_804A7638@ha
/* 8033A154 00336D34  38 63 76 38 */	addi r3, r3, lbl_804A7638@l
/* 8033A158 00336D38  90 63 00 00 */	stw r3, 0(r3)
/* 8033A15C 00336D3C  38 A3 00 08 */	addi r5, r3, 8
/* 8033A160 00336D40  38 83 00 10 */	addi r4, r3, 0x10
/* 8033A164 00336D44  90 63 00 04 */	stw r3, 4(r3)
/* 8033A168 00336D48  38 63 00 18 */	addi r3, r3, 0x18
/* 8033A16C 00336D4C  90 A5 00 00 */	stw r5, 0(r5)
/* 8033A170 00336D50  90 A5 00 04 */	stw r5, 4(r5)
/* 8033A174 00336D54  90 84 00 00 */	stw r4, 0(r4)
/* 8033A178 00336D58  90 84 00 04 */	stw r4, 4(r4)
/* 8033A17C 00336D5C  90 63 00 00 */	stw r3, 0(r3)
/* 8033A180 00336D60  90 63 00 04 */	stw r3, 4(r3)
/* 8033A184 00336D64  4E 80 00 20 */	blr 

.global func_8033A188
func_8033A188:
/* 8033A188 00336D68  7C 08 02 A6 */	mflr r0
/* 8033A18C 00336D6C  90 01 00 04 */	stw r0, 4(r1)
/* 8033A190 00336D70  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8033A194 00336D74  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8033A198 00336D78  3B E4 00 00 */	addi r31, r4, 0
/* 8033A19C 00336D7C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8033A1A0 00336D80  3B C3 00 00 */	addi r30, r3, 0
/* 8033A1A4 00336D84  48 00 D1 C1 */	bl OSDisableInterrupts
/* 8033A1A8 00336D88  3C 80 80 4A */	lis r4, lbl_804A7638@ha
/* 8033A1AC 00336D8C  57 C5 18 38 */	slwi r5, r30, 3
/* 8033A1B0 00336D90  38 04 76 38 */	addi r0, r4, lbl_804A7638@l
/* 8033A1B4 00336D94  7C A0 2A 14 */	add r5, r0, r5
/* 8033A1B8 00336D98  80 85 00 04 */	lwz r4, 4(r5)
/* 8033A1BC 00336D9C  93 E4 00 00 */	stw r31, 0(r4)
/* 8033A1C0 00336DA0  80 05 00 04 */	lwz r0, 4(r5)
/* 8033A1C4 00336DA4  90 1F 00 04 */	stw r0, 4(r31)
/* 8033A1C8 00336DA8  90 BF 00 00 */	stw r5, 0(r31)
/* 8033A1CC 00336DAC  93 E5 00 04 */	stw r31, 4(r5)
/* 8033A1D0 00336DB0  48 00 D1 BD */	bl OSRestoreInterrupts
/* 8033A1D4 00336DB4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8033A1D8 00336DB8  38 60 00 01 */	li r3, 1
/* 8033A1DC 00336DBC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8033A1E0 00336DC0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8033A1E4 00336DC4  7C 08 03 A6 */	mtlr r0
/* 8033A1E8 00336DC8  38 21 00 18 */	addi r1, r1, 0x18
/* 8033A1EC 00336DCC  4E 80 00 20 */	blr 

.global func_8033A1F0
func_8033A1F0:
/* 8033A1F0 00336DD0  7C 08 02 A6 */	mflr r0
/* 8033A1F4 00336DD4  90 01 00 04 */	stw r0, 4(r1)
/* 8033A1F8 00336DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033A1FC 00336DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033A200 00336DE0  48 00 D1 65 */	bl OSDisableInterrupts
/* 8033A204 00336DE4  38 00 00 04 */	li r0, 4
/* 8033A208 00336DE8  3C 80 80 4A */	lis r4, lbl_804A7638@ha
/* 8033A20C 00336DEC  7C 09 03 A6 */	mtctr r0
/* 8033A210 00336DF0  38 84 76 38 */	addi r4, r4, lbl_804A7638@l
/* 8033A214 00336DF4  3B E0 00 00 */	li r31, 0
lbl_8033A218:
/* 8033A218 00336DF8  80 04 00 00 */	lwz r0, 0(r4)
/* 8033A21C 00336DFC  7C 00 20 40 */	cmplw r0, r4
/* 8033A220 00336E00  41 82 00 48 */	beq lbl_8033A268
/* 8033A224 00336E04  48 00 D1 69 */	bl OSRestoreInterrupts
/* 8033A228 00336E08  48 00 D1 3D */	bl OSDisableInterrupts
/* 8033A22C 00336E0C  3C 80 80 4A */	lis r4, lbl_804A7638@ha
/* 8033A230 00336E10  57 E5 18 38 */	slwi r5, r31, 3
/* 8033A234 00336E14  38 04 76 38 */	addi r0, r4, lbl_804A7638@l
/* 8033A238 00336E18  7C A0 2A 14 */	add r5, r0, r5
/* 8033A23C 00336E1C  83 E5 00 00 */	lwz r31, 0(r5)
/* 8033A240 00336E20  80 1F 00 00 */	lwz r0, 0(r31)
/* 8033A244 00336E24  90 05 00 00 */	stw r0, 0(r5)
/* 8033A248 00336E28  80 9F 00 00 */	lwz r4, 0(r31)
/* 8033A24C 00336E2C  90 A4 00 04 */	stw r5, 4(r4)
/* 8033A250 00336E30  48 00 D1 3D */	bl OSRestoreInterrupts
/* 8033A254 00336E34  38 00 00 00 */	li r0, 0
/* 8033A258 00336E38  90 1F 00 00 */	stw r0, 0(r31)
/* 8033A25C 00336E3C  7F E3 FB 78 */	mr r3, r31
/* 8033A260 00336E40  90 1F 00 04 */	stw r0, 4(r31)
/* 8033A264 00336E44  48 00 00 18 */	b lbl_8033A27C
lbl_8033A268:
/* 8033A268 00336E48  38 84 00 08 */	addi r4, r4, 8
/* 8033A26C 00336E4C  3B FF 00 01 */	addi r31, r31, 1
/* 8033A270 00336E50  42 00 FF A8 */	bdnz lbl_8033A218
/* 8033A274 00336E54  48 00 D1 19 */	bl OSRestoreInterrupts
/* 8033A278 00336E58  38 60 00 00 */	li r3, 0
lbl_8033A27C:
/* 8033A27C 00336E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033A280 00336E60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033A284 00336E64  38 21 00 10 */	addi r1, r1, 0x10
/* 8033A288 00336E68  7C 08 03 A6 */	mtlr r0
/* 8033A28C 00336E6C  4E 80 00 20 */	blr 

.global func_8033A290
func_8033A290:
/* 8033A290 00336E70  7C 08 02 A6 */	mflr r0
/* 8033A294 00336E74  90 01 00 04 */	stw r0, 4(r1)
/* 8033A298 00336E78  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033A29C 00336E7C  48 00 D0 C9 */	bl OSDisableInterrupts
/* 8033A2A0 00336E80  38 00 00 04 */	li r0, 4
/* 8033A2A4 00336E84  3C 80 80 4A */	lis r4, lbl_804A7638@ha
/* 8033A2A8 00336E88  7C 09 03 A6 */	mtctr r0
/* 8033A2AC 00336E8C  38 84 76 38 */	addi r4, r4, lbl_804A7638@l
lbl_8033A2B0:
/* 8033A2B0 00336E90  80 04 00 00 */	lwz r0, 0(r4)
/* 8033A2B4 00336E94  7C 00 20 40 */	cmplw r0, r4
/* 8033A2B8 00336E98  41 82 00 10 */	beq lbl_8033A2C8
/* 8033A2BC 00336E9C  48 00 D0 D1 */	bl OSRestoreInterrupts
/* 8033A2C0 00336EA0  38 60 00 01 */	li r3, 1
/* 8033A2C4 00336EA4  48 00 00 14 */	b lbl_8033A2D8
lbl_8033A2C8:
/* 8033A2C8 00336EA8  38 84 00 08 */	addi r4, r4, 8
/* 8033A2CC 00336EAC  42 00 FF E4 */	bdnz lbl_8033A2B0
/* 8033A2D0 00336EB0  48 00 D0 BD */	bl OSRestoreInterrupts
/* 8033A2D4 00336EB4  38 60 00 00 */	li r3, 0
lbl_8033A2D8:
/* 8033A2D8 00336EB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033A2DC 00336EBC  38 21 00 08 */	addi r1, r1, 8
/* 8033A2E0 00336EC0  7C 08 03 A6 */	mtlr r0
/* 8033A2E4 00336EC4  4E 80 00 20 */	blr 

.global func_8033A2E8
func_8033A2E8:
/* 8033A2E8 00336EC8  7C 08 02 A6 */	mflr r0
/* 8033A2EC 00336ECC  90 01 00 04 */	stw r0, 4(r1)
/* 8033A2F0 00336ED0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8033A2F4 00336ED4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8033A2F8 00336ED8  7C 7F 1B 78 */	mr r31, r3
/* 8033A2FC 00336EDC  48 00 D0 69 */	bl OSDisableInterrupts
/* 8033A300 00336EE0  80 9F 00 04 */	lwz r4, 4(r31)
/* 8033A304 00336EE4  80 BF 00 00 */	lwz r5, 0(r31)
/* 8033A308 00336EE8  28 04 00 00 */	cmplwi r4, 0
/* 8033A30C 00336EEC  41 82 00 0C */	beq lbl_8033A318
/* 8033A310 00336EF0  28 05 00 00 */	cmplwi r5, 0
/* 8033A314 00336EF4  40 82 00 10 */	bne lbl_8033A324
lbl_8033A318:
/* 8033A318 00336EF8  48 00 D0 75 */	bl OSRestoreInterrupts
/* 8033A31C 00336EFC  38 60 00 00 */	li r3, 0
/* 8033A320 00336F00  48 00 00 14 */	b lbl_8033A334
lbl_8033A324:
/* 8033A324 00336F04  90 A4 00 00 */	stw r5, 0(r4)
/* 8033A328 00336F08  90 85 00 04 */	stw r4, 4(r5)
/* 8033A32C 00336F0C  48 00 D0 61 */	bl OSRestoreInterrupts
/* 8033A330 00336F10  38 60 00 01 */	li r3, 1
lbl_8033A334:
/* 8033A334 00336F14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8033A338 00336F18  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8033A33C 00336F1C  38 21 00 18 */	addi r1, r1, 0x18
/* 8033A340 00336F20  7C 08 03 A6 */	mtlr r0
/* 8033A344 00336F24  4E 80 00 20 */	blr 


.section .bss, "wa"

.global lbl_804A7638
lbl_804A7638:
	.skip 0x20
