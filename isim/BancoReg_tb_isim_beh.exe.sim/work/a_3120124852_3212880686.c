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
static const char *ng0 = "/home/nicolasrmendoncat/nicolasrmendoncat/ISLD/Processador/flipflopD_descida.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_3120124852_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 1312U);
    t4 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t4 == 1)
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3664);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3728);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t4;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3584);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2288U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2288U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB3;

LAB7:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1032U);
    t8 = *((char **)t2);
    t9 = *((unsigned char *)t8);
    t2 = (t0 + 2288U);
    t10 = *((char **)t2);
    t2 = (t10 + 0);
    *((unsigned char *)t2) = t9;
    goto LAB3;

LAB9:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t3 = t7;
    goto LAB11;

}


extern void work_a_3120124852_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3120124852_3212880686_p_0};
	xsi_register_didat("work_a_3120124852_3212880686", "isim/BancoReg_tb_isim_beh.exe.sim/work/a_3120124852_3212880686.didat");
	xsi_register_executes(pe);
}
