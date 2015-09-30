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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/ProySisDigAva/Levi/Exam_SN74Ls42/SN74Ls42.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1869409416_3212880686_p_0(char *t0)
{
    char t6[16];
    char t11[16];
    char t16[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(37, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t8 = xsi_base_array_concat(t8, t11, t12, (char)97, t1, t6, (char)99, t10, (char)101);
    t13 = (t0 + 1032U);
    t14 = *((char **)t13);
    t15 = *((unsigned char *)t14);
    t17 = ((IEEE_P_2592010699) + 4024);
    t13 = xsi_base_array_concat(t13, t16, t17, (char)97, t8, t11, (char)99, t15, (char)101);
    t18 = (1U + 1U);
    t19 = (t18 + 1U);
    t20 = (t19 + 1U);
    t21 = (4U != t20);
    if (t21 == 1)
        goto LAB5;

LAB6:    t22 = (t0 + 3656);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t13, 4U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 3560);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t20, 0);
    goto LAB6;

}

static void work_a_1869409416_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    t1 = (t0 + 3240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 5552);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB16:    t6 = (t0 + 5556);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB17:    t9 = (t0 + 5560);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB18:    t12 = (t0 + 5564);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB19:    t15 = (t0 + 5568);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB20:    t18 = (t0 + 5572);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB21:    t21 = (t0 + 5576);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB22:    t24 = (t0 + 5580);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB23:    t27 = (t0 + 5584);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB24:    t30 = (t0 + 5588);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB14;

LAB25:
LAB15:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5692);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(38, ng0);

LAB29:    t2 = (t0 + 3576);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB30;

LAB1:    return;
LAB5:    xsi_set_current_line(39, ng0);
    t33 = (t0 + 5592);
    t35 = (t0 + 3720);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t33, 10U);
    xsi_driver_first_trans_fast_port(t35);
    goto LAB4;

LAB6:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5602);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5612);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5622);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5632);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5642);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5652);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5662);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5672);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5682);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB26:;
LAB27:    t3 = (t0 + 3576);
    *((int *)t3) = 0;
    goto LAB2;

LAB28:    goto LAB27;

LAB30:    goto LAB28;

}


extern void work_a_1869409416_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1869409416_3212880686_p_0,(void *)work_a_1869409416_3212880686_p_1};
	xsi_register_didat("work_a_1869409416_3212880686", "isim/SN74Ls42_TB_isim_beh.exe.sim/work/a_1869409416_3212880686.didat");
	xsi_register_executes(pe);
}
