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
static const char *ng0 = "D:/ProySisDigAva/P03_Dec_Binary_7Seg/Dec_Binary_7Seg.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1409200556_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(139, ng0);

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
    t13 = (t0 + 1512U);
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

LAB6:    t22 = (t0 + 4064);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t13, 4U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 3968);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t20, 0);
    goto LAB6;

}

static void work_a_1409200556_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6308);
    t4 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6320);
    t4 = 1;
    if (4U == 4U)
        goto LAB13;

LAB14:    t4 = 0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6332);
    t4 = 1;
    if (4U == 4U)
        goto LAB21;

LAB22:    t4 = 0;

LAB23:    if (t4 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6344);
    t4 = 1;
    if (4U == 4U)
        goto LAB29;

LAB30:    t4 = 0;

LAB31:    if (t4 != 0)
        goto LAB27;

LAB28:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6356);
    t4 = 1;
    if (4U == 4U)
        goto LAB37;

LAB38:    t4 = 0;

LAB39:    if (t4 != 0)
        goto LAB35;

LAB36:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6368);
    t4 = 1;
    if (4U == 4U)
        goto LAB45;

LAB46:    t4 = 0;

LAB47:    if (t4 != 0)
        goto LAB43;

LAB44:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6380);
    t4 = 1;
    if (4U == 4U)
        goto LAB53;

LAB54:    t4 = 0;

LAB55:    if (t4 != 0)
        goto LAB51;

LAB52:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6392);
    t4 = 1;
    if (4U == 4U)
        goto LAB61;

LAB62:    t4 = 0;

LAB63:    if (t4 != 0)
        goto LAB59;

LAB60:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6404);
    t4 = 1;
    if (4U == 4U)
        goto LAB69;

LAB70:    t4 = 0;

LAB71:    if (t4 != 0)
        goto LAB67;

LAB68:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6416);
    t4 = 1;
    if (4U == 4U)
        goto LAB77;

LAB78:    t4 = 0;

LAB79:    if (t4 != 0)
        goto LAB75;

LAB76:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6428);
    t4 = 1;
    if (4U == 4U)
        goto LAB85;

LAB86:    t4 = 0;

LAB87:    if (t4 != 0)
        goto LAB83;

LAB84:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t4 = 1;
    if (4U == 4U)
        goto LAB93;

LAB94:    t4 = 0;

LAB95:    if (t4 != 0)
        goto LAB91;

LAB92:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6452);
    t4 = 1;
    if (4U == 4U)
        goto LAB101;

LAB102:    t4 = 0;

LAB103:    if (t4 != 0)
        goto LAB99;

LAB100:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6464);
    t4 = 1;
    if (4U == 4U)
        goto LAB109;

LAB110:    t4 = 0;

LAB111:    if (t4 != 0)
        goto LAB107;

LAB108:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6476);
    t4 = 1;
    if (4U == 4U)
        goto LAB117;

LAB118:    t4 = 0;

LAB119:    if (t4 != 0)
        goto LAB115;

LAB116:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 6488);
    t3 = (t0 + 4128);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t1 = (t0 + 3984);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(143, ng0);
    t8 = (t0 + 6312);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(144, ng0);
    t8 = (t0 + 6324);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB13:    t5 = 0;

LAB16:    if (t5 < 4U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB14;

LAB18:    t5 = (t5 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(145, ng0);
    t8 = (t0 + 6336);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB21:    t5 = 0;

LAB24:    if (t5 < 4U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB22;

LAB26:    t5 = (t5 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(146, ng0);
    t8 = (t0 + 6348);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB29:    t5 = 0;

LAB32:    if (t5 < 4U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB30;

LAB34:    t5 = (t5 + 1);
    goto LAB32;

LAB35:    xsi_set_current_line(147, ng0);
    t8 = (t0 + 6360);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB37:    t5 = 0;

LAB40:    if (t5 < 4U)
        goto LAB41;
    else
        goto LAB39;

LAB41:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB38;

LAB42:    t5 = (t5 + 1);
    goto LAB40;

LAB43:    xsi_set_current_line(148, ng0);
    t8 = (t0 + 6372);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB45:    t5 = 0;

LAB48:    if (t5 < 4U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB46;

LAB50:    t5 = (t5 + 1);
    goto LAB48;

LAB51:    xsi_set_current_line(149, ng0);
    t8 = (t0 + 6384);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB53:    t5 = 0;

LAB56:    if (t5 < 4U)
        goto LAB57;
    else
        goto LAB55;

LAB57:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB54;

LAB58:    t5 = (t5 + 1);
    goto LAB56;

LAB59:    xsi_set_current_line(150, ng0);
    t8 = (t0 + 6396);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB61:    t5 = 0;

LAB64:    if (t5 < 4U)
        goto LAB65;
    else
        goto LAB63;

LAB65:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB62;

LAB66:    t5 = (t5 + 1);
    goto LAB64;

LAB67:    xsi_set_current_line(151, ng0);
    t8 = (t0 + 6408);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB69:    t5 = 0;

LAB72:    if (t5 < 4U)
        goto LAB73;
    else
        goto LAB71;

LAB73:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB70;

LAB74:    t5 = (t5 + 1);
    goto LAB72;

LAB75:    xsi_set_current_line(152, ng0);
    t8 = (t0 + 6420);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB77:    t5 = 0;

LAB80:    if (t5 < 4U)
        goto LAB81;
    else
        goto LAB79;

LAB81:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB78;

LAB82:    t5 = (t5 + 1);
    goto LAB80;

LAB83:    xsi_set_current_line(153, ng0);
    t8 = (t0 + 6432);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB85:    t5 = 0;

LAB88:    if (t5 < 4U)
        goto LAB89;
    else
        goto LAB87;

LAB89:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB86;

LAB90:    t5 = (t5 + 1);
    goto LAB88;

LAB91:    xsi_set_current_line(154, ng0);
    t8 = (t0 + 6444);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB93:    t5 = 0;

LAB96:    if (t5 < 4U)
        goto LAB97;
    else
        goto LAB95;

LAB97:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB94;

LAB98:    t5 = (t5 + 1);
    goto LAB96;

LAB99:    xsi_set_current_line(155, ng0);
    t8 = (t0 + 6456);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB101:    t5 = 0;

LAB104:    if (t5 < 4U)
        goto LAB105;
    else
        goto LAB103;

LAB105:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB102;

LAB106:    t5 = (t5 + 1);
    goto LAB104;

LAB107:    xsi_set_current_line(156, ng0);
    t8 = (t0 + 6468);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB109:    t5 = 0;

LAB112:    if (t5 < 4U)
        goto LAB113;
    else
        goto LAB111;

LAB113:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB110;

LAB114:    t5 = (t5 + 1);
    goto LAB112;

LAB115:    xsi_set_current_line(157, ng0);
    t8 = (t0 + 6480);
    t10 = (t0 + 4128);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB117:    t5 = 0;

LAB120:    if (t5 < 4U)
        goto LAB121;
    else
        goto LAB119;

LAB121:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB118;

LAB122:    t5 = (t5 + 1);
    goto LAB120;

}

static void work_a_1409200556_3212880686_p_2(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(163, ng0);

LAB3:    t1 = (t0 + 6496);
    t3 = (t0 + 4192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1409200556_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1409200556_3212880686_p_0,(void *)work_a_1409200556_3212880686_p_1,(void *)work_a_1409200556_3212880686_p_2};
	xsi_register_didat("work_a_1409200556_3212880686", "isim/Dec_Binary_7Seg_tb_isim_beh.exe.sim/work/a_1409200556_3212880686.didat");
	xsi_register_executes(pe);
}
