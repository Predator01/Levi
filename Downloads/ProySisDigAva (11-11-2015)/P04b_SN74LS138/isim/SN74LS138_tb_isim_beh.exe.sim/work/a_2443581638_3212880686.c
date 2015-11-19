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
static const char *ng0 = "D:/ProySisDigAva/P04_SN74LS138/SN74LS138.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_2443581638_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 4400);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 4288);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2443581638_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(45, ng0);

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

LAB6:    t16 = (t0 + 4464);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 4304);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(3U, t14, 0);
    goto LAB6;

}

static void work_a_2443581638_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned char t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned char t52;
    unsigned int t53;
    char *t54;
    char *t55;
    char *t56;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned char t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t70;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    unsigned char t80;
    unsigned int t81;
    char *t82;
    char *t83;
    char *t84;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    unsigned char t94;
    unsigned int t95;
    char *t96;
    char *t97;
    char *t98;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    unsigned char t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    char *t114;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    char *t121;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t126;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t11 = (t0 + 1832U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    if (t14 != 0)
        goto LAB5;

LAB6:    t21 = (t0 + 2312U);
    t22 = *((char **)t21);
    t21 = (t0 + 6522);
    t24 = 1;
    if (3U == 3U)
        goto LAB9;

LAB10:    t24 = 0;

LAB11:    if (t24 != 0)
        goto LAB7;

LAB8:    t35 = (t0 + 2312U);
    t36 = *((char **)t35);
    t35 = (t0 + 6533);
    t38 = 1;
    if (3U == 3U)
        goto LAB17;

LAB18:    t38 = 0;

LAB19:    if (t38 != 0)
        goto LAB15;

LAB16:    t49 = (t0 + 2312U);
    t50 = *((char **)t49);
    t49 = (t0 + 6544);
    t52 = 1;
    if (3U == 3U)
        goto LAB25;

LAB26:    t52 = 0;

LAB27:    if (t52 != 0)
        goto LAB23;

LAB24:    t63 = (t0 + 2312U);
    t64 = *((char **)t63);
    t63 = (t0 + 6555);
    t66 = 1;
    if (3U == 3U)
        goto LAB33;

LAB34:    t66 = 0;

LAB35:    if (t66 != 0)
        goto LAB31;

LAB32:    t77 = (t0 + 2312U);
    t78 = *((char **)t77);
    t77 = (t0 + 6566);
    t80 = 1;
    if (3U == 3U)
        goto LAB41;

LAB42:    t80 = 0;

LAB43:    if (t80 != 0)
        goto LAB39;

LAB40:    t91 = (t0 + 2312U);
    t92 = *((char **)t91);
    t91 = (t0 + 6577);
    t94 = 1;
    if (3U == 3U)
        goto LAB49;

LAB50:    t94 = 0;

LAB51:    if (t94 != 0)
        goto LAB47;

LAB48:    t105 = (t0 + 2312U);
    t106 = *((char **)t105);
    t105 = (t0 + 6588);
    t108 = 1;
    if (3U == 3U)
        goto LAB57;

LAB58:    t108 = 0;

LAB59:    if (t108 != 0)
        goto LAB55;

LAB56:
LAB63:    t119 = (t0 + 6599);
    t121 = (t0 + 4528);
    t122 = (t121 + 56U);
    t123 = *((char **)t122);
    t124 = (t123 + 56U);
    t125 = *((char **)t124);
    memcpy(t125, t119, 8U);
    xsi_driver_first_trans_fast_port(t121);

LAB2:    t126 = (t0 + 4320);
    *((int *)t126) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 6506);
    t6 = (t0 + 4528);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB5:    t11 = (t0 + 6514);
    t16 = (t0 + 4528);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 8U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB2;

LAB7:    t28 = (t0 + 6525);
    t30 = (t0 + 4528);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t28, 8U);
    xsi_driver_first_trans_fast_port(t30);
    goto LAB2;

LAB9:    t25 = 0;

LAB12:    if (t25 < 3U)
        goto LAB13;
    else
        goto LAB11;

LAB13:    t26 = (t22 + t25);
    t27 = (t21 + t25);
    if (*((unsigned char *)t26) != *((unsigned char *)t27))
        goto LAB10;

LAB14:    t25 = (t25 + 1);
    goto LAB12;

LAB15:    t42 = (t0 + 6536);
    t44 = (t0 + 4528);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    memcpy(t48, t42, 8U);
    xsi_driver_first_trans_fast_port(t44);
    goto LAB2;

LAB17:    t39 = 0;

LAB20:    if (t39 < 3U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t40 = (t36 + t39);
    t41 = (t35 + t39);
    if (*((unsigned char *)t40) != *((unsigned char *)t41))
        goto LAB18;

LAB22:    t39 = (t39 + 1);
    goto LAB20;

LAB23:    t56 = (t0 + 6547);
    t58 = (t0 + 4528);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    memcpy(t62, t56, 8U);
    xsi_driver_first_trans_fast_port(t58);
    goto LAB2;

LAB25:    t53 = 0;

LAB28:    if (t53 < 3U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t54 = (t50 + t53);
    t55 = (t49 + t53);
    if (*((unsigned char *)t54) != *((unsigned char *)t55))
        goto LAB26;

LAB30:    t53 = (t53 + 1);
    goto LAB28;

LAB31:    t70 = (t0 + 6558);
    t72 = (t0 + 4528);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    t75 = (t74 + 56U);
    t76 = *((char **)t75);
    memcpy(t76, t70, 8U);
    xsi_driver_first_trans_fast_port(t72);
    goto LAB2;

LAB33:    t67 = 0;

LAB36:    if (t67 < 3U)
        goto LAB37;
    else
        goto LAB35;

LAB37:    t68 = (t64 + t67);
    t69 = (t63 + t67);
    if (*((unsigned char *)t68) != *((unsigned char *)t69))
        goto LAB34;

LAB38:    t67 = (t67 + 1);
    goto LAB36;

LAB39:    t84 = (t0 + 6569);
    t86 = (t0 + 4528);
    t87 = (t86 + 56U);
    t88 = *((char **)t87);
    t89 = (t88 + 56U);
    t90 = *((char **)t89);
    memcpy(t90, t84, 8U);
    xsi_driver_first_trans_fast_port(t86);
    goto LAB2;

LAB41:    t81 = 0;

LAB44:    if (t81 < 3U)
        goto LAB45;
    else
        goto LAB43;

LAB45:    t82 = (t78 + t81);
    t83 = (t77 + t81);
    if (*((unsigned char *)t82) != *((unsigned char *)t83))
        goto LAB42;

LAB46:    t81 = (t81 + 1);
    goto LAB44;

LAB47:    t98 = (t0 + 6580);
    t100 = (t0 + 4528);
    t101 = (t100 + 56U);
    t102 = *((char **)t101);
    t103 = (t102 + 56U);
    t104 = *((char **)t103);
    memcpy(t104, t98, 8U);
    xsi_driver_first_trans_fast_port(t100);
    goto LAB2;

LAB49:    t95 = 0;

LAB52:    if (t95 < 3U)
        goto LAB53;
    else
        goto LAB51;

LAB53:    t96 = (t92 + t95);
    t97 = (t91 + t95);
    if (*((unsigned char *)t96) != *((unsigned char *)t97))
        goto LAB50;

LAB54:    t95 = (t95 + 1);
    goto LAB52;

LAB55:    t112 = (t0 + 6591);
    t114 = (t0 + 4528);
    t115 = (t114 + 56U);
    t116 = *((char **)t115);
    t117 = (t116 + 56U);
    t118 = *((char **)t117);
    memcpy(t118, t112, 8U);
    xsi_driver_first_trans_fast_port(t114);
    goto LAB2;

LAB57:    t109 = 0;

LAB60:    if (t109 < 3U)
        goto LAB61;
    else
        goto LAB59;

LAB61:    t110 = (t106 + t109);
    t111 = (t105 + t109);
    if (*((unsigned char *)t110) != *((unsigned char *)t111))
        goto LAB58;

LAB62:    t109 = (t109 + 1);
    goto LAB60;

LAB64:    goto LAB2;

}


extern void work_a_2443581638_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2443581638_3212880686_p_0,(void *)work_a_2443581638_3212880686_p_1,(void *)work_a_2443581638_3212880686_p_2};
	xsi_register_didat("work_a_2443581638_3212880686", "isim/SN74LS138_tb_isim_beh.exe.sim/work/a_2443581638_3212880686.didat");
	xsi_register_executes(pe);
}
