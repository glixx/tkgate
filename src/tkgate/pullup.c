/****************************************************************************
    This file is part of TkGate digital circuit editor and simulator
    Copyright (C) 1987-2015 by Jeffery P. Hansen
    Copyright (C) 2015 by Andrey V. Skvortsov

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

static iconDimensions pullup_iconDims[] = {
  {0,  0, 35, 8, 19, 4},
  {36, 0, 8, 35, 4, 15},
  {8, 36, 35, 8, 15, 3},
  {0,  9, 8, 35, 3, 19},
};
static int pullup_iconBoldOffset = 45;

GPadLoc pullup_out_loc[] = {
  {-11, 0, -11, 0, D_DOWN},
  {0, 11, 0, 11, D_RIGHT},
  {11, 0, 11, 0, D_UP},
  {0, -11, 0, -11, D_LEFT}
};

static char *psPullup[] = {
  "%",
  "% x y r pullup",
  "%",
  "/pspullup {",
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

GGateInfo gate_pullup_info = {
  0,		/* code */
  "PULLUP",	/* name */
  "tri1",	/* vnames */
  0x0,		/* vmask */
  "pspullup",	/* psprint */
  psPullup,	/* psdef */
  -1		/* gi_multipad */,
  -1,		/* gi_bitpad */

  {
    {"v",	/* key_seq */
    {"gm.signals",0},/* root */
    {"gm.signals.pullup",0,0,400}, /* entry */
    "gat_make PULLUP"},/* cmds[0] */
    {0}		    /* cmds[1] */
  },		/* cmds */
  pullup_iconDims, /* dim */
  1,		/* NumPads */
  {
    {"Z",	/* name */
     OUT,	/* iotype */
     1,		/* size */
     1,		/* num */
     pullup_out_loc
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

void init_pullup()
{
  Pixmap P;

  P = Pixmap_registerFromFile("pullup","vdd.b");
  gateinfo_iconInit(&gate_pullup_info,P,pullup_iconDims,pullup_iconBoldOffset);
  RegisterGate(&gate_pullup_info);
}
