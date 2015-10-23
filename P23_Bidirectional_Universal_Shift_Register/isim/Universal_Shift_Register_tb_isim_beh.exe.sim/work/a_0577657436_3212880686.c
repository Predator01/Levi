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
static const char *ng0 = "D:/ProySisDigAva/Levi/P23_Bidirectional_Universal_Shift_Register/Universal_Shift_Register.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0577657436_3212880686_p_0(char *t0)
{
    char t19[16];
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4720);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 4816);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB15;

LAB16:    t3 = (unsigned char)0;

LAB17:    if (t3 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB22;

LAB23:    t3 = (unsigned char)0;

LAB24:    if (t3 != 0)
        goto LAB20;

LAB21:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1992U);
    t7 = *((char **)t2);
    t2 = (t0 + 4816);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t7, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB10:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    t4 = t14;
    goto LAB12;

LAB13:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1832U);
    t6 = *((char **)t1);
    t14 = *((unsigned char *)t6);
    t1 = (t0 + 2312U);
    t7 = *((char **)t1);
    t16 = (3 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t7 + t18);
    t9 = ((IEEE_P_2592010699) + 4024);
    t10 = (t20 + 0U);
    t15 = (t10 + 0U);
    *((int *)t15) = 3;
    t15 = (t10 + 4U);
    *((int *)t15) = 1;
    t15 = (t10 + 8U);
    *((int *)t15) = -1;
    t21 = (1 - 3);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t15 = (t10 + 12U);
    *((unsigned int *)t15) = t22;
    t8 = xsi_base_array_concat(t8, t19, t9, (char)99, t14, (char)97, t1, t20, (char)101);
    t22 = (1U + 3U);
    t23 = (4U != t22);
    if (t23 == 1)
        goto LAB18;

LAB19:    t15 = (t0 + 4816);
    t24 = (t15 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t8, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB8;

LAB15:    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    t3 = t13;
    goto LAB17;

LAB18:    xsi_size_not_matching(4U, t22, 0);
    goto LAB19;

LAB20:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2312U);
    t6 = *((char **)t1);
    t16 = (3 - 2);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t6 + t18);
    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t14 = *((unsigned char *)t8);
    t9 = ((IEEE_P_2592010699) + 4024);
    t10 = (t20 + 0U);
    t15 = (t10 + 0U);
    *((int *)t15) = 2;
    t15 = (t10 + 4U);
    *((int *)t15) = 0;
    t15 = (t10 + 8U);
    *((int *)t15) = -1;
    t21 = (0 - 2);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t15 = (t10 + 12U);
    *((unsigned int *)t15) = t22;
    t7 = xsi_base_array_concat(t7, t19, t9, (char)97, t1, t20, (char)99, t14, (char)101);
    t22 = (3U + 1U);
    t23 = (4U != t22);
    if (t23 == 1)
        goto LAB25;

LAB26:    t15 = (t0 + 4816);
    t24 = (t15 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t7, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB8;

LAB22:    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t3 = t13;
    goto LAB24;

LAB25:    xsi_size_not_matching(4U, t22, 0);
    goto LAB26;

}

static void work_a_0577657436_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(82, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4880);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4736);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0577657436_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0577657436_3212880686_p_0,(void *)work_a_0577657436_3212880686_p_1};
	xsi_register_didat("work_a_0577657436_3212880686", "isim/Universal_Shift_Register_tb_isim_beh.exe.sim/work/a_0577657436_3212880686.didat");
	xsi_register_executes(pe);
}
