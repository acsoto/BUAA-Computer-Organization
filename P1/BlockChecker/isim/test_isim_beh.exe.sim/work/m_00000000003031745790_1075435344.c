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
static const char *ng0 = "D:/Study/CO/P1/BlockChecker/BlockChecker.v";
static int ng1[] = {0, 0};
static int ng2[] = {538976288, 0, 538976288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static unsigned int ng3[] = {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};
static unsigned int ng4[] = {32U, 0U};
static int ng5[] = {1701276014, 0, 8290, 0};
static int ng6[] = {1, 0};
static int ng7[] = {1701276014, 0, 98, 0};
static int ng8[] = {32, 0};
static int ng9[] = {543518308, 0};
static int ng10[] = {1701733408, 0};
static int ng11[] = {6647396, 0};



static void Initial_31_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(31, ng0);

LAB2:    xsi_set_current_line(32, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 16);
    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 256);

LAB1:    return;
}

static void Cont_36_1(char *t0)
{
    char t6[64];
    char t7[8];
    char t19[8];
    char t30[8];
    char t38[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    xsi_vlog_unsigned_equal(t6, 256, t4, 16, t5, 256);
    memset(t7, 0, 8);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t8) != 0)
        goto LAB6;

LAB7:    t15 = (t7 + 4);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t15);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB8;

LAB9:    memcpy(t38, t7, 8);

LAB10:    t70 = (t0 + 4080);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    memset(t74, 0, 8);
    t75 = 1U;
    t76 = t75;
    t77 = (t38 + 4);
    t78 = *((unsigned int *)t38);
    t75 = (t75 & t78);
    t79 = *((unsigned int *)t77);
    t76 = (t76 & t79);
    t80 = (t74 + 4);
    t81 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t81 | t75);
    t82 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t82 | t76);
    xsi_driver_vfirst_trans(t70, 0, 0);
    t83 = (t0 + 3984);
    *((int *)t83) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    goto LAB7;

LAB6:    t14 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB7;

LAB8:    t20 = (t0 + 2088);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memset(t19, 0, 8);
    t23 = (t22 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t22);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t23) == 0)
        goto LAB11;

LAB13:    t29 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t29) = 1;

LAB14:    memset(t30, 0, 8);
    t31 = (t19 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t19);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t31) != 0)
        goto LAB17;

LAB18:    t39 = *((unsigned int *)t7);
    t40 = *((unsigned int *)t30);
    t41 = (t39 & t40);
    *((unsigned int *)t38) = t41;
    t42 = (t7 + 4);
    t43 = (t30 + 4);
    t44 = (t38 + 4);
    t45 = *((unsigned int *)t42);
    t46 = *((unsigned int *)t43);
    t47 = (t45 | t46);
    *((unsigned int *)t44) = t47;
    t48 = *((unsigned int *)t44);
    t49 = (t48 != 0);
    if (t49 == 1)
        goto LAB19;

LAB20:
LAB21:    goto LAB10;

LAB11:    *((unsigned int *)t19) = 1;
    goto LAB14;

LAB15:    *((unsigned int *)t30) = 1;
    goto LAB18;

LAB17:    t37 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB18;

LAB19:    t50 = *((unsigned int *)t38);
    t51 = *((unsigned int *)t44);
    *((unsigned int *)t38) = (t50 | t51);
    t52 = (t7 + 4);
    t53 = (t30 + 4);
    t54 = *((unsigned int *)t7);
    t55 = (~(t54));
    t56 = *((unsigned int *)t52);
    t57 = (~(t56));
    t58 = *((unsigned int *)t30);
    t59 = (~(t58));
    t60 = *((unsigned int *)t53);
    t61 = (~(t60));
    t62 = (t55 & t57);
    t63 = (t59 & t61);
    t64 = (~(t62));
    t65 = (~(t63));
    t66 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t66 & t64);
    t67 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t67 & t65);
    t68 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t68 & t64);
    t69 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t69 & t65);
    goto LAB21;

}

static void Always_38_2(char *t0)
{
    char t13[64];
    char t14[8];
    char t33[64];
    char t38[16];
    char t39[16];
    char t43[8];
    char t44[8];
    char t53[8];
    char t61[8];
    char t101[8];
    char t103[8];
    char t126[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t40;
    char *t41;
    char *t42;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t102;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t127;

LAB0:    t1 = (t0 + 3664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4000);
    *((int *)t2) = 1;
    t3 = (t0 + 3696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(44, ng0);

LAB10:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 | t7);
    *((unsigned int *)t14) = t8;
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t11 = (t14 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t15 = (t9 | t10);
    *((unsigned int *)t11) = t15;
    t16 = *((unsigned int *)t11);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB11;

LAB12:
LAB13:    t34 = (t0 + 2248);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    xsi_vlog_get_part_select_value(t33, 248, t36, 247, 0);
    xsi_vlogtype_concat(t13, 256, 256, 2U, t33, 248, t14, 8);
    t37 = (t0 + 2248);
    xsi_vlogvar_assign_value(t37, t13, 0, 0, 256);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(47, ng0);

LAB17:    xsi_set_current_line(48, ng0);
    t11 = (t0 + 2248);
    t12 = (t11 + 56U);
    t20 = *((char **)t12);
    xsi_vlog_get_part_select_value(t38, 48, t20, 47, 0);
    t34 = ((char*)((ng5)));
    xsi_vlog_unsigned_equal(t39, 48, t38, 48, t34, 48);
    t35 = (t39 + 4);
    t15 = *((unsigned int *)t35);
    t16 = (~(t15));
    t17 = *((unsigned int *)t39);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    xsi_vlog_get_part_select_value(t38, 40, t4, 47, 8);
    t5 = ((char*)((ng7)));
    xsi_vlog_unsigned_equal(t39, 40, t38, 40, t5, 40);
    memset(t14, 0, 8);
    t11 = (t39 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t39);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t11) != 0)
        goto LAB23;

LAB24:    t20 = (t14 + 4);
    t15 = *((unsigned int *)t14);
    t16 = *((unsigned int *)t20);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB25;

LAB26:    memcpy(t61, t14, 8);

LAB27:    t91 = (t61 + 4);
    t92 = *((unsigned int *)t91);
    t93 = (~(t92));
    t94 = *((unsigned int *)t61);
    t95 = (t94 & t93);
    t96 = (t95 != 0);
    if (t96 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t14, 0, 8);
    t5 = (t14 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t10 & 4294967295U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 4294967295U);
    t12 = ((char*)((ng9)));
    memset(t43, 0, 8);
    t20 = (t14 + 4);
    t34 = (t12 + 4);
    t16 = *((unsigned int *)t14);
    t17 = *((unsigned int *)t12);
    t18 = (t16 ^ t17);
    t19 = *((unsigned int *)t20);
    t21 = *((unsigned int *)t34);
    t22 = (t19 ^ t21);
    t23 = (t18 | t22);
    t25 = *((unsigned int *)t20);
    t26 = *((unsigned int *)t34);
    t27 = (t25 | t26);
    t29 = (~(t27));
    t30 = (t23 & t29);
    if (t30 != 0)
        goto LAB45;

LAB42:    if (t27 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t43) = 1;

LAB45:    t36 = (t43 + 4);
    t31 = *((unsigned int *)t36);
    t32 = (~(t31));
    t46 = *((unsigned int *)t43);
    t47 = (t46 & t32);
    t48 = (t47 != 0);
    if (t48 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t14, 0, 8);
    t5 = (t14 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t10 & 4294967295U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 4294967295U);
    t12 = ((char*)((ng10)));
    memset(t43, 0, 8);
    t20 = (t14 + 4);
    t34 = (t12 + 4);
    t16 = *((unsigned int *)t14);
    t17 = *((unsigned int *)t12);
    t18 = (t16 ^ t17);
    t19 = *((unsigned int *)t20);
    t21 = *((unsigned int *)t34);
    t22 = (t19 ^ t21);
    t23 = (t18 | t22);
    t25 = *((unsigned int *)t20);
    t26 = *((unsigned int *)t34);
    t27 = (t25 | t26);
    t29 = (~(t27));
    t30 = (t23 & t29);
    if (t30 != 0)
        goto LAB52;

LAB49:    if (t27 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t43) = 1;

LAB52:    t36 = (t43 + 4);
    t31 = *((unsigned int *)t36);
    t32 = (~(t31));
    t46 = *((unsigned int *)t43);
    t47 = (t46 & t32);
    t48 = (t47 != 0);
    if (t48 > 0)
        goto LAB53;

LAB54:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t14, 0, 8);
    t5 = (t14 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 8);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 8);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t10 & 16777215U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 16777215U);
    t12 = ((char*)((ng11)));
    memset(t43, 0, 8);
    t20 = (t14 + 4);
    t34 = (t12 + 4);
    t16 = *((unsigned int *)t14);
    t17 = *((unsigned int *)t12);
    t18 = (t16 ^ t17);
    t19 = *((unsigned int *)t20);
    t21 = *((unsigned int *)t34);
    t22 = (t19 ^ t21);
    t23 = (t18 | t22);
    t25 = *((unsigned int *)t20);
    t26 = *((unsigned int *)t34);
    t27 = (t25 | t26);
    t29 = (~(t27));
    t30 = (t23 & t29);
    if (t30 != 0)
        goto LAB63;

LAB60:    if (t27 != 0)
        goto LAB62;

LAB61:    *((unsigned int *)t43) = 1;

LAB63:    memset(t44, 0, 8);
    t36 = (t43 + 4);
    t31 = *((unsigned int *)t36);
    t32 = (~(t31));
    t46 = *((unsigned int *)t43);
    t47 = (t46 & t32);
    t48 = (t47 & 1U);
    if (t48 != 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t36) != 0)
        goto LAB66;

LAB67:    t40 = (t44 + 4);
    t49 = *((unsigned int *)t44);
    t50 = *((unsigned int *)t40);
    t51 = (t49 || t50);
    if (t51 > 0)
        goto LAB68;

LAB69:    memcpy(t103, t44, 8);

LAB70:    t102 = (t103 + 4);
    t117 = *((unsigned int *)t102);
    t118 = (~(t117));
    t119 = *((unsigned int *)t103);
    t120 = (t119 & t118);
    t121 = (t120 != 0);
    if (t121 > 0)
        goto LAB82;

LAB83:
LAB84:
LAB55:
LAB48:
LAB41:
LAB20:
LAB16:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(39, ng0);

LAB9:    xsi_set_current_line(40, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1928);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 16);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 256);
    goto LAB8;

LAB11:    t18 = *((unsigned int *)t14);
    t19 = *((unsigned int *)t11);
    *((unsigned int *)t14) = (t18 | t19);
    t12 = (t3 + 4);
    t20 = (t2 + 4);
    t21 = *((unsigned int *)t12);
    t22 = (~(t21));
    t23 = *((unsigned int *)t3);
    t24 = (t23 & t22);
    t25 = *((unsigned int *)t20);
    t26 = (~(t25));
    t27 = *((unsigned int *)t2);
    t28 = (t27 & t26);
    t29 = (~(t24));
    t30 = (~(t28));
    t31 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t31 & t29);
    t32 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t32 & t30);
    goto LAB13;

LAB14:    goto LAB16;

LAB18:    xsi_set_current_line(48, ng0);
    t36 = (t0 + 1928);
    t37 = (t36 + 56U);
    t40 = *((char **)t37);
    t41 = ((char*)((ng6)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t40, 16, t41, 32);
    t42 = (t0 + 1928);
    xsi_vlogvar_assign_value(t42, t14, 0, 0, 16);
    goto LAB20;

LAB21:    *((unsigned int *)t14) = 1;
    goto LAB24;

LAB23:    t12 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB24;

LAB25:    t34 = (t0 + 2248);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t43, 0, 8);
    t37 = (t43 + 4);
    t40 = (t36 + 4);
    t18 = *((unsigned int *)t36);
    t19 = (t18 >> 0);
    *((unsigned int *)t43) = t19;
    t21 = *((unsigned int *)t40);
    t22 = (t21 >> 0);
    *((unsigned int *)t37) = t22;
    t23 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t23 & 255U);
    t25 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t25 & 255U);
    t41 = ((char*)((ng8)));
    memset(t44, 0, 8);
    t42 = (t43 + 4);
    t45 = (t41 + 4);
    t26 = *((unsigned int *)t43);
    t27 = *((unsigned int *)t41);
    t29 = (t26 ^ t27);
    t30 = *((unsigned int *)t42);
    t31 = *((unsigned int *)t45);
    t32 = (t30 ^ t31);
    t46 = (t29 | t32);
    t47 = *((unsigned int *)t42);
    t48 = *((unsigned int *)t45);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB29;

LAB28:    if (t49 != 0)
        goto LAB30;

LAB31:    memset(t53, 0, 8);
    t54 = (t44 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (~(t55));
    t57 = *((unsigned int *)t44);
    t58 = (t57 & t56);
    t59 = (t58 & 1U);
    if (t59 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t54) != 0)
        goto LAB34;

LAB35:    t62 = *((unsigned int *)t14);
    t63 = *((unsigned int *)t53);
    t64 = (t62 & t63);
    *((unsigned int *)t61) = t64;
    t65 = (t14 + 4);
    t66 = (t53 + 4);
    t67 = (t61 + 4);
    t68 = *((unsigned int *)t65);
    t69 = *((unsigned int *)t66);
    t70 = (t68 | t69);
    *((unsigned int *)t67) = t70;
    t71 = *((unsigned int *)t67);
    t72 = (t71 != 0);
    if (t72 == 1)
        goto LAB36;

LAB37:
LAB38:    goto LAB27;

LAB29:    *((unsigned int *)t44) = 1;
    goto LAB31;

LAB30:    t52 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB31;

LAB32:    *((unsigned int *)t53) = 1;
    goto LAB35;

LAB34:    t60 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB35;

LAB36:    t73 = *((unsigned int *)t61);
    t74 = *((unsigned int *)t67);
    *((unsigned int *)t61) = (t73 | t74);
    t75 = (t14 + 4);
    t76 = (t53 + 4);
    t77 = *((unsigned int *)t14);
    t78 = (~(t77));
    t79 = *((unsigned int *)t75);
    t80 = (~(t79));
    t81 = *((unsigned int *)t53);
    t82 = (~(t81));
    t83 = *((unsigned int *)t76);
    t84 = (~(t83));
    t24 = (t78 & t80);
    t28 = (t82 & t84);
    t85 = (~(t24));
    t86 = (~(t28));
    t87 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t87 & t85);
    t88 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t88 & t86);
    t89 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t89 & t85);
    t90 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t90 & t86);
    goto LAB38;

LAB39:    xsi_set_current_line(49, ng0);
    t97 = (t0 + 1928);
    t98 = (t97 + 56U);
    t99 = *((char **)t98);
    t100 = ((char*)((ng6)));
    memset(t101, 0, 8);
    xsi_vlog_unsigned_minus(t101, 32, t99, 16, t100, 32);
    t102 = (t0 + 1928);
    xsi_vlogvar_assign_value(t102, t101, 0, 0, 16);
    goto LAB41;

LAB44:    t35 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(50, ng0);
    t37 = (t0 + 1928);
    t40 = (t37 + 56U);
    t41 = *((char **)t40);
    t42 = ((char*)((ng6)));
    memset(t44, 0, 8);
    xsi_vlog_unsigned_minus(t44, 32, t41, 16, t42, 32);
    t45 = (t0 + 1928);
    xsi_vlogvar_assign_value(t45, t44, 0, 0, 16);
    goto LAB48;

LAB51:    t35 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB52;

LAB53:    xsi_set_current_line(51, ng0);

LAB56:    xsi_set_current_line(52, ng0);
    t37 = (t0 + 1928);
    t40 = (t37 + 56U);
    t41 = *((char **)t40);
    xsi_vlogtype_sign_extend(t53, 32, t41, 16);
    t42 = ((char*)((ng1)));
    memset(t101, 0, 8);
    xsi_vlog_signed_less(t101, 32, t53, 32, t42, 32);
    t45 = (t101 + 4);
    t49 = *((unsigned int *)t45);
    t50 = (~(t49));
    t51 = *((unsigned int *)t101);
    t55 = (t51 & t50);
    t56 = (t55 != 0);
    if (t56 > 0)
        goto LAB57;

LAB58:
LAB59:    goto LAB55;

LAB57:    xsi_set_current_line(52, ng0);
    t52 = ((char*)((ng6)));
    t54 = (t0 + 2088);
    xsi_vlogvar_assign_value(t54, t52, 0, 0, 1);
    goto LAB59;

LAB62:    t35 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB63;

LAB64:    *((unsigned int *)t44) = 1;
    goto LAB67;

LAB66:    t37 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB67;

LAB68:    t41 = (t0 + 2248);
    t42 = (t41 + 56U);
    t45 = *((char **)t42);
    memset(t53, 0, 8);
    t52 = (t53 + 4);
    t54 = (t45 + 4);
    t55 = *((unsigned int *)t45);
    t56 = (t55 >> 0);
    *((unsigned int *)t53) = t56;
    t57 = *((unsigned int *)t54);
    t58 = (t57 >> 0);
    *((unsigned int *)t52) = t58;
    t59 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t59 & 255U);
    t62 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t62 & 255U);
    t60 = ((char*)((ng8)));
    memset(t61, 0, 8);
    t65 = (t53 + 4);
    t66 = (t60 + 4);
    t63 = *((unsigned int *)t53);
    t64 = *((unsigned int *)t60);
    t68 = (t63 ^ t64);
    t69 = *((unsigned int *)t65);
    t70 = *((unsigned int *)t66);
    t71 = (t69 ^ t70);
    t72 = (t68 | t71);
    t73 = *((unsigned int *)t65);
    t74 = *((unsigned int *)t66);
    t77 = (t73 | t74);
    t78 = (~(t77));
    t79 = (t72 & t78);
    if (t79 != 0)
        goto LAB72;

LAB71:    if (t77 != 0)
        goto LAB73;

LAB74:    memset(t101, 0, 8);
    t75 = (t61 + 4);
    t80 = *((unsigned int *)t75);
    t81 = (~(t80));
    t82 = *((unsigned int *)t61);
    t83 = (t82 & t81);
    t84 = (t83 & 1U);
    if (t84 != 0)
        goto LAB75;

LAB76:    if (*((unsigned int *)t75) != 0)
        goto LAB77;

LAB78:    t85 = *((unsigned int *)t44);
    t86 = *((unsigned int *)t101);
    t87 = (t85 & t86);
    *((unsigned int *)t103) = t87;
    t91 = (t44 + 4);
    t97 = (t101 + 4);
    t98 = (t103 + 4);
    t88 = *((unsigned int *)t91);
    t89 = *((unsigned int *)t97);
    t90 = (t88 | t89);
    *((unsigned int *)t98) = t90;
    t92 = *((unsigned int *)t98);
    t93 = (t92 != 0);
    if (t93 == 1)
        goto LAB79;

LAB80:
LAB81:    goto LAB70;

LAB72:    *((unsigned int *)t61) = 1;
    goto LAB74;

LAB73:    t67 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t67) = 1;
    goto LAB74;

LAB75:    *((unsigned int *)t101) = 1;
    goto LAB78;

LAB77:    t76 = (t101 + 4);
    *((unsigned int *)t101) = 1;
    *((unsigned int *)t76) = 1;
    goto LAB78;

LAB79:    t94 = *((unsigned int *)t103);
    t95 = *((unsigned int *)t98);
    *((unsigned int *)t103) = (t94 | t95);
    t99 = (t44 + 4);
    t100 = (t101 + 4);
    t96 = *((unsigned int *)t44);
    t104 = (~(t96));
    t105 = *((unsigned int *)t99);
    t106 = (~(t105));
    t107 = *((unsigned int *)t101);
    t108 = (~(t107));
    t109 = *((unsigned int *)t100);
    t110 = (~(t109));
    t24 = (t104 & t106);
    t28 = (t108 & t110);
    t111 = (~(t24));
    t112 = (~(t28));
    t113 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t113 & t111);
    t114 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t114 & t112);
    t115 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t115 & t111);
    t116 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t116 & t112);
    goto LAB81;

LAB82:    xsi_set_current_line(55, ng0);
    t122 = (t0 + 1928);
    t123 = (t122 + 56U);
    t124 = *((char **)t123);
    t125 = ((char*)((ng6)));
    memset(t126, 0, 8);
    xsi_vlog_unsigned_add(t126, 32, t124, 16, t125, 32);
    t127 = (t0 + 1928);
    xsi_vlogvar_assign_value(t127, t126, 0, 0, 16);
    goto LAB84;

}


extern void work_m_00000000003031745790_1075435344_init()
{
	static char *pe[] = {(void *)Initial_31_0,(void *)Cont_36_1,(void *)Always_38_2};
	xsi_register_didat("work_m_00000000003031745790_1075435344", "isim/test_isim_beh.exe.sim/work/m_00000000003031745790_1075435344.didat");
	xsi_register_executes(pe);
}
