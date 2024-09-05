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
static const char *ng0 = "/home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Processador/DEC.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);


static void work_a_1664626272_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4389);
    *((int *)t1) = 0;
    t2 = (t0 + 4393);
    *((int *)t2) = 31;
    t3 = 0;
    t4 = 31;

LAB2:    if (t3 <= t4)
        goto LAB3;

LAB5:    t1 = (t0 + 2664);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(45, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t5 = (t0 + 4344U);
    t7 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t6, t5);
    t8 = (t0 + 4389);
    t9 = *((int *)t8);
    t10 = (t7 == t9);
    if (t10 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 4389);
    t7 = *((int *)t1);
    t9 = (t7 - 31);
    t14 = (t9 * -1);
    t15 = (1 * t14);
    t16 = (0U + t15);
    t2 = (t0 + 2744);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, t16, 1, 0LL);

LAB7:
LAB4:    t1 = (t0 + 4389);
    t3 = *((int *)t1);
    t2 = (t0 + 4393);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB9:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 4389);
    *((int *)t5) = t3;
    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);
    t11 = (t0 + 4389);
    t12 = *((int *)t11);
    t13 = (t12 - 31);
    t14 = (t13 * -1);
    t15 = (1 * t14);
    t16 = (0U + t15);
    t17 = (t0 + 2744);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_delta(t17, t16, 1, 0LL);
    goto LAB7;

}


extern void work_a_1664626272_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1664626272_3212880686_p_0};
	xsi_register_didat("work_a_1664626272_3212880686", "isim/MIPS_32bits_tb_isim_beh.exe.sim/work/a_1664626272_3212880686.didat");
	xsi_register_executes(pe);
}
