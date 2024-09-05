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
static const char *ng0 = "/home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Processador/memInstrucoes.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);


static void work_a_1048572965_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t7;
    char *t9;
    char *t11;
    char *t13;
    char *t15;
    char *t17;
    char *t19;
    char *t21;
    char *t23;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(30, ng0);

LAB3:    t1 = xsi_get_transient_memory(384U);
    memset(t1, 0, 384U);
    t2 = t1;
    t3 = (t0 + 13680);
    memcpy(t2, t3, 32U);
    t2 = (t2 + 32U);
    t5 = (t0 + 13712);
    memcpy(t2, t5, 32U);
    t2 = (t2 + 32U);
    t7 = (t0 + 13744);
    memcpy(t2, t7, 32U);
    t2 = (t2 + 32U);
    t9 = (t0 + 13776);
    memcpy(t2, t9, 32U);
    t2 = (t2 + 32U);
    t11 = (t0 + 13808);
    memcpy(t2, t11, 32U);
    t2 = (t2 + 32U);
    t13 = (t0 + 13840);
    memcpy(t2, t13, 32U);
    t2 = (t2 + 32U);
    t15 = (t0 + 13872);
    memcpy(t2, t15, 32U);
    t2 = (t2 + 32U);
    t17 = (t0 + 13904);
    memcpy(t2, t17, 32U);
    t2 = (t2 + 32U);
    t19 = (t0 + 13936);
    memcpy(t2, t19, 32U);
    t2 = (t2 + 32U);
    t21 = (t0 + 13968);
    memcpy(t2, t21, 32U);
    t2 = (t2 + 32U);
    t23 = (t0 + 14000);
    memcpy(t2, t23, 32U);
    t2 = (t2 + 32U);
    t25 = (t0 + 14032);
    memcpy(t2, t25, 32U);
    t27 = (t0 + 3152);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t1, 384U);
    xsi_driver_first_trans_delta(t27, 0U, 384U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1048572965_3212880686_p_1(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t4 = (31 - 9);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 9;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (2 - 9);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t12 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t1, t7);
    t13 = (t12 - 0);
    t11 = (t13 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t12);
    t14 = (32U * t11);
    t15 = (0 + t14);
    t9 = (t2 + t15);
    t16 = (t0 + 3216);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 32U);
    xsi_driver_first_trans_fast_port(t16);

LAB2:    t21 = (t0 + 3072);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1048572965_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1048572965_3212880686_p_0,(void *)work_a_1048572965_3212880686_p_1};
	xsi_register_didat("work_a_1048572965_3212880686", "isim/MIPS_32bits_tb_isim_beh.exe.sim/work/a_1048572965_3212880686.didat");
	xsi_register_executes(pe);
}
