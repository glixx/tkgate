/****************************************************************************
    Copyright (C) 1987-2015 by Jeffery P. Hansen
    Copyright (C) 2015-2019 by Andrey V. Skvortsov

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

static iconDimensions pulldown_iconDims[] = {
  {0, 0, 11, 39, 5, 5},
  {12, 0, 39, 11, 5, 5},
  {51, 0, 11, 39, 5, 32},
  {63, 0, 39, 11, 33, 5},
};
static int pulldown_iconBoldOffset = 39;

GPadLoc pulldown_out_loc[] = {
  {0, -6, 0, -6, D_UP},
  {-6, 0, -6, 0, D_LEFT},
  {0, 6, 0, 6, D_DOWN},
  {6, 0, 6, 0, D_RIGHT},
};

static char *psPulldown[] = {
  "%",
  "% x y r ground",
  "%",
  "/pspulldown {",
  "  startgate",
  "  0 6 moveto 0 4 lineto",
  "  5 2 lineto",
  "  -5 -2 lineto",
  "  5 -6 lineto",
  "  -5 -10 lineto",
  "  5 -14 lineto",
  "  -5 -18 lineto",
  "  0 -20 lineto",
  "  0 -24 lineto stroke",
  "  -5 -24 moveto 5 -24 lineto stroke",
  "  -3 -28 moveto 3 -28 lineto stroke",
  "  -1 -32 moveto 1 -32 lineto stroke",
  "  grestore",
  "} def",
  0
};

GGateInfo gate_pulldown_info = {
  0,
  "PULLDOWN",
  "tri0",0x0,
  "pspulldown",psPulldown,
  -1,-1,

  {{"g",	{"gm.signals",0},	{"gm.signals.pulldown",0,0,300},	"gat_make PULLDOWN"},
   {0}},

  pulldown_iconDims,

  1,{{"Z",OUT,1,1,pulldown_out_loc}},
  {{5,15,LJ},{5,15,LJ},{5,15,LJ},{5,15,LJ}},
  {1,1,1},

  {0},

  Generic_Make,
  Nop_WriteCellDef,
  Generic_Init,
  Generic_Delete,
  Generic_GetExtents,
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

void init_pulldown()
{
  Pixmap P;

  P = Pixmap_registerFromFile("pulldown","pulldown.b");
  gateinfo_iconInit(&gate_pulldown_info,P,pulldown_iconDims,pulldown_iconBoldOffset);
  RegisterGate(&gate_pulldown_info);
}
