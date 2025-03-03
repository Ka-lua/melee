.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_80223B48
func_80223B48:
/* 80223B48 00220728  4E 80 00 20 */	blr 
.global lbl_80223B4C
lbl_80223B4C:
/* 80223B4C 0022072C  7C 08 02 A6 */	mflr r0
/* 80223B50 00220730  3C 60 80 4A */	lis r3, stage_info@ha
/* 80223B54 00220734  90 01 00 04 */	stw r0, 4(r1)
/* 80223B58 00220738  38 63 E6 C8 */	addi r3, r3, stage_info@l
/* 80223B5C 0022073C  38 A3 00 8C */	addi r5, r3, 0x8c
/* 80223B60 00220740  94 21 FF F8 */	stwu r1, -8(r1)
/* 80223B64 00220744  38 80 00 01 */	li r4, 1
/* 80223B68 00220748  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 80223B6C 0022074C  38 60 00 00 */	li r3, 0
/* 80223B70 00220750  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80223B74 00220754  98 05 00 00 */	stb r0, 0(r5)
/* 80223B78 00220758  38 60 00 00 */	li r3, 0
/* 80223B7C 0022075C  88 05 00 00 */	lbz r0, 0(r5)
/* 80223B80 00220760  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80223B84 00220764  98 05 00 00 */	stb r0, 0(r5)
/* 80223B88 00220768  48 00 00 65 */	bl func_80223BEC
/* 80223B8C 0022076C  38 60 00 01 */	li r3, 1
/* 80223B90 00220770  48 00 00 5D */	bl func_80223BEC
/* 80223B94 00220774  38 60 00 02 */	li r3, 2
/* 80223B98 00220778  48 00 00 55 */	bl func_80223BEC
/* 80223B9C 0022077C  4B F9 FE 25 */	bl func_801C39C0
/* 80223BA0 00220780  4B FA 00 15 */	bl func_801C3BB4
/* 80223BA4 00220784  4B FA 06 6D */	bl func_801C4210
/* 80223BA8 00220788  4B FA 07 05 */	bl func_801C42AC
/* 80223BAC 0022078C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80223BB0 00220790  38 21 00 08 */	addi r1, r1, 8
/* 80223BB4 00220794  7C 08 03 A6 */	mtlr r0
/* 80223BB8 00220798  4E 80 00 20 */	blr 
.global lbl_80223BBC
lbl_80223BBC:
/* 80223BBC 0022079C  4E 80 00 20 */	blr 
.global lbl_80223BC0
lbl_80223BC0:
/* 80223BC0 002207A0  7C 08 02 A6 */	mflr r0
/* 80223BC4 002207A4  38 60 00 00 */	li r3, 0
/* 80223BC8 002207A8  90 01 00 04 */	stw r0, 4(r1)
/* 80223BCC 002207AC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80223BD0 002207B0  4B FA 72 35 */	bl func_801CAE04
/* 80223BD4 002207B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80223BD8 002207B8  38 21 00 08 */	addi r1, r1, 8
/* 80223BDC 002207BC  7C 08 03 A6 */	mtlr r0
/* 80223BE0 002207C0  4E 80 00 20 */	blr 
.global lbl_80223BE4
lbl_80223BE4:
/* 80223BE4 002207C4  38 60 00 00 */	li r3, 0
/* 80223BE8 002207C8  4E 80 00 20 */	blr 

.global func_80223BEC
func_80223BEC:
/* 80223BEC 002207CC  7C 08 02 A6 */	mflr r0
/* 80223BF0 002207D0  90 01 00 04 */	stw r0, 4(r1)
/* 80223BF4 002207D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80223BF8 002207D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80223BFC 002207DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80223C00 002207E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80223C04 002207E4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80223C08 002207E8  3B 83 00 00 */	addi r28, r3, 0
/* 80223C0C 002207EC  1C 1C 00 14 */	mulli r0, r28, 0x14
/* 80223C10 002207F0  3C 60 80 3F */	lis r3, lbl_803E9578@ha
/* 80223C14 002207F4  3B E3 95 78 */	addi r31, r3, lbl_803E9578@l
/* 80223C18 002207F8  38 7C 00 00 */	addi r3, r28, 0
/* 80223C1C 002207FC  7F BF 02 14 */	add r29, r31, r0
/* 80223C20 00220800  4B F9 D8 B1 */	bl func_801C14D0
/* 80223C24 00220804  7C 7E 1B 79 */	or. r30, r3, r3
/* 80223C28 00220808  41 82 00 70 */	beq lbl_80223C98
/* 80223C2C 0022080C  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 80223C30 00220810  38 00 00 00 */	li r0, 0
/* 80223C34 00220814  3C 60 80 1C */	lis r3, func_801C5DB0@ha
/* 80223C38 00220818  90 1F 00 08 */	stw r0, 8(r31)
/* 80223C3C 0022081C  38 83 5D B0 */	addi r4, r3, func_801C5DB0@l
/* 80223C40 00220820  38 7E 00 00 */	addi r3, r30, 0
/* 80223C44 00220824  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80223C48 00220828  38 A0 00 03 */	li r5, 3
/* 80223C4C 0022082C  38 C0 00 00 */	li r6, 0
/* 80223C50 00220830  48 16 CA 4D */	bl GObj_SetupGXLink
/* 80223C54 00220834  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80223C58 00220838  28 00 00 00 */	cmplwi r0, 0
/* 80223C5C 0022083C  41 82 00 08 */	beq lbl_80223C64
/* 80223C60 00220840  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_80223C64:
/* 80223C64 00220844  81 9D 00 00 */	lwz r12, 0(r29)
/* 80223C68 00220848  28 0C 00 00 */	cmplwi r12, 0
/* 80223C6C 0022084C  41 82 00 10 */	beq lbl_80223C7C
/* 80223C70 00220850  7D 88 03 A6 */	mtlr r12
/* 80223C74 00220854  38 7E 00 00 */	addi r3, r30, 0
/* 80223C78 00220858  4E 80 00 21 */	blrl 
lbl_80223C7C:
/* 80223C7C 0022085C  80 9D 00 08 */	lwz r4, 8(r29)
/* 80223C80 00220860  28 04 00 00 */	cmplwi r4, 0
/* 80223C84 00220864  41 82 00 2C */	beq lbl_80223CB0
/* 80223C88 00220868  38 7E 00 00 */	addi r3, r30, 0
/* 80223C8C 0022086C  38 A0 00 04 */	li r5, 4
/* 80223C90 00220870  48 16 C0 C5 */	bl func_8038FD54
/* 80223C94 00220874  48 00 00 1C */	b lbl_80223CB0
lbl_80223C98:
/* 80223C98 00220878  38 DC 00 00 */	addi r6, r28, 0
/* 80223C9C 0022087C  4C C6 31 82 */	crclr 6
/* 80223CA0 00220880  38 7F 00 90 */	addi r3, r31, 0x90
/* 80223CA4 00220884  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 80223CA8 00220888  38 A0 00 C3 */	li r5, 0xc3
/* 80223CAC 0022088C  48 12 19 FD */	bl OSReport
lbl_80223CB0:
/* 80223CB0 00220890  7F C3 F3 78 */	mr r3, r30
/* 80223CB4 00220894  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80223CB8 00220898  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80223CBC 0022089C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80223CC0 002208A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80223CC4 002208A4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80223CC8 002208A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80223CCC 002208AC  7C 08 03 A6 */	mtlr r0
/* 80223CD0 002208B0  4E 80 00 20 */	blr 
.global lbl_80223CD4
lbl_80223CD4:
/* 80223CD4 002208B4  7C 08 02 A6 */	mflr r0
/* 80223CD8 002208B8  38 A0 00 00 */	li r5, 0
/* 80223CDC 002208BC  90 01 00 04 */	stw r0, 4(r1)
/* 80223CE0 002208C0  94 21 FF F8 */	stwu r1, -8(r1)
/* 80223CE4 002208C4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80223CE8 002208C8  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80223CEC 002208CC  4B FA 44 4D */	bl func_801C8138
/* 80223CF0 002208D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80223CF4 002208D4  38 21 00 08 */	addi r1, r1, 8
/* 80223CF8 002208D8  7C 08 03 A6 */	mtlr r0
/* 80223CFC 002208DC  4E 80 00 20 */	blr 
.global lbl_80223D00
lbl_80223D00:
/* 80223D00 002208E0  38 60 00 00 */	li r3, 0
/* 80223D04 002208E4  4E 80 00 20 */	blr 
.global lbl_80223D08
lbl_80223D08:
/* 80223D08 002208E8  4E 80 00 20 */	blr 
.global lbl_80223D0C
lbl_80223D0C:
/* 80223D0C 002208EC  4E 80 00 20 */	blr 
.global lbl_80223D10
lbl_80223D10:
/* 80223D10 002208F0  7C 08 02 A6 */	mflr r0
/* 80223D14 002208F4  90 01 00 04 */	stw r0, 4(r1)
/* 80223D18 002208F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80223D1C 002208FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80223D20 00220900  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80223D24 00220904  7C 7E 1B 78 */	mr r30, r3
/* 80223D28 00220908  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80223D2C 0022090C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80223D30 00220910  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80223D34 00220914  4B F9 F1 9D */	bl func_801C2ED0
/* 80223D38 00220918  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80223D3C 0022091C  38 7E 00 00 */	addi r3, r30, 0
/* 80223D40 00220920  38 A0 00 00 */	li r5, 0
/* 80223D44 00220924  4B FA 43 F5 */	bl func_801C8138
/* 80223D48 00220928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80223D4C 0022092C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80223D50 00220930  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80223D54 00220934  38 21 00 20 */	addi r1, r1, 0x20
/* 80223D58 00220938  7C 08 03 A6 */	mtlr r0
/* 80223D5C 0022093C  4E 80 00 20 */	blr 
.global lbl_80223D60
lbl_80223D60:
/* 80223D60 00220940  38 60 00 00 */	li r3, 0
/* 80223D64 00220944  4E 80 00 20 */	blr 
.global lbl_80223D68
lbl_80223D68:
/* 80223D68 00220948  7C 08 02 A6 */	mflr r0
/* 80223D6C 0022094C  90 01 00 04 */	stw r0, 4(r1)
/* 80223D70 00220950  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80223D74 00220954  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80223D78 00220958  7C 7F 1B 78 */	mr r31, r3
/* 80223D7C 0022095C  4B DE D8 79 */	bl func_800115F4
/* 80223D80 00220960  7F E3 FB 78 */	mr r3, r31
/* 80223D84 00220964  4B F9 F2 5D */	bl func_801C2FE0
/* 80223D88 00220968  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80223D8C 0022096C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80223D90 00220970  38 21 00 18 */	addi r1, r1, 0x18
/* 80223D94 00220974  7C 08 03 A6 */	mtlr r0
/* 80223D98 00220978  4E 80 00 20 */	blr 
.global lbl_80223D9C
lbl_80223D9C:
/* 80223D9C 0022097C  4E 80 00 20 */	blr 
.global lbl_80223DA0
lbl_80223DA0:
/* 80223DA0 00220980  7C 08 02 A6 */	mflr r0
/* 80223DA4 00220984  90 01 00 04 */	stw r0, 4(r1)
/* 80223DA8 00220988  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80223DAC 0022098C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80223DB0 00220990  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80223DB4 00220994  7C 7E 1B 78 */	mr r30, r3
/* 80223DB8 00220998  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80223DBC 0022099C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80223DC0 002209A0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80223DC4 002209A4  4B F9 F1 0D */	bl func_801C2ED0
/* 80223DC8 002209A8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80223DCC 002209AC  38 7E 00 00 */	addi r3, r30, 0
/* 80223DD0 002209B0  38 A0 00 00 */	li r5, 0
/* 80223DD4 002209B4  4B FA 43 65 */	bl func_801C8138
/* 80223DD8 002209B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80223DDC 002209BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80223DE0 002209C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80223DE4 002209C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80223DE8 002209C8  7C 08 03 A6 */	mtlr r0
/* 80223DEC 002209CC  4E 80 00 20 */	blr 
.global lbl_80223DF0
lbl_80223DF0:
/* 80223DF0 002209D0  38 60 00 00 */	li r3, 0
/* 80223DF4 002209D4  4E 80 00 20 */	blr 
.global lbl_80223DF8
lbl_80223DF8:
/* 80223DF8 002209D8  7C 08 02 A6 */	mflr r0
/* 80223DFC 002209DC  90 01 00 04 */	stw r0, 4(r1)
/* 80223E00 002209E0  94 21 FF F8 */	stwu r1, -8(r1)
/* 80223E04 002209E4  4B F9 F1 DD */	bl func_801C2FE0
/* 80223E08 002209E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80223E0C 002209EC  38 21 00 08 */	addi r1, r1, 8
/* 80223E10 002209F0  7C 08 03 A6 */	mtlr r0
/* 80223E14 002209F4  4E 80 00 20 */	blr 
.global lbl_80223E18
lbl_80223E18:
/* 80223E18 002209F8  4E 80 00 20 */	blr 
.global lbl_80223E1C
lbl_80223E1C:
/* 80223E1C 002209FC  38 60 00 00 */	li r3, 0
/* 80223E20 00220A00  4E 80 00 20 */	blr 
.global lbl_80223E24
lbl_80223E24:
/* 80223E24 00220A04  38 60 00 01 */	li r3, 1
/* 80223E28 00220A08  4E 80 00 20 */	blr 


.section .data

.global lbl_803E9578
lbl_803E9578:
	.4byte lbl_80223CD4
	.4byte lbl_80223D00
	.4byte lbl_80223D08
	.4byte lbl_80223D0C
    .4byte NULL
	.4byte lbl_80223DA0
	.4byte lbl_80223DF0
	.4byte lbl_80223DF8
	.4byte lbl_80223E18
    .4byte NULL
	.4byte lbl_80223D10
	.4byte lbl_80223D60
	.4byte lbl_80223D68
	.4byte lbl_80223D9C
    .4byte 0xC0000000
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
.global lbl_803E95C8
lbl_803E95C8:
    .4byte 0x2F477254
    .4byte 0x59732E64
    .4byte 0x61740000
.global lbl_803E95D4
lbl_803E95D4:
    .4byte 0x0000003D
    .4byte lbl_803E9578
    .4byte lbl_803E95C8
	.4byte lbl_80223B4C
	.4byte func_80223B48
	.4byte lbl_80223BBC
	.4byte lbl_80223BC0
	.4byte lbl_80223BE4
	.4byte lbl_80223E1C
	.4byte lbl_80223E24
    .4byte 0x00000001
    .4byte NULL
    .4byte NULL
    .4byte 0x25733A25
    .4byte 0x643A2063
    .4byte 0x6F756C64
    .4byte 0x6E207420
    .4byte 0x67657420
    .4byte 0x676F626A
    .4byte 0x2869643D
    .4byte 0x2564290A
    .4byte NULL
    .4byte 0x67727479
    .4byte 0x6F736869
    .4byte 0x2E630000
