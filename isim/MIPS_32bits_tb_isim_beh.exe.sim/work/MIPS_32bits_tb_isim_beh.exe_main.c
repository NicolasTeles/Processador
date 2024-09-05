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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_3725284620;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_3689596018_3212880686_init();
    work_a_1007874614_3212880686_init();
    work_a_1048572965_3212880686_init();
    work_a_0737135909_3212880686_init();
    work_a_3685352993_3212880686_init();
    work_p_3725284620_init();
    work_a_1664626272_3212880686_init();
    work_a_3120124852_3212880686_init();
    work_a_1764692275_3212880686_init();
    work_a_2371733214_3212880686_init();
    work_a_0077198341_3212880686_init();
    work_a_1443651985_3212880686_init();
    work_a_2425904575_3212880686_init();
    work_a_3318116947_3212880686_init();
    work_a_2768456230_3212880686_init();
    work_a_4092002463_3212880686_init();
    work_a_2403908879_3212880686_init();
    work_a_2692114811_3212880686_init();
    work_a_3785583711_3212880686_init();
    work_a_1131306640_3212880686_init();
    work_a_1018148408_3212880686_init();
    work_a_4270929821_3212880686_init();
    work_a_2291357997_3212880686_init();
    work_a_0452206185_3212880686_init();
    work_a_0284684088_3212880686_init();
    work_a_3972127349_3212880686_init();
    work_a_0511085812_3212880686_init();
    work_a_1797137848_2372691052_init();


    xsi_register_tops("work_a_1797137848_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_3725284620 = xsi_get_engine_memory("work_p_3725284620");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
