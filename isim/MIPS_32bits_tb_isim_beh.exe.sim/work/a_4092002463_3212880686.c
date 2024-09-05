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
static const char *ng0 = "/home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Processador/mux2_vector.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_4092002463_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(42, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = (0 - 0);
    t7 = (t6 * 1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t5 + t9);
    t10 = *((unsigned char *)t1);
    t11 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t4, t10);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t12 = (t0 + 1032U);
    t15 = *((char **)t12);
    t16 = (1 - 0);
    t17 = (t16 * 1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t12 = (t15 + t19);
    t20 = *((unsigned char *)t12);
    t21 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t14, t20);
    t22 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t11, t21);
    t23 = (t0 + 2904);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t22;
    xsi_driver_first_trans_fast_port(t23);

LAB2:    t28 = (t0 + 2824);
    *((int *)t28) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4092002463_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4092002463_3212880686_p_0};
	xsi_register_didat("work_a_4092002463_3212880686", "isim/MIPS_32bits_tb_isim_beh.exe.sim/work/a_4092002463_3212880686.didat");
	xsi_register_executes(pe);
}
