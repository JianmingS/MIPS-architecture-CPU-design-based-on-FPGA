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
static const char *ng0 = "E:/JmingProjects/ISE/Lab5/Ctr.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {35U, 0U};
static unsigned int ng6[] = {43U, 0U};
static unsigned int ng7[] = {1U, 1U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {1U, 0U};
static unsigned int ng10[] = {63U, 63U};
static unsigned int ng11[] = {127U, 63U};
static unsigned int ng12[] = {6U, 0U};
static unsigned int ng13[] = {224U, 64U};
static unsigned int ng14[] = {226U, 64U};
static unsigned int ng15[] = {228U, 64U};
static unsigned int ng16[] = {229U, 64U};
static unsigned int ng17[] = {234U, 64U};
static unsigned int ng18[] = {7U, 0U};
static unsigned int ng19[] = {218U, 64U};
static unsigned int ng20[] = {3U, 0U};
static unsigned int ng21[] = {216U, 64U};
static unsigned int ng22[] = {196U, 64U};
static unsigned int ng23[] = {5U, 0U};
static unsigned int ng24[] = {199U, 64U};
static unsigned int ng25[] = {8U, 0U};
static unsigned int ng26[] = {230U, 64U};
static unsigned int ng27[] = {9U, 0U};



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

LAB12:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);

LAB16:    xsi_set_current_line(39, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1472);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB15;

LAB9:    xsi_set_current_line(49, ng0);

LAB17:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB15;

LAB11:    xsi_set_current_line(60, ng0);

LAB18:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB15;

LAB13:    xsi_set_current_line(71, ng0);

LAB19:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB15;

}

static void Always_85_1(char *t0)
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
    int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 2232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2436);
    *((int *)t2) = 1;
    t3 = (t0 + 2260);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(86, ng0);

LAB5:    xsi_set_current_line(87, ng0);
    t5 = (t0 + 692U);
    t6 = *((char **)t5);
    t5 = (t0 + 1564);
    t7 = (t5 + 36U);
    t8 = *((char **)t7);
    xsi_vlogtype_concat(t4, 8, 8, 2U, t8, 2, t6, 6);

LAB6:    t9 = ((char*)((ng10)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t9, 8);
    if (t10 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng11)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng13)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng14)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng15)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng16)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng17)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng19)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng21)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng22)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng24)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng26)));
    t10 = xsi_vlog_unsigned_case_xcompare(t4, 8, t2, 8);
    if (t10 == 1)
        goto LAB29;

LAB30:
LAB32:
LAB31:    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB33:    goto LAB2;

LAB7:    xsi_set_current_line(88, ng0);
    t11 = ((char*)((ng4)));
    t12 = (t0 + 1288);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 4);
    goto LAB33;

LAB9:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng12)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

LAB11:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

LAB13:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng12)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

LAB15:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

LAB17:    xsi_set_current_line(93, ng0);
    t3 = ((char*)((ng9)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

LAB19:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng18)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

LAB21:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng20)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

LAB23:    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

LAB25:    xsi_set_current_line(97, ng0);
    t3 = ((char*)((ng23)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

LAB27:    xsi_set_current_line(98, ng0);
    t3 = ((char*)((ng25)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

LAB29:    xsi_set_current_line(99, ng0);
    t3 = ((char*)((ng27)));
    t5 = (t0 + 1288);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB33;

}


extern void work_m_00000000001886194798_2244092194_init()
{
	static char *pe[] = {(void *)Always_33_0,(void *)Always_85_1};
	xsi_register_didat("work_m_00000000001886194798_2244092194", "isim/top_tb_isim_beh.exe.sim/work/m_00000000001886194798_2244092194.didat");
	xsi_register_executes(pe);
}
