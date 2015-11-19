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
static const char *ng0 = "D:/ProySisDigAva/P11_SN74LS42/First_term_exam_tb.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_1274704419_2372691052_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;

LAB0:    t1 = (t0 + 2352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2160);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4486);
    *((int *)t2) = 0;
    t4 = (t0 + 4490);
    *((int *)t4) = 15;
    t5 = 0;
    t6 = 15;

LAB8:    if (t5 <= t6)
        goto LAB9;

LAB11:    xsi_set_current_line(93, ng0);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(89, ng0);
    t8 = (t0 + 4486);
    t9 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t7, *((int *)t8), 4);
    t10 = (t7 + 12U);
    t11 = *((unsigned int *)t10);
    t11 = (t11 * 1U);
    t12 = (4U != t11);
    if (t12 == 1)
        goto LAB12;

LAB13:    t13 = (t0 + 2736);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 4U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(90, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2160);
    xsi_process_wait(t2, t3);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB10:    t2 = (t0 + 4486);
    t5 = *((int *)t2);
    t4 = (t0 + 4490);
    t6 = *((int *)t4);
    if (t5 == t6)
        goto LAB11;

LAB18:    t18 = (t5 + 1);
    t5 = t18;
    t8 = (t0 + 4486);
    *((int *)t8) = t5;
    goto LAB8;

LAB12:    xsi_size_not_matching(4U, t11, 0);
    goto LAB13;

LAB14:    goto LAB10;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

LAB19:    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_1274704419_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1274704419_2372691052_p_0};
	xsi_register_didat("work_a_1274704419_2372691052", "isim/First_term_exam_tb_isim_beh.exe.sim/work/a_1274704419_2372691052.didat");
	xsi_register_executes(pe);
}
