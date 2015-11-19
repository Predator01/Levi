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
static const char *ng0 = "D:/ProySisDigAva/Levi/P25_Mustang_Tail_Lights_Controller_FSM/Mustang_Tail_Lights_Controller.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3507244156_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4944);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 4944);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

}

static void work_a_3507244156_3212880686_p_1(char *t0)
{
    char t6[16];
    char t11[16];
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
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t8 = xsi_base_array_concat(t8, t11, t12, (char)97, t1, t6, (char)99, t10, (char)101);
    t13 = (1U + 1U);
    t14 = (t13 + 1U);
    t15 = (3U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 5008);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 4832);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(3U, t14, 0);
    goto LAB6;

}

static void work_a_3507244156_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4848);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 2472U);
    t5 = *((char **)t4);
    t4 = (t0 + 8600);
    t7 = xsi_mem_cmp(t4, t5, 3U);
    if (t7 == 1)
        goto LAB12;

LAB17:    t8 = (t0 + 8603);
    t10 = xsi_mem_cmp(t8, t5, 3U);
    if (t10 == 1)
        goto LAB13;

LAB18:    t11 = (t0 + 8606);
    t13 = xsi_mem_cmp(t11, t5, 3U);
    if (t13 == 1)
        goto LAB14;

LAB19:    t14 = (t0 + 8609);
    t16 = xsi_mem_cmp(t14, t5, 3U);
    if (t16 == 1)
        goto LAB15;

LAB20:
LAB16:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB2;

LAB4:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);

LAB23:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB22:    goto LAB2;

LAB5:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);

LAB26:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB25:    goto LAB2;

LAB6:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);

LAB29:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);

LAB28:    goto LAB2;

LAB7:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);

LAB32:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB31:    goto LAB2;

LAB8:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);

LAB35:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);

LAB34:    goto LAB2;

LAB9:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);

LAB38:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);

LAB37:    goto LAB2;

LAB10:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);

LAB41:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB40:    goto LAB2;

LAB12:    xsi_set_current_line(59, ng0);
    t17 = (t0 + 5072);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)0;
    xsi_driver_first_trans_fast(t17);
    goto LAB11;

LAB13:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB14:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB15:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB21:;
LAB24:;
LAB27:;
LAB30:;
LAB33:;
LAB36:;
LAB39:;
LAB42:;
}

static void work_a_3507244156_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 2768U);
    t2 = *((char **)t1);
    t8 = (5 - 5);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t4 = (t0 + 5136);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 2768U);
    t2 = *((char **)t1);
    t8 = (5 - 2);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t4 = (t0 + 5200);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast_port(t4);
    t1 = (t0 + 4864);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(110, ng0);
    t4 = (t0 + 8612);
    t6 = (t0 + 2768U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t4, 6U);
    goto LAB2;

LAB4:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 8618);
    t4 = (t0 + 2768U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    memcpy(t4, t1, 6U);
    goto LAB2;

LAB5:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 8624);
    t4 = (t0 + 2768U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    memcpy(t4, t1, 6U);
    goto LAB2;

LAB6:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 8630);
    t4 = (t0 + 2768U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    memcpy(t4, t1, 6U);
    goto LAB2;

LAB7:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 8636);
    t4 = (t0 + 2768U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    memcpy(t4, t1, 6U);
    goto LAB2;

LAB8:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 8642);
    t4 = (t0 + 2768U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    memcpy(t4, t1, 6U);
    goto LAB2;

LAB9:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 8648);
    t4 = (t0 + 2768U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    memcpy(t4, t1, 6U);
    goto LAB2;

LAB10:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 8654);
    t4 = (t0 + 2768U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    memcpy(t4, t1, 6U);
    goto LAB2;

LAB11:    xsi_set_current_line(118, ng0);
    goto LAB2;

}


extern void work_a_3507244156_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3507244156_3212880686_p_0,(void *)work_a_3507244156_3212880686_p_1,(void *)work_a_3507244156_3212880686_p_2,(void *)work_a_3507244156_3212880686_p_3};
	xsi_register_didat("work_a_3507244156_3212880686", "isim/Mustang_Tail_Lights_Controller_TB_isim_beh.exe.sim/work/a_3507244156_3212880686.didat");
	xsi_register_executes(pe);
}
