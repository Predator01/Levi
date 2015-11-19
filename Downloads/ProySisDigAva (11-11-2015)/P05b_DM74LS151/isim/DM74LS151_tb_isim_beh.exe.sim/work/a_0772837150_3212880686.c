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
static const char *ng0 = "D:/ProySisDigAva/P05_DM74LS151/DM74LS151.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_0772837150_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(40, ng0);

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

LAB6:    t16 = (t0 + 4664);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 4536);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(3U, t14, 0);
    goto LAB6;

}

static void work_a_0772837150_3212880686_p_1(char *t0)
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
    char *t10;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned char t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned char t50;
    unsigned int t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned char t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned char t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned char t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    unsigned char t88;
    unsigned int t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned char t98;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    char *t105;
    unsigned char t107;
    unsigned int t108;
    char *t109;
    char *t110;
    char *t111;
    char *t112;
    int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned char t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    char *t122;
    char *t123;
    char *t124;
    unsigned char t126;
    unsigned int t127;
    char *t128;
    char *t129;
    char *t130;
    char *t131;
    int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned char t136;
    char *t137;
    char *t138;
    char *t139;
    char *t140;
    char *t141;
    char *t142;
    char *t143;
    int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned char t148;
    char *t149;
    char *t150;
    char *t151;
    char *t152;
    char *t153;
    char *t154;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t9 = (t0 + 6896);
    t12 = 1;
    if (3U == 3U)
        goto LAB7;

LAB8:    t12 = 0;

LAB9:    if (t12 != 0)
        goto LAB5;

LAB6:    t28 = (t0 + 2152U);
    t29 = *((char **)t28);
    t28 = (t0 + 6899);
    t31 = 1;
    if (3U == 3U)
        goto LAB15;

LAB16:    t31 = 0;

LAB17:    if (t31 != 0)
        goto LAB13;

LAB14:    t47 = (t0 + 2152U);
    t48 = *((char **)t47);
    t47 = (t0 + 6902);
    t50 = 1;
    if (3U == 3U)
        goto LAB23;

LAB24:    t50 = 0;

LAB25:    if (t50 != 0)
        goto LAB21;

LAB22:    t66 = (t0 + 2152U);
    t67 = *((char **)t66);
    t66 = (t0 + 6905);
    t69 = 1;
    if (3U == 3U)
        goto LAB31;

LAB32:    t69 = 0;

LAB33:    if (t69 != 0)
        goto LAB29;

LAB30:    t85 = (t0 + 2152U);
    t86 = *((char **)t85);
    t85 = (t0 + 6908);
    t88 = 1;
    if (3U == 3U)
        goto LAB39;

LAB40:    t88 = 0;

LAB41:    if (t88 != 0)
        goto LAB37;

LAB38:    t104 = (t0 + 2152U);
    t105 = *((char **)t104);
    t104 = (t0 + 6911);
    t107 = 1;
    if (3U == 3U)
        goto LAB47;

LAB48:    t107 = 0;

LAB49:    if (t107 != 0)
        goto LAB45;

LAB46:    t123 = (t0 + 2152U);
    t124 = *((char **)t123);
    t123 = (t0 + 6914);
    t126 = 1;
    if (3U == 3U)
        goto LAB55;

LAB56:    t126 = 0;

LAB57:    if (t126 != 0)
        goto LAB53;

LAB54:
LAB61:    t142 = (t0 + 1512U);
    t143 = *((char **)t142);
    t144 = (7 - 7);
    t145 = (t144 * -1);
    t146 = (1U * t145);
    t147 = (0 + t146);
    t142 = (t143 + t147);
    t148 = *((unsigned char *)t142);
    t149 = (t0 + 4728);
    t150 = (t149 + 56U);
    t151 = *((char **)t150);
    t152 = (t151 + 56U);
    t153 = *((char **)t152);
    *((unsigned char *)t153) = t148;
    xsi_driver_first_trans_fast(t149);

LAB2:    t154 = (t0 + 4552);
    *((int *)t154) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 4728);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    t16 = (t0 + 1512U);
    t17 = *((char **)t16);
    t18 = (0 - 7);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = (t0 + 4728);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t22;
    xsi_driver_first_trans_fast(t23);
    goto LAB2;

LAB7:    t13 = 0;

LAB10:    if (t13 < 3U)
        goto LAB11;
    else
        goto LAB9;

LAB11:    t14 = (t10 + t13);
    t15 = (t9 + t13);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB8;

LAB12:    t13 = (t13 + 1);
    goto LAB10;

LAB13:    t35 = (t0 + 1512U);
    t36 = *((char **)t35);
    t37 = (1 - 7);
    t38 = (t37 * -1);
    t39 = (1U * t38);
    t40 = (0 + t39);
    t35 = (t36 + t40);
    t41 = *((unsigned char *)t35);
    t42 = (t0 + 4728);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    *((unsigned char *)t46) = t41;
    xsi_driver_first_trans_fast(t42);
    goto LAB2;

LAB15:    t32 = 0;

LAB18:    if (t32 < 3U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t33 = (t29 + t32);
    t34 = (t28 + t32);
    if (*((unsigned char *)t33) != *((unsigned char *)t34))
        goto LAB16;

LAB20:    t32 = (t32 + 1);
    goto LAB18;

LAB21:    t54 = (t0 + 1512U);
    t55 = *((char **)t54);
    t56 = (2 - 7);
    t57 = (t56 * -1);
    t58 = (1U * t57);
    t59 = (0 + t58);
    t54 = (t55 + t59);
    t60 = *((unsigned char *)t54);
    t61 = (t0 + 4728);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    *((unsigned char *)t65) = t60;
    xsi_driver_first_trans_fast(t61);
    goto LAB2;

LAB23:    t51 = 0;

LAB26:    if (t51 < 3U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t52 = (t48 + t51);
    t53 = (t47 + t51);
    if (*((unsigned char *)t52) != *((unsigned char *)t53))
        goto LAB24;

LAB28:    t51 = (t51 + 1);
    goto LAB26;

LAB29:    t73 = (t0 + 1512U);
    t74 = *((char **)t73);
    t75 = (3 - 7);
    t76 = (t75 * -1);
    t77 = (1U * t76);
    t78 = (0 + t77);
    t73 = (t74 + t78);
    t79 = *((unsigned char *)t73);
    t80 = (t0 + 4728);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    t83 = (t82 + 56U);
    t84 = *((char **)t83);
    *((unsigned char *)t84) = t79;
    xsi_driver_first_trans_fast(t80);
    goto LAB2;

LAB31:    t70 = 0;

LAB34:    if (t70 < 3U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t71 = (t67 + t70);
    t72 = (t66 + t70);
    if (*((unsigned char *)t71) != *((unsigned char *)t72))
        goto LAB32;

LAB36:    t70 = (t70 + 1);
    goto LAB34;

LAB37:    t92 = (t0 + 1512U);
    t93 = *((char **)t92);
    t94 = (4 - 7);
    t95 = (t94 * -1);
    t96 = (1U * t95);
    t97 = (0 + t96);
    t92 = (t93 + t97);
    t98 = *((unsigned char *)t92);
    t99 = (t0 + 4728);
    t100 = (t99 + 56U);
    t101 = *((char **)t100);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    *((unsigned char *)t103) = t98;
    xsi_driver_first_trans_fast(t99);
    goto LAB2;

LAB39:    t89 = 0;

LAB42:    if (t89 < 3U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t90 = (t86 + t89);
    t91 = (t85 + t89);
    if (*((unsigned char *)t90) != *((unsigned char *)t91))
        goto LAB40;

LAB44:    t89 = (t89 + 1);
    goto LAB42;

LAB45:    t111 = (t0 + 1512U);
    t112 = *((char **)t111);
    t113 = (5 - 7);
    t114 = (t113 * -1);
    t115 = (1U * t114);
    t116 = (0 + t115);
    t111 = (t112 + t116);
    t117 = *((unsigned char *)t111);
    t118 = (t0 + 4728);
    t119 = (t118 + 56U);
    t120 = *((char **)t119);
    t121 = (t120 + 56U);
    t122 = *((char **)t121);
    *((unsigned char *)t122) = t117;
    xsi_driver_first_trans_fast(t118);
    goto LAB2;

LAB47:    t108 = 0;

LAB50:    if (t108 < 3U)
        goto LAB51;
    else
        goto LAB49;

LAB51:    t109 = (t105 + t108);
    t110 = (t104 + t108);
    if (*((unsigned char *)t109) != *((unsigned char *)t110))
        goto LAB48;

LAB52:    t108 = (t108 + 1);
    goto LAB50;

LAB53:    t130 = (t0 + 1512U);
    t131 = *((char **)t130);
    t132 = (6 - 7);
    t133 = (t132 * -1);
    t134 = (1U * t133);
    t135 = (0 + t134);
    t130 = (t131 + t135);
    t136 = *((unsigned char *)t130);
    t137 = (t0 + 4728);
    t138 = (t137 + 56U);
    t139 = *((char **)t138);
    t140 = (t139 + 56U);
    t141 = *((char **)t140);
    *((unsigned char *)t141) = t136;
    xsi_driver_first_trans_fast(t137);
    goto LAB2;

LAB55:    t127 = 0;

LAB58:    if (t127 < 3U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t128 = (t124 + t127);
    t129 = (t123 + t127);
    if (*((unsigned char *)t128) != *((unsigned char *)t129))
        goto LAB56;

LAB60:    t127 = (t127 + 1);
    goto LAB58;

LAB62:    goto LAB2;

}

static void work_a_0772837150_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4792);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4568);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0772837150_3212880686_p_3(char *t0)
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

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 4856);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t9 = (t0 + 4584);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0772837150_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0772837150_3212880686_p_0,(void *)work_a_0772837150_3212880686_p_1,(void *)work_a_0772837150_3212880686_p_2,(void *)work_a_0772837150_3212880686_p_3};
	xsi_register_didat("work_a_0772837150_3212880686", "isim/DM74LS151_tb_isim_beh.exe.sim/work/a_0772837150_3212880686.didat");
	xsi_register_executes(pe);
}
