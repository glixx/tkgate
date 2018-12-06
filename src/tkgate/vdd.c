/****************************************************************************
    Copyright (C) 1987-2015 by Jeffery P. Hansen

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
****************************************************************************/
#include "tkgate.h"

static iconDimensions vdd_iconDims[] = {
  {0,  0, 35, 8, 19, 4},
  {36, 0, 8, 35, 4, 15},
  {8, 36, 35, 8, 15, 3},
  {0,  9, 8, 35, 3, 19},
};
static int vdd_iconBoldOffset = 45;

GPadLoc vdd_out_loc[] = {
  {-11, 0, -11, 0, D_DOWN},
  {0, 11, 0, 11, D_RIGHT},
  {11, 0, 11, 0, D_UP},
  {0, -11, 0, -11, D_LEFT}
};


static char *psVdd[] = {
  "%",
  "% x y r vdd",
  "%",
  "/psvdd {",
  "  startgate",
  "  -19 0 moveto -3 0 lineto stroke",
  "  10 rfont",
  "  -1 -4 moveto (V) show",
  "  8 rfont",
  "  0 -3 rmoveto (dd) show",
  "  grestore",
  "} def",
  0
};

GGateInfo gate_vdd_info = {
  0,		/* code */
  "VDD",	/* name */
  "supply1",	/* vnames */
  0x0,		/* vmask */
  "psvdd",	/* psprint */
  psVdd,	/* psdef */
  -1		/* gi_multipad */,
  -1,		/* gi_bitpad */

  {
    {"v",	/* key_seq */
    {"gm.signals",0},/* root */
    {"gm.signals.vdd",0,0,400}, /* entry */
    "gat_make VDD"},/* cmds[0] */
    {0}		    /* cmds[1] */
  },		/* cmds */
  vdd_iconDims, /* dim */
  1,		/* NumPads */
  {
    {"Z",	/* name */
     OUT,	/* iotype */
     1,		/* size */
     1,		/* num */
     vdd_out_loc
    }		/* Pad[0] */
  },		/* Pad */
  { /* x   y  just */
    { 5,   15, LJ},	/* lpos[0] */
    { 5,   15, LJ},	/* lpos[1] */
    { 5,   15, LJ},	/* lpos[2] */
    { 5,   15, LJ}	/* lpos[3] */
  },		/* lpos */
  /* CanRot  NoInvert  IsIONet */
  { 1,       1,        1},	/* flags */
  {0},			/* delayNames */
  Generic_Make, 	/* MakeFunction */
  Nop_WriteCellDef,	/* WriteCellDef */
  Generic_Init,		/* InitGate */
  Generic_Delete,	/* DeleteGate */
  Generic_GetExtents,	/* GetExtents */
  Generic_HitDistance,
  Generic_Draw,
  Generic_Move,
  Generic_Copy,
  Err_AddInput,
  Err_AddOutput,
  Err_AddInOut,
  Generic_Rotate,
  Err_RemovePort,
  Err_ChangePin,
  Nop_SimInitFunc,
  Nop_SimHitFunc,
  Generic_PSWrite,
  Generic_EditProps,
  InOut_VerSave
};

void init_vdd()
{
  Pixmap P;

  P = Pixmap_registerFromFile("vdd","vdd.b");
  gateinfo_iconInit(&gate_vdd_info,P,vdd_iconDims,vdd_iconBoldOffset);
  RegisterGate(&gate_vdd_info);
}
