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
static const char *ng0 = "D:/ProySisDigAva/Levi/P05_DM74LS151/DM74LS151.vhd";
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

LAB0:    xsi_set_current_line(36, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t8 = xsi_base_array_concat(t8, t11, t12, (char)97, t1, t6, (char)99, t10, (char)101);
    t13 = (1U + 1U);
    t14 = (t13 + 1U);
    t15 = (3U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 4240);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 4128);
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

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t9 = (t0 + 6371);
    t12 = 1;
    if (3U == 3U)
        goto LAB7;

LAB8:    t12 = 0;

LAB9:    if (t12 != 0)
        goto LAB5;

LAB6:    t28 = (t0 + 2152U);
    t29 = *((char **)t28);
    t28 = (t0 + 6374);
    t31 = 1;
    if (3U == 3U)
        goto LAB15;

LAB16:    t31 = 0;

LAB17:    if (t31 != 0)
        goto LAB13;

LAB14:    t47 = (t0 + 2152U);
    t48 = *((char **)t47);
    t47 = (t0 + 6377);
    t50 = 1;
    if (3U == 3U)
        goto LAB23;

LAB24:    t50 = 0;

LAB25:    if (t50 != 0)
        goto LAB21;

LAB22:    t66 = (t0 + 2152U);
    t67 = *((char **)t66);
    t66 = (t0 + 6380);
    t69 = 1;
    if (3U == 3U)
        goto LAB31;

LAB32:    t69 = 0;

LAB33:    if (t69 != 0)
        goto LAB29;

LAB30:    t85 = (t0 + 2152U);
    t86 = *((char **)t85);
    t85 = (t0 + 6383);
    t88 = 1;
    if (3U == 3U)
        goto LAB39;

LAB40:    t88 = 0;

LAB41:    if (t88 != 0)
        goto LAB37;

LAB38:    t104 = (t0 + 2152U);
    t105 = *((char **)t104);
    t104 = (t0 + 6386);
    t107 = 1;
    if (3U == 3U)
        goto LAB47;

LAB48:    t107 = 0;

LAB49:    if (t107 != 0)
        goto LAB45;

LAB46:    t123 = (t0 + 2152U);
    t124 = *((char **)t123);
    t123 = (t0 + 6389);
    t126 = 1;
    if (3U == 3U)
        goto LAB55;

LAB56:    t126 = 0;

LAB57:    if (t126 != 0)
        goto LAB53;

LAB54:
LAB61:    t142 = (t0 + 1512U);
    t143 = *((char **)t142);
    t144 = (7 - 0);
    t145 = (t144 * 1);
    t146 = (1U * t145);
    t147 = (0 + t146);
    t142 = (t143 + t147);
    t148 = *((unsigned char *)t142);
    t149 = (t0 + 4304);
    t150 = (t149 + 56U);
    t151 = *((char **)t150);
    t152 = (t151 + 56U);
    t153 = *((char **)t152);
    *((unsigned char *)t153) = t148;
    xsi_driver_first_trans_fast_port(t149);

LAB2:    t154 = (t0 + 4144);
    *((int *)t154) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 4304);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t16 = (t0 + 1512U);
    t17 = *((char **)t16);
    t18 = (0 - 0);
    t19 = (t18 * 1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = (t0 + 4304);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t22;
    xsi_driver_first_trans_fast_port(t23);
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
    t37 = (1 - 0);
    t38 = (t37 * 1);
    t39 = (1U * t38);
    t40 = (0 + t39);
    t35 = (t36 + t40);
    t41 = *((unsigned char *)t35);
    t42 = (t0 + 4304);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    *((unsigned char *)t46) = t41;
    xsi_driver_first_trans_fast_port(t42);
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
    t56 = (2 - 0);
    t57 = (t56 * 1);
    t58 = (1U * t57);
    t59 = (0 + t58);
    t54 = (t55 + t59);
    t60 = *((unsigned char *)t54);
    t61 = (t0 + 4304);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    *((unsigned char *)t65) = t60;
    xsi_driver_first_trans_fast_port(t61);
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
    t75 = (3 - 0);
    t76 = (t75 * 1);
    t77 = (1U * t76);
    t78 = (0 + t77);
    t73 = (t74 + t78);
    t79 = *((unsigned char *)t73);
    t80 = (t0 + 4304);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    t83 = (t82 + 56U);
    t84 = *((char **)t83);
    *((unsigned char *)t84) = t79;
    xsi_driver_first_trans_fast_port(t80);
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
    t94 = (4 - 0);
    t95 = (t94 * 1);
    t96 = (1U * t95);
    t97 = (0 + t96);
    t92 = (t93 + t97);
    t98 = *((unsigned char *)t92);
    t99 = (t0 + 4304);
    t100 = (t99 + 56U);
    t101 = *((char **)t100);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    *((unsigned char *)t103) = t98;
    xsi_driver_first_trans_fast_port(t99);
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
    t113 = (5 - 0);
    t114 = (t113 * 1);
    t115 = (1U * t114);
    t116 = (0 + t115);
    t111 = (t112 + t116);
    t117 = *((unsigned char *)t111);
    t118 = (t0 + 4304);
    t119 = (t118 + 56U);
    t120 = *((char **)t119);
    t121 = (t120 + 56U);
    t122 = *((char **)t121);
    *((unsigned char *)t122) = t117;
    xsi_driver_first_trans_fast_port(t118);
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
    t132 = (6 - 0);
    t133 = (t132 * 1);
    t134 = (1U * t133);
    t135 = (0 + t134);
    t130 = (t131 + t135);
    t136 = *((unsigned char *)t130);
    t137 = (t0 + 4304);
    t138 = (t137 + 56U);
    t139 = *((char **)t138);
    t140 = (t139 + 56U);
    t141 = *((char **)t140);
    *((unsigned char *)t141) = t136;
    xsi_driver_first_trans_fast_port(t137);
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
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned char t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned char t42;
    unsigned char t43;
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
    char *t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned char t62;
    unsigned char t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    unsigned char t72;
    unsigned int t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned char t82;
    unsigned char t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    unsigned char t92;
    unsigned int t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned char t102;
    unsigned char t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    char *t108;
    char *t109;
    char *t110;
    unsigned char t112;
    unsigned int t113;
    char *t114;
    char *t115;
    char *t116;
    char *t117;
    int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned char t122;
    unsigned char t123;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;
    char *t130;
    unsigned char t132;
    unsigned int t133;
    char *t134;
    char *t135;
    char *t136;
    char *t137;
    int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned char t142;
    unsigned char t143;
    char *t144;
    char *t145;
    char *t146;
    char *t147;
    char *t148;
    char *t149;
    char *t150;
    int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned char t155;
    unsigned char t156;
    char *t157;
    char *t158;
    char *t159;
    char *t160;
    char *t161;
    char *t162;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t9 = (t0 + 6392);
    t12 = 1;
    if (3U == 3U)
        goto LAB7;

LAB8:    t12 = 0;

LAB9:    if (t12 != 0)
        goto LAB5;

LAB6:    t29 = (t0 + 2152U);
    t30 = *((char **)t29);
    t29 = (t0 + 6395);
    t32 = 1;
    if (3U == 3U)
        goto LAB15;

LAB16:    t32 = 0;

LAB17:    if (t32 != 0)
        goto LAB13;

LAB14:    t49 = (t0 + 2152U);
    t50 = *((char **)t49);
    t49 = (t0 + 6398);
    t52 = 1;
    if (3U == 3U)
        goto LAB23;

LAB24:    t52 = 0;

LAB25:    if (t52 != 0)
        goto LAB21;

LAB22:    t69 = (t0 + 2152U);
    t70 = *((char **)t69);
    t69 = (t0 + 6401);
    t72 = 1;
    if (3U == 3U)
        goto LAB31;

LAB32:    t72 = 0;

LAB33:    if (t72 != 0)
        goto LAB29;

LAB30:    t89 = (t0 + 2152U);
    t90 = *((char **)t89);
    t89 = (t0 + 6404);
    t92 = 1;
    if (3U == 3U)
        goto LAB39;

LAB40:    t92 = 0;

LAB41:    if (t92 != 0)
        goto LAB37;

LAB38:    t109 = (t0 + 2152U);
    t110 = *((char **)t109);
    t109 = (t0 + 6407);
    t112 = 1;
    if (3U == 3U)
        goto LAB47;

LAB48:    t112 = 0;

LAB49:    if (t112 != 0)
        goto LAB45;

LAB46:    t129 = (t0 + 2152U);
    t130 = *((char **)t129);
    t129 = (t0 + 6410);
    t132 = 1;
    if (3U == 3U)
        goto LAB55;

LAB56:    t132 = 0;

LAB57:    if (t132 != 0)
        goto LAB53;

LAB54:
LAB61:    t149 = (t0 + 1512U);
    t150 = *((char **)t149);
    t151 = (7 - 0);
    t152 = (t151 * 1);
    t153 = (1U * t152);
    t154 = (0 + t153);
    t149 = (t150 + t154);
    t155 = *((unsigned char *)t149);
    t156 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t155);
    t157 = (t0 + 4368);
    t158 = (t157 + 56U);
    t159 = *((char **)t158);
    t160 = (t159 + 56U);
    t161 = *((char **)t160);
    *((unsigned char *)t161) = t156;
    xsi_driver_first_trans_fast_port(t157);

LAB2:    t162 = (t0 + 4160);
    *((int *)t162) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 4368);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t16 = (t0 + 1512U);
    t17 = *((char **)t16);
    t18 = (0 - 0);
    t19 = (t18 * 1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t22);
    t24 = (t0 + 4368);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t23;
    xsi_driver_first_trans_fast_port(t24);
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

LAB13:    t36 = (t0 + 1512U);
    t37 = *((char **)t36);
    t38 = (1 - 0);
    t39 = (t38 * 1);
    t40 = (1U * t39);
    t41 = (0 + t40);
    t36 = (t37 + t41);
    t42 = *((unsigned char *)t36);
    t43 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t42);
    t44 = (t0 + 4368);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    *((unsigned char *)t48) = t43;
    xsi_driver_first_trans_fast_port(t44);
    goto LAB2;

LAB15:    t33 = 0;

LAB18:    if (t33 < 3U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t34 = (t30 + t33);
    t35 = (t29 + t33);
    if (*((unsigned char *)t34) != *((unsigned char *)t35))
        goto LAB16;

LAB20:    t33 = (t33 + 1);
    goto LAB18;

LAB21:    t56 = (t0 + 1512U);
    t57 = *((char **)t56);
    t58 = (2 - 0);
    t59 = (t58 * 1);
    t60 = (1U * t59);
    t61 = (0 + t60);
    t56 = (t57 + t61);
    t62 = *((unsigned char *)t56);
    t63 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t62);
    t64 = (t0 + 4368);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    *((unsigned char *)t68) = t63;
    xsi_driver_first_trans_fast_port(t64);
    goto LAB2;

LAB23:    t53 = 0;

LAB26:    if (t53 < 3U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t54 = (t50 + t53);
    t55 = (t49 + t53);
    if (*((unsigned char *)t54) != *((unsigned char *)t55))
        goto LAB24;

LAB28:    t53 = (t53 + 1);
    goto LAB26;

LAB29:    t76 = (t0 + 1512U);
    t77 = *((char **)t76);
    t78 = (3 - 0);
    t79 = (t78 * 1);
    t80 = (1U * t79);
    t81 = (0 + t80);
    t76 = (t77 + t81);
    t82 = *((unsigned char *)t76);
    t83 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t82);
    t84 = (t0 + 4368);
    t85 = (t84 + 56U);
    t86 = *((char **)t85);
    t87 = (t86 + 56U);
    t88 = *((char **)t87);
    *((unsigned char *)t88) = t83;
    xsi_driver_first_trans_fast_port(t84);
    goto LAB2;

LAB31:    t73 = 0;

LAB34:    if (t73 < 3U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t74 = (t70 + t73);
    t75 = (t69 + t73);
    if (*((unsigned char *)t74) != *((unsigned char *)t75))
        goto LAB32;

LAB36:    t73 = (t73 + 1);
    goto LAB34;

LAB37:    t96 = (t0 + 1512U);
    t97 = *((char **)t96);
    t98 = (4 - 0);
    t99 = (t98 * 1);
    t100 = (1U * t99);
    t101 = (0 + t100);
    t96 = (t97 + t101);
    t102 = *((unsigned char *)t96);
    t103 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t102);
    t104 = (t0 + 4368);
    t105 = (t104 + 56U);
    t106 = *((char **)t105);
    t107 = (t106 + 56U);
    t108 = *((char **)t107);
    *((unsigned char *)t108) = t103;
    xsi_driver_first_trans_fast_port(t104);
    goto LAB2;

LAB39:    t93 = 0;

LAB42:    if (t93 < 3U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t94 = (t90 + t93);
    t95 = (t89 + t93);
    if (*((unsigned char *)t94) != *((unsigned char *)t95))
        goto LAB40;

LAB44:    t93 = (t93 + 1);
    goto LAB42;

LAB45:    t116 = (t0 + 1512U);
    t117 = *((char **)t116);
    t118 = (5 - 0);
    t119 = (t118 * 1);
    t120 = (1U * t119);
    t121 = (0 + t120);
    t116 = (t117 + t121);
    t122 = *((unsigned char *)t116);
    t123 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t122);
    t124 = (t0 + 4368);
    t125 = (t124 + 56U);
    t126 = *((char **)t125);
    t127 = (t126 + 56U);
    t128 = *((char **)t127);
    *((unsigned char *)t128) = t123;
    xsi_driver_first_trans_fast_port(t124);
    goto LAB2;

LAB47:    t113 = 0;

LAB50:    if (t113 < 3U)
        goto LAB51;
    else
        goto LAB49;

LAB51:    t114 = (t110 + t113);
    t115 = (t109 + t113);
    if (*((unsigned char *)t114) != *((unsigned char *)t115))
        goto LAB48;

LAB52:    t113 = (t113 + 1);
    goto LAB50;

LAB53:    t136 = (t0 + 1512U);
    t137 = *((char **)t136);
    t138 = (6 - 0);
    t139 = (t138 * 1);
    t140 = (1U * t139);
    t141 = (0 + t140);
    t136 = (t137 + t141);
    t142 = *((unsigned char *)t136);
    t143 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t142);
    t144 = (t0 + 4368);
    t145 = (t144 + 56U);
    t146 = *((char **)t145);
    t147 = (t146 + 56U);
    t148 = *((char **)t147);
    *((unsigned char *)t148) = t143;
    xsi_driver_first_trans_fast_port(t144);
    goto LAB2;

LAB55:    t133 = 0;

LAB58:    if (t133 < 3U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t134 = (t130 + t133);
    t135 = (t129 + t133);
    if (*((unsigned char *)t134) != *((unsigned char *)t135))
        goto LAB56;

LAB60:    t133 = (t133 + 1);
    goto LAB58;

LAB62:    goto LAB2;

}


extern void work_a_0772837150_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0772837150_3212880686_p_0,(void *)work_a_0772837150_3212880686_p_1,(void *)work_a_0772837150_3212880686_p_2};
	xsi_register_didat("work_a_0772837150_3212880686", "isim/DM74LS151_TB_isim_beh.exe.sim/work/a_0772837150_3212880686.didat");
	xsi_register_executes(pe);
}
