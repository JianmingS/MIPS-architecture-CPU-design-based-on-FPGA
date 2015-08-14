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
static const char *ng0 = "E:/JmingProjects/ISE/Lab5_3/Instruction_memory.v";
static const char *ng1 = "instruction";
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {2, 0};



static void Initial_28_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(29, ng0);

LAB2:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1012);
    t2 = ((char*)((ng2)));
    xsi_vlogfile_readmemh(ng1, 0, t1, 1, *((unsigned int *)t2), 0, 0);

LAB1:    return;
}

static void Always_34_1(char *t0)
{
    char t7[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;

LAB0:    t1 = (t0 + 1680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1876);
    *((int *)t2) = 1;
    t3 = (t0 + 1708);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1012);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t8 = (t0 + 1012);
    t9 = (t8 + 44U);
    t10 = *((char **)t9);
    t11 = (t0 + 1012);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    t14 = (t0 + 692U);
    t15 = *((char **)t14);
    t14 = ((char*)((ng3)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_rshift(t16, 32, t15, 32, t14, 32);
    xsi_vlog_generic_get_array_select_value(t7, 32, t6, t10, t13, 2, 1, t16, 32, 2);
    t17 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t17, t7, 0, 0, 32, 0LL);
    goto LAB2;

}


extern void work_m_00000000002629890179_2032185554_init()
{
	static char *pe[] = {(void *)Initial_28_0,(void *)Always_34_1};
	xsi_register_didat("work_m_00000000002629890179_2032185554", "isim/top_tb_isim_beh.exe.sim/work/m_00000000002629890179_2032185554.didat");
	xsi_register_executes(pe);
}
