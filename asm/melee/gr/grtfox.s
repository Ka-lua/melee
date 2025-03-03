.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_80220B80
func_80220B80:
/* 80220B80 0021D760  4E 80 00 20 */	blr 
.global lbl_80220B84
lbl_80220B84:
/* 80220B84 0021D764  7C 08 02 A6 */	mflr r0
/* 80220B88 0021D768  90 01 00 04 */	stw r0, 4(r1)
/* 80220B8C 0021D76C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80220B90 0021D770  4B FA 3E 69 */	bl func_801C49F8
/* 80220B94 0021D774  3C 80 80 4A */	lis r4, stage_info@ha
/* 80220B98 0021D778  90 6D B4 60 */	stw r3, lbl_804D6B00@sda21(r13)
/* 80220B9C 0021D77C  38 64 E6 C8 */	addi r3, r4, stage_info@l
/* 80220BA0 0021D780  38 A3 00 8C */	addi r5, r3, 0x8c
/* 80220BA4 0021D784  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 80220BA8 0021D788  38 60 00 00 */	li r3, 0
/* 80220BAC 0021D78C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80220BB0 0021D790  98 05 00 00 */	stb r0, 0(r5)
/* 80220BB4 0021D794  38 80 00 01 */	li r4, 1
/* 80220BB8 0021D798  38 60 00 00 */	li r3, 0
/* 80220BBC 0021D79C  88 05 00 00 */	lbz r0, 0(r5)
/* 80220BC0 0021D7A0  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80220BC4 0021D7A4  98 05 00 00 */	stb r0, 0(r5)
/* 80220BC8 0021D7A8  48 00 00 65 */	bl func_80220C2C
/* 80220BCC 0021D7AC  38 60 00 01 */	li r3, 1
/* 80220BD0 0021D7B0  48 00 00 5D */	bl func_80220C2C
/* 80220BD4 0021D7B4  38 60 00 02 */	li r3, 2
/* 80220BD8 0021D7B8  48 00 00 55 */	bl func_80220C2C
/* 80220BDC 0021D7BC  4B FA 2D E5 */	bl func_801C39C0
/* 80220BE0 0021D7C0  4B FA 2F D5 */	bl func_801C3BB4
/* 80220BE4 0021D7C4  4B FA 36 2D */	bl func_801C4210
/* 80220BE8 0021D7C8  4B FA 36 C5 */	bl func_801C42AC
/* 80220BEC 0021D7CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80220BF0 0021D7D0  38 21 00 08 */	addi r1, r1, 8
/* 80220BF4 0021D7D4  7C 08 03 A6 */	mtlr r0
/* 80220BF8 0021D7D8  4E 80 00 20 */	blr 
.global lbl_80220BFC
lbl_80220BFC:
/* 80220BFC 0021D7DC  4E 80 00 20 */	blr 
.global lbl_80220C00
lbl_80220C00:
/* 80220C00 0021D7E0  7C 08 02 A6 */	mflr r0
/* 80220C04 0021D7E4  38 60 00 00 */	li r3, 0
/* 80220C08 0021D7E8  90 01 00 04 */	stw r0, 4(r1)
/* 80220C0C 0021D7EC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80220C10 0021D7F0  4B FA A1 F5 */	bl func_801CAE04
/* 80220C14 0021D7F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80220C18 0021D7F8  38 21 00 08 */	addi r1, r1, 8
/* 80220C1C 0021D7FC  7C 08 03 A6 */	mtlr r0
/* 80220C20 0021D800  4E 80 00 20 */	blr 
.global lbl_80220C24
lbl_80220C24:
/* 80220C24 0021D804  38 60 00 00 */	li r3, 0
/* 80220C28 0021D808  4E 80 00 20 */	blr 

.global func_80220C2C
func_80220C2C:
/* 80220C2C 0021D80C  7C 08 02 A6 */	mflr r0
/* 80220C30 0021D810  90 01 00 04 */	stw r0, 4(r1)
/* 80220C34 0021D814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80220C38 0021D818  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80220C3C 0021D81C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80220C40 0021D820  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80220C44 0021D824  93 81 00 10 */	stw r28, 0x10(r1)
/* 80220C48 0021D828  3B 83 00 00 */	addi r28, r3, 0
/* 80220C4C 0021D82C  1C 1C 00 14 */	mulli r0, r28, 0x14
/* 80220C50 0021D830  3C 60 80 3F */	lis r3, lbl_803E89D8@ha
/* 80220C54 0021D834  3B E3 89 D8 */	addi r31, r3, lbl_803E89D8@l
/* 80220C58 0021D838  38 7C 00 00 */	addi r3, r28, 0
/* 80220C5C 0021D83C  7F BF 02 14 */	add r29, r31, r0
/* 80220C60 0021D840  4B FA 08 71 */	bl func_801C14D0
/* 80220C64 0021D844  7C 7E 1B 79 */	or. r30, r3, r3
/* 80220C68 0021D848  41 82 00 70 */	beq lbl_80220CD8
/* 80220C6C 0021D84C  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 80220C70 0021D850  38 00 00 00 */	li r0, 0
/* 80220C74 0021D854  3C 60 80 1C */	lis r3, func_801C5DB0@ha
/* 80220C78 0021D858  90 1F 00 08 */	stw r0, 8(r31)
/* 80220C7C 0021D85C  38 83 5D B0 */	addi r4, r3, func_801C5DB0@l
/* 80220C80 0021D860  38 7E 00 00 */	addi r3, r30, 0
/* 80220C84 0021D864  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80220C88 0021D868  38 A0 00 03 */	li r5, 3
/* 80220C8C 0021D86C  38 C0 00 00 */	li r6, 0
/* 80220C90 0021D870  48 16 FA 0D */	bl GObj_SetupGXLink
/* 80220C94 0021D874  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80220C98 0021D878  28 00 00 00 */	cmplwi r0, 0
/* 80220C9C 0021D87C  41 82 00 08 */	beq lbl_80220CA4
/* 80220CA0 0021D880  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_80220CA4:
/* 80220CA4 0021D884  81 9D 00 00 */	lwz r12, 0(r29)
/* 80220CA8 0021D888  28 0C 00 00 */	cmplwi r12, 0
/* 80220CAC 0021D88C  41 82 00 10 */	beq lbl_80220CBC
/* 80220CB0 0021D890  7D 88 03 A6 */	mtlr r12
/* 80220CB4 0021D894  38 7E 00 00 */	addi r3, r30, 0
/* 80220CB8 0021D898  4E 80 00 21 */	blrl 
lbl_80220CBC:
/* 80220CBC 0021D89C  80 9D 00 08 */	lwz r4, 8(r29)
/* 80220CC0 0021D8A0  28 04 00 00 */	cmplwi r4, 0
/* 80220CC4 0021D8A4  41 82 00 2C */	beq lbl_80220CF0
/* 80220CC8 0021D8A8  38 7E 00 00 */	addi r3, r30, 0
/* 80220CCC 0021D8AC  38 A0 00 04 */	li r5, 4
/* 80220CD0 0021D8B0  48 16 F0 85 */	bl func_8038FD54
/* 80220CD4 0021D8B4  48 00 00 1C */	b lbl_80220CF0
lbl_80220CD8:
/* 80220CD8 0021D8B8  38 DC 00 00 */	addi r6, r28, 0
/* 80220CDC 0021D8BC  4C C6 31 82 */	crclr 6
/* 80220CE0 0021D8C0  38 7F 00 90 */	addi r3, r31, 0x90
/* 80220CE4 0021D8C4  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 80220CE8 0021D8C8  38 A0 00 CB */	li r5, 0xcb
/* 80220CEC 0021D8CC  48 12 49 BD */	bl OSReport
lbl_80220CF0:
/* 80220CF0 0021D8D0  7F C3 F3 78 */	mr r3, r30
/* 80220CF4 0021D8D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80220CF8 0021D8D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80220CFC 0021D8DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80220D00 0021D8E0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80220D04 0021D8E4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80220D08 0021D8E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80220D0C 0021D8EC  7C 08 03 A6 */	mtlr r0
/* 80220D10 0021D8F0  4E 80 00 20 */	blr 
.global lbl_80220D14
lbl_80220D14:
/* 80220D14 0021D8F4  7C 08 02 A6 */	mflr r0
/* 80220D18 0021D8F8  38 A0 00 00 */	li r5, 0
/* 80220D1C 0021D8FC  90 01 00 04 */	stw r0, 4(r1)
/* 80220D20 0021D900  94 21 FF F8 */	stwu r1, -8(r1)
/* 80220D24 0021D904  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80220D28 0021D908  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80220D2C 0021D90C  4B FA 74 0D */	bl func_801C8138
/* 80220D30 0021D910  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80220D34 0021D914  38 21 00 08 */	addi r1, r1, 8
/* 80220D38 0021D918  7C 08 03 A6 */	mtlr r0
/* 80220D3C 0021D91C  4E 80 00 20 */	blr 
.global lbl_80220D40
lbl_80220D40:
/* 80220D40 0021D920  38 60 00 00 */	li r3, 0
/* 80220D44 0021D924  4E 80 00 20 */	blr 
.global lbl_80220D48
lbl_80220D48:
/* 80220D48 0021D928  4E 80 00 20 */	blr 
.global lbl_80220D4C
lbl_80220D4C:
/* 80220D4C 0021D92C  4E 80 00 20 */	blr 
.global lbl_80220D50
lbl_80220D50:
/* 80220D50 0021D930  7C 08 02 A6 */	mflr r0
/* 80220D54 0021D934  90 01 00 04 */	stw r0, 4(r1)
/* 80220D58 0021D938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80220D5C 0021D93C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80220D60 0021D940  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80220D64 0021D944  7C 7E 1B 78 */	mr r30, r3
/* 80220D68 0021D948  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80220D6C 0021D94C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80220D70 0021D950  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80220D74 0021D954  4B FA 21 5D */	bl func_801C2ED0
/* 80220D78 0021D958  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80220D7C 0021D95C  38 7E 00 00 */	addi r3, r30, 0
/* 80220D80 0021D960  38 A0 00 00 */	li r5, 0
/* 80220D84 0021D964  4B FA 73 B5 */	bl func_801C8138
/* 80220D88 0021D968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80220D8C 0021D96C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80220D90 0021D970  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80220D94 0021D974  38 21 00 20 */	addi r1, r1, 0x20
/* 80220D98 0021D978  7C 08 03 A6 */	mtlr r0
/* 80220D9C 0021D97C  4E 80 00 20 */	blr 
.global lbl_80220DA0
lbl_80220DA0:
/* 80220DA0 0021D980  38 60 00 00 */	li r3, 0
/* 80220DA4 0021D984  4E 80 00 20 */	blr 
.global lbl_80220DA8
lbl_80220DA8:
/* 80220DA8 0021D988  7C 08 02 A6 */	mflr r0
/* 80220DAC 0021D98C  90 01 00 04 */	stw r0, 4(r1)
/* 80220DB0 0021D990  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80220DB4 0021D994  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80220DB8 0021D998  7C 7F 1B 78 */	mr r31, r3
/* 80220DBC 0021D99C  4B DF 08 39 */	bl func_800115F4
/* 80220DC0 0021D9A0  7F E3 FB 78 */	mr r3, r31
/* 80220DC4 0021D9A4  4B FA 22 1D */	bl func_801C2FE0
/* 80220DC8 0021D9A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80220DCC 0021D9AC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80220DD0 0021D9B0  38 21 00 18 */	addi r1, r1, 0x18
/* 80220DD4 0021D9B4  7C 08 03 A6 */	mtlr r0
/* 80220DD8 0021D9B8  4E 80 00 20 */	blr 
.global lbl_80220DDC
lbl_80220DDC:
/* 80220DDC 0021D9BC  4E 80 00 20 */	blr 
.global lbl_80220DE0
lbl_80220DE0:
/* 80220DE0 0021D9C0  7C 08 02 A6 */	mflr r0
/* 80220DE4 0021D9C4  90 01 00 04 */	stw r0, 4(r1)
/* 80220DE8 0021D9C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80220DEC 0021D9CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80220DF0 0021D9D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80220DF4 0021D9D4  7C 7E 1B 78 */	mr r30, r3
/* 80220DF8 0021D9D8  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80220DFC 0021D9DC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80220E00 0021D9E0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80220E04 0021D9E4  4B FA 20 CD */	bl func_801C2ED0
/* 80220E08 0021D9E8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80220E0C 0021D9EC  38 7E 00 00 */	addi r3, r30, 0
/* 80220E10 0021D9F0  38 A0 00 00 */	li r5, 0
/* 80220E14 0021D9F4  4B FA 73 25 */	bl func_801C8138
/* 80220E18 0021D9F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80220E1C 0021D9FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80220E20 0021DA00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80220E24 0021DA04  38 21 00 20 */	addi r1, r1, 0x20
/* 80220E28 0021DA08  7C 08 03 A6 */	mtlr r0
/* 80220E2C 0021DA0C  4E 80 00 20 */	blr 
.global lbl_80220E30
lbl_80220E30:
/* 80220E30 0021DA10  38 60 00 00 */	li r3, 0
/* 80220E34 0021DA14  4E 80 00 20 */	blr 
.global lbl_80220E38
lbl_80220E38:
/* 80220E38 0021DA18  7C 08 02 A6 */	mflr r0
/* 80220E3C 0021DA1C  90 01 00 04 */	stw r0, 4(r1)
/* 80220E40 0021DA20  94 21 FF F8 */	stwu r1, -8(r1)
/* 80220E44 0021DA24  4B FA 21 9D */	bl func_801C2FE0
/* 80220E48 0021DA28  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80220E4C 0021DA2C  38 21 00 08 */	addi r1, r1, 8
/* 80220E50 0021DA30  7C 08 03 A6 */	mtlr r0
/* 80220E54 0021DA34  4E 80 00 20 */	blr 
.global lbl_80220E58
lbl_80220E58:
/* 80220E58 0021DA38  4E 80 00 20 */	blr 
.global lbl_80220E5C
lbl_80220E5C:
/* 80220E5C 0021DA3C  7C 08 02 A6 */	mflr r0
/* 80220E60 0021DA40  90 01 00 04 */	stw r0, 4(r1)
/* 80220E64 0021DA44  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80220E68 0021DA48  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80220E6C 0021DA4C  3B E3 00 00 */	addi r31, r3, 0
/* 80220E70 0021DA50  2C 1F FF FF */	cmpwi r31, -1
/* 80220E74 0021DA54  41 82 00 7C */	beq lbl_80220EF0
/* 80220E78 0021DA58  7F E3 FB 78 */	mr r3, r31
/* 80220E7C 0021DA5C  4B E3 5C F1 */	bl func_80056B6C
/* 80220E80 0021DA60  2C 03 FF FF */	cmpwi r3, -1
/* 80220E84 0021DA64  41 82 00 6C */	beq lbl_80220EF0
/* 80220E88 0021DA68  2C 03 00 01 */	cmpwi r3, 1
/* 80220E8C 0021DA6C  40 82 00 64 */	bne lbl_80220EF0
/* 80220E90 0021DA70  7F E3 FB 78 */	mr r3, r31
/* 80220E94 0021DA74  4B E3 3D D9 */	bl func_80054C6C
/* 80220E98 0021DA78  2C 03 00 01 */	cmpwi r3, 1
/* 80220E9C 0021DA7C  40 82 00 10 */	bne lbl_80220EAC
/* 80220EA0 0021DA80  80 6D B4 60 */	lwz r3, lbl_804D6B00@sda21(r13)
/* 80220EA4 0021DA84  80 63 00 00 */	lwz r3, 0(r3)
/* 80220EA8 0021DA88  48 00 00 4C */	b lbl_80220EF4
lbl_80220EAC:
/* 80220EAC 0021DA8C  2C 03 00 02 */	cmpwi r3, 2
/* 80220EB0 0021DA90  40 82 00 10 */	bne lbl_80220EC0
/* 80220EB4 0021DA94  80 6D B4 60 */	lwz r3, lbl_804D6B00@sda21(r13)
/* 80220EB8 0021DA98  80 63 00 04 */	lwz r3, 4(r3)
/* 80220EBC 0021DA9C  48 00 00 38 */	b lbl_80220EF4
lbl_80220EC0:
/* 80220EC0 0021DAA0  2C 03 00 04 */	cmpwi r3, 4
/* 80220EC4 0021DAA4  40 82 00 10 */	bne lbl_80220ED4
/* 80220EC8 0021DAA8  80 6D B4 60 */	lwz r3, lbl_804D6B00@sda21(r13)
/* 80220ECC 0021DAAC  80 63 00 08 */	lwz r3, 8(r3)
/* 80220ED0 0021DAB0  48 00 00 24 */	b lbl_80220EF4
lbl_80220ED4:
/* 80220ED4 0021DAB4  2C 03 00 08 */	cmpwi r3, 8
/* 80220ED8 0021DAB8  40 82 00 10 */	bne lbl_80220EE8
/* 80220EDC 0021DABC  80 6D B4 60 */	lwz r3, lbl_804D6B00@sda21(r13)
/* 80220EE0 0021DAC0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80220EE4 0021DAC4  48 00 00 10 */	b lbl_80220EF4
lbl_80220EE8:
/* 80220EE8 0021DAC8  38 60 00 00 */	li r3, 0
/* 80220EEC 0021DACC  48 00 00 08 */	b lbl_80220EF4
lbl_80220EF0:
/* 80220EF0 0021DAD0  38 60 00 00 */	li r3, 0
lbl_80220EF4:
/* 80220EF4 0021DAD4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80220EF8 0021DAD8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80220EFC 0021DADC  38 21 00 18 */	addi r1, r1, 0x18
/* 80220F00 0021DAE0  7C 08 03 A6 */	mtlr r0
/* 80220F04 0021DAE4  4E 80 00 20 */	blr 
.global lbl_80220F08
lbl_80220F08:
/* 80220F08 0021DAE8  38 60 00 01 */	li r3, 1
/* 80220F0C 0021DAEC  4E 80 00 20 */	blr 


.section .data

.global lbl_803E89D8
lbl_803E89D8:
	.4byte lbl_80220D14
	.4byte lbl_80220D40
	.4byte lbl_80220D48
	.4byte lbl_80220D4C
    .4byte NULL
	.4byte lbl_80220DE0
	.4byte lbl_80220E30
	.4byte lbl_80220E38
	.4byte lbl_80220E58
    .4byte NULL
	.4byte lbl_80220D50
	.4byte lbl_80220DA0
	.4byte lbl_80220DA8
	.4byte lbl_80220DDC
    .4byte 0xC0000000
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
.global lbl_803E8A28
lbl_803E8A28:
    .4byte 0x2F477254
    .4byte 0x46782E64
    .4byte 0x61740000
.global lbl_803E8A34
lbl_803E8A34:
    .4byte 0x0000002E
    .4byte lbl_803E89D8
    .4byte lbl_803E8A28
	.4byte lbl_80220B84
	.4byte func_80220B80
	.4byte lbl_80220BFC
	.4byte lbl_80220C00
	.4byte lbl_80220C24
	.4byte lbl_80220E5C
	.4byte lbl_80220F08
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
    .4byte 0x67727466
    .4byte 0x6F782E63
    .4byte NULL


.section .sbss

.global lbl_804D6B00
lbl_804D6B00:
	.skip 0x8
