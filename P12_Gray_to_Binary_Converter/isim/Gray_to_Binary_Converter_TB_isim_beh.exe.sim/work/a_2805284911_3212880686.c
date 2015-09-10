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
static const char *ng0 = "D:/ProySisDigAva/Levi/P12_Gray_to_Binary_Converter/Gray_to_Binary_Converter.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_2805284911_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    int t22;
    char *t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;

LAB0:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (4 - 1);
    t4 = (t3 - 3);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = (t0 + 1768U);
    t10 = *((char **)t9);
    t11 = (4 - 1);
    t12 = (t11 - 3);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t9 = (t10 + t15);
    *((unsigned char *)t9) = t8;
    xsi_set_current_line(36, ng0);
    t3 = (4 - 2);
    t1 = (t0 + 5620);
    *((int *)t1) = t3;
    t2 = (t0 + 5624);
    *((int *)t2) = 0;
    t4 = t3;
    t11 = 0;

LAB2:    if (t4 >= t11)
        goto LAB3;

LAB5:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t3 = (4 - 1);
    t5 = (3 - t3);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t9 = (t0 + 3416);
    t10 = (t9 + 56U);
    t18 = *((char **)t10);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t1, 4U);
    xsi_driver_first_trans_delta(t9, 0U, 4U, 0LL);
    t1 = (t0 + 3320);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(37, ng0);
    t9 = (t0 + 1768U);
    t10 = *((char **)t9);
    t9 = (t0 + 5620);
    t12 = *((int *)t9);
    t16 = (t12 + 1);
    t17 = (t16 - 3);
    t5 = (t17 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, t16);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t18 = (t10 + t7);
    t8 = *((unsigned char *)t18);
    t19 = (t0 + 1032U);
    t20 = *((char **)t19);
    t19 = (t0 + 5620);
    t21 = *((int *)t19);
    t22 = (t21 - 3);
    t13 = (t22 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t19));
    t14 = (1U * t13);
    t15 = (0 + t14);
    t23 = (t20 + t15);
    t24 = *((unsigned char *)t23);
    t25 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t8, t24);
    t26 = (t0 + 1768U);
    t27 = *((char **)t26);
    t26 = (t0 + 5620);
    t28 = *((int *)t26);
    t29 = (t28 - 3);
    t30 = (t29 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t26));
    t31 = (1U * t30);
    t32 = (0 + t31);
    t33 = (t27 + t32);
    *((unsigned char *)t33) = t25;

LAB4:    t1 = (t0 + 5620);
    t4 = *((int *)t1);
    t2 = (t0 + 5624);
    t11 = *((int *)t2);
    if (t4 == t11)
        goto LAB5;

LAB6:    t3 = (t4 + -1);
    t4 = t3;
    t9 = (t0 + 5620);
    *((int *)t9) = t4;
    goto LAB2;

}

static void work_a_2805284911_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(42, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3480);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3336);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2805284911_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2805284911_3212880686_p_0,(void *)work_a_2805284911_3212880686_p_1};
	xsi_register_didat("work_a_2805284911_3212880686", "isim/Gray_to_Binary_Converter_TB_isim_beh.exe.sim/work/a_2805284911_3212880686.didat");
	xsi_register_executes(pe);
}
