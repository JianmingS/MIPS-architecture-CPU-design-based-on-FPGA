/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/JmingProjects/ISE/Lab5_2/Ctr.v";
static unsigned int ng1[] = {9U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {12U, 0U};
static unsigned int ng6[] = {13U, 0U};
static unsigned int ng7[] = {10U, 0U};
static unsigned int ng8[] = {11U, 0U};
static unsigned int ng9[] = {14U, 0U};
static unsigned int ng10[] = {0U, 0U};
static unsigned int ng11[] = {35U, 0U};
static unsigned int ng12[] = {43U, 0U};
static unsigned int ng13[] = {1U, 1U};
static unsigned int ng14[] = {4U, 0U};
static unsigned int ng15[] = {1U, 0U};
static unsigned int ng16[] = {9023U, 63U};
static unsigned int ng17[] = {1151U, 63U};
static unsigned int ng18[] = {6U, 0U};
static unsigned int ng19[] = {224U, 64U};
static unsigned int ng20[] = {226U, 64U};
static unsigned int ng21[] = {228U, 64U};
static unsigned int ng22[] = {229U, 64U};
static unsigned int ng23[] = {234U, 64U};
static unsigned int ng24[] = {7U, 0U};
static unsigned int ng25[] = {218U, 64U};
static unsigned int ng26[] = {3U, 0U};
static unsigned int ng27[] = {216U, 64U};
static unsigned int ng28[] = {196U, 64U};
static unsigned int ng29[] = {5U, 0U};
static unsigned int ng30[] = {199U, 64U};
static unsigned int ng31[] = {8U, 0U};
static unsigned int ng32[] = {230U, 64U};
static unsigned int ng33[] = {2559U, 127U};
static unsigned int ng34[] = {3327U, 127U};
static unsigned int ng35[] = {3583U, 127U};
static unsigned int ng36[] = {2815U, 127U};
static unsigned int ng37[] = {3071U, 127U};
static unsigned int ng38[] = {3839U, 127U};
static unsigned int ng39[] = {192U, 64U};
static unsigned int ng40[] = {194U, 64U};



static void Always_33_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2428);
    *((int *)t2) = 1;
    t3 = (t0 + 2116);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB2;

LAB7:    xsi_set_current_line(39, ng0);

LAB28:    xsi_set_current_line(40, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1472);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB27;

LAB9:    xsi_set_current_line(51, ng0);

LAB29:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB27;

LAB11:    xsi_set_current_line(63, ng0);

LAB30:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB27;

LAB13:    xsi_set_current_line(75, ng0);

LAB31:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB27;

LAB15:    xsi_set_current_line(87, ng0);

LAB32:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB27;

LAB17:    xsi_set_current_line(99, ng0);

LAB33:    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB27;

LAB19:    xsi_set_current_line(110, ng0);

LAB34:    xsi_set_current_line(111, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB27;

LAB21:    xsi_set_current_line(121, ng0);

LAB35:    xsi_set_current_line(122, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB27;

LAB23:    xsi_set_current_line(132, ng0);

LAB36:    xsi_set_current_line(133, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB27;

LAB25:    xsi_set_current_line(143, ng0);

LAB37:    xsi_set_current_line(144, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB27;

}

static void Always_157_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 2232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(157, ng0);
    t2 = (t0 + 2436);
    *((int *)t2) = 1;
    t3 = (t0 + 2260);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(158, ng0);

LAB5:    xsi_set_current_line(159, ng0);
    t5 = (t0 + 692U);
    t6 = *((char **)t5);
    t5 = (t0 + 1564);
    t7 = (t5 + 36U);
    t8 = *((char **)t7);
    t9 = (t0 + 600U);
    t10 = *((char **)t9);
    xsi_vlogtype_concat(t4, 14, 14, 3U, t10, 6, t8, 2, t6, 6);

LAB6:    t9 = ((char*)((ng16)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t9, 14);
    if (t11 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng17)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng19)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng20)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng21)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng22)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng23)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng23)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng25)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng27)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng28)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng30)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng32)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng33)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng34)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng35)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng36)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng37)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng38)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng39)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng40)));
    t11 = xsi_vlog_unsigned_case_xcompare(t4, 14, t2, 14);
    if (t11 == 1)
        goto LAB47;

LAB48:
LAB50:
LAB49:    xsi_set_current_line(181, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB51:    goto LAB2;

LAB7:    xsi_set_current_line(160, ng0);
    t12 = ((char*)((ng4)));
    t13 = (t0 + 1288);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB51;

LAB9:    xsi_set_current_line(161, ng0);
    t3 = ((char*)((ng18)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB11:    xsi_set_current_line(162, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB13:    xsi_set_current_line(163, ng0);
    t3 = ((char*)((ng18)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB15:    xsi_set_current_line(164, ng0);
    t3 = ((char*)((ng10)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB17:    xsi_set_current_line(165, ng0);
    t3 = ((char*)((ng15)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB19:    xsi_set_current_line(166, ng0);
    t3 = ((char*)((ng24)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB21:    xsi_set_current_line(167, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB23:    xsi_set_current_line(168, ng0);
    t3 = ((char*)((ng26)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB25:    xsi_set_current_line(169, ng0);
    t3 = ((char*)((ng14)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB27:    xsi_set_current_line(170, ng0);
    t3 = ((char*)((ng29)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB29:    xsi_set_current_line(171, ng0);
    t3 = ((char*)((ng31)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB31:    xsi_set_current_line(172, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB33:    xsi_set_current_line(173, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB35:    xsi_set_current_line(174, ng0);
    t3 = ((char*)((ng10)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB37:    xsi_set_current_line(175, ng0);
    t3 = ((char*)((ng15)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB39:    xsi_set_current_line(176, ng0);
    t3 = ((char*)((ng24)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB41:    xsi_set_current_line(177, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB43:    xsi_set_current_line(178, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB45:    xsi_set_current_line(179, ng0);
    t3 = ((char*)((ng29)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

LAB47:    xsi_set_current_line(180, ng0);
    t3 = ((char*)((ng31)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB51;

}


extern void work_m_00000000001886194798_2244092194_init()
{
	static char *pe[] = {(void *)Always_33_0,(void *)Always_157_1};
	xsi_register_didat("work_m_00000000001886194798_2244092194", "isim/top_tb_isim_beh.exe.sim/work/m_00000000001886194798_2244092194.didat");
	xsi_register_executes(pe);
}
