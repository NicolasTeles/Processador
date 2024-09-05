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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Processador/UC_ULA.vhd";



static void work_a_2768456230_3212880686_p_0(char *t0)
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
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5672);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5722);
    t4 = 1;
    if (2U == 2U)
        goto LAB62;

LAB63:    t4 = 0;

LAB64:    if (t4 != 0)
        goto LAB60;

LAB61:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5726);
    t4 = 1;
    if (2U == 2U)
        goto LAB70;

LAB71:    t4 = 0;

LAB72:    if (t4 != 0)
        goto LAB68;

LAB69:
LAB3:    t1 = (t0 + 3304);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 5674);
    t11 = 1;
    if (6U == 6U)
        goto LAB14;

LAB15:    t11 = 0;

LAB16:    if (t11 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5682);
    t4 = 1;
    if (6U == 6U)
        goto LAB22;

LAB23:    t4 = 0;

LAB24:    if (t4 != 0)
        goto LAB20;

LAB21:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5690);
    t4 = 1;
    if (6U == 6U)
        goto LAB30;

LAB31:    t4 = 0;

LAB32:    if (t4 != 0)
        goto LAB28;

LAB29:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5698);
    t4 = 1;
    if (6U == 6U)
        goto LAB38;

LAB39:    t4 = 0;

LAB40:    if (t4 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5706);
    t4 = 1;
    if (6U == 6U)
        goto LAB46;

LAB47:    t4 = 0;

LAB48:    if (t4 != 0)
        goto LAB44;

LAB45:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5714);
    t4 = 1;
    if (6U == 6U)
        goto LAB54;

LAB55:    t4 = 0;

LAB56:    if (t4 != 0)
        goto LAB52;

LAB53:
LAB12:    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(48, ng0);
    t15 = (t0 + 3384);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 5680);
    t3 = (t0 + 3512);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3576);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB14:    t12 = 0;

LAB17:    if (t12 < 6U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t13 = (t9 + t12);
    t14 = (t8 + t12);
    if (*((unsigned char *)t13) != *((unsigned char *)t14))
        goto LAB15;

LAB19:    t12 = (t12 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(53, ng0);
    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5688);
    t3 = (t0 + 3512);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB12;

LAB22:    t5 = 0;

LAB25:    if (t5 < 6U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB23;

LAB27:    t5 = (t5 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(57, ng0);
    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5696);
    t3 = (t0 + 3512);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB12;

LAB30:    t5 = 0;

LAB33:    if (t5 < 6U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB31;

LAB35:    t5 = (t5 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(61, ng0);
    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5704);
    t3 = (t0 + 3512);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB12;

LAB38:    t5 = 0;

LAB41:    if (t5 < 6U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB39;

LAB43:    t5 = (t5 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(65, ng0);
    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5712);
    t3 = (t0 + 3512);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3576);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB46:    t5 = 0;

LAB49:    if (t5 < 6U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB47;

LAB51:    t5 = (t5 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(70, ng0);
    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 5720);
    t3 = (t0 + 3512);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3576);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB54:    t5 = 0;

LAB57:    if (t5 < 6U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB55;

LAB59:    t5 = (t5 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(77, ng0);
    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5724);
    t3 = (t0 + 3512);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3576);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB62:    t5 = 0;

LAB65:    if (t5 < 2U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB63;

LAB67:    t5 = (t5 + 1);
    goto LAB65;

LAB68:    xsi_set_current_line(82, ng0);
    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3576);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB70:    t5 = 0;

LAB73:    if (t5 < 2U)
        goto LAB74;
    else
        goto LAB72;

LAB74:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB71;

LAB75:    t5 = (t5 + 1);
    goto LAB73;

}


extern void work_a_2768456230_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2768456230_3212880686_p_0};
	xsi_register_didat("work_a_2768456230_3212880686", "isim/MIPS_32bits_tb_isim_beh.exe.sim/work/a_2768456230_3212880686.didat");
	xsi_register_executes(pe);
}
