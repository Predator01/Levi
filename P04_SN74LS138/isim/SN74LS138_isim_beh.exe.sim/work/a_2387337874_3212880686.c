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
static const char *ng0 = "D:/ProySisDigAva/Levi/P04_SN74LS138/SN74LS138.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_2387337874_3212880686_p_0(char *t0)
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

static void work_a_2387337874_3212880686_p_1(char *t0)
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

static void work_a_2387337874_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
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
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned char t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned char t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    unsigned char t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
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
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    unsigned char t102;
    unsigned int t103;
    char *t104;
    char *t105;
    char *t106;
    char *t108;
    char *t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;

LAB0:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t15 = (t0 + 2312U);
    t16 = *((char **)t15);
    t15 = (t0 + 6586);
    t18 = 1;
    if (3U == 3U)
        goto LAB10;

LAB11:    t18 = 0;

LAB12:    if (t18 != 0)
        goto LAB8;

LAB9:    t29 = (t0 + 2312U);
    t30 = *((char **)t29);
    t29 = (t0 + 6597);
    t32 = 1;
    if (3U == 3U)
        goto LAB18;

LAB19:    t32 = 0;

LAB20:    if (t32 != 0)
        goto LAB16;

LAB17:    t43 = (t0 + 2312U);
    t44 = *((char **)t43);
    t43 = (t0 + 6608);
    t46 = 1;
    if (3U == 3U)
        goto LAB26;

LAB27:    t46 = 0;

LAB28:    if (t46 != 0)
        goto LAB24;

LAB25:    t57 = (t0 + 2312U);
    t58 = *((char **)t57);
    t57 = (t0 + 6619);
    t60 = 1;
    if (3U == 3U)
        goto LAB34;

LAB35:    t60 = 0;

LAB36:    if (t60 != 0)
        goto LAB32;

LAB33:    t71 = (t0 + 2312U);
    t72 = *((char **)t71);
    t71 = (t0 + 6630);
    t74 = 1;
    if (3U == 3U)
        goto LAB42;

LAB43:    t74 = 0;

LAB44:    if (t74 != 0)
        goto LAB40;

LAB41:    t85 = (t0 + 2312U);
    t86 = *((char **)t85);
    t85 = (t0 + 6641);
    t88 = 1;
    if (3U == 3U)
        goto LAB50;

LAB51:    t88 = 0;

LAB52:    if (t88 != 0)
        goto LAB48;

LAB49:    t99 = (t0 + 2312U);
    t100 = *((char **)t99);
    t99 = (t0 + 6652);
    t102 = 1;
    if (3U == 3U)
        goto LAB58;

LAB59:    t102 = 0;

LAB60:    if (t102 != 0)
        goto LAB56;

LAB57:
LAB64:    t113 = (t0 + 6663);
    t115 = (t0 + 4528);
    t116 = (t115 + 56U);
    t117 = *((char **)t116);
    t118 = (t117 + 56U);
    t119 = *((char **)t118);
    memcpy(t119, t113, 8U);
    xsi_driver_first_trans_fast_port(t115);

LAB2:    t120 = (t0 + 4320);
    *((int *)t120) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 6578);
    t10 = (t0 + 4528);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t22 = (t0 + 6589);
    t24 = (t0 + 4528);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t22, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB2;

LAB10:    t19 = 0;

LAB13:    if (t19 < 3U)
        goto LAB14;
    else
        goto LAB12;

LAB14:    t20 = (t16 + t19);
    t21 = (t15 + t19);
    if (*((unsigned char *)t20) != *((unsigned char *)t21))
        goto LAB11;

LAB15:    t19 = (t19 + 1);
    goto LAB13;

LAB16:    t36 = (t0 + 6600);
    t38 = (t0 + 4528);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t36, 8U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB2;

LAB18:    t33 = 0;

LAB21:    if (t33 < 3U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t34 = (t30 + t33);
    t35 = (t29 + t33);
    if (*((unsigned char *)t34) != *((unsigned char *)t35))
        goto LAB19;

LAB23:    t33 = (t33 + 1);
    goto LAB21;

LAB24:    t50 = (t0 + 6611);
    t52 = (t0 + 4528);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memcpy(t56, t50, 8U);
    xsi_driver_first_trans_fast_port(t52);
    goto LAB2;

LAB26:    t47 = 0;

LAB29:    if (t47 < 3U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t48 = (t44 + t47);
    t49 = (t43 + t47);
    if (*((unsigned char *)t48) != *((unsigned char *)t49))
        goto LAB27;

LAB31:    t47 = (t47 + 1);
    goto LAB29;

LAB32:    t64 = (t0 + 6622);
    t66 = (t0 + 4528);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    memcpy(t70, t64, 8U);
    xsi_driver_first_trans_fast_port(t66);
    goto LAB2;

LAB34:    t61 = 0;

LAB37:    if (t61 < 3U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t62 = (t58 + t61);
    t63 = (t57 + t61);
    if (*((unsigned char *)t62) != *((unsigned char *)t63))
        goto LAB35;

LAB39:    t61 = (t61 + 1);
    goto LAB37;

LAB40:    t78 = (t0 + 6633);
    t80 = (t0 + 4528);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    t83 = (t82 + 56U);
    t84 = *((char **)t83);
    memcpy(t84, t78, 8U);
    xsi_driver_first_trans_fast_port(t80);
    goto LAB2;

LAB42:    t75 = 0;

LAB45:    if (t75 < 3U)
        goto LAB46;
    else
        goto LAB44;

LAB46:    t76 = (t72 + t75);
    t77 = (t71 + t75);
    if (*((unsigned char *)t76) != *((unsigned char *)t77))
        goto LAB43;

LAB47:    t75 = (t75 + 1);
    goto LAB45;

LAB48:    t92 = (t0 + 6644);
    t94 = (t0 + 4528);
    t95 = (t94 + 56U);
    t96 = *((char **)t95);
    t97 = (t96 + 56U);
    t98 = *((char **)t97);
    memcpy(t98, t92, 8U);
    xsi_driver_first_trans_fast_port(t94);
    goto LAB2;

LAB50:    t89 = 0;

LAB53:    if (t89 < 3U)
        goto LAB54;
    else
        goto LAB52;

LAB54:    t90 = (t86 + t89);
    t91 = (t85 + t89);
    if (*((unsigned char *)t90) != *((unsigned char *)t91))
        goto LAB51;

LAB55:    t89 = (t89 + 1);
    goto LAB53;

LAB56:    t106 = (t0 + 6655);
    t108 = (t0 + 4528);
    t109 = (t108 + 56U);
    t110 = *((char **)t109);
    t111 = (t110 + 56U);
    t112 = *((char **)t111);
    memcpy(t112, t106, 8U);
    xsi_driver_first_trans_fast_port(t108);
    goto LAB2;

LAB58:    t103 = 0;

LAB61:    if (t103 < 3U)
        goto LAB62;
    else
        goto LAB60;

LAB62:    t104 = (t100 + t103);
    t105 = (t99 + t103);
    if (*((unsigned char *)t104) != *((unsigned char *)t105))
        goto LAB59;

LAB63:    t103 = (t103 + 1);
    goto LAB61;

LAB65:    goto LAB2;

}


extern void work_a_2387337874_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2387337874_3212880686_p_0,(void *)work_a_2387337874_3212880686_p_1,(void *)work_a_2387337874_3212880686_p_2};
	xsi_register_didat("work_a_2387337874_3212880686", "isim/SN74LS138_isim_beh.exe.sim/work/a_2387337874_3212880686.didat");
	xsi_register_executes(pe);
}
