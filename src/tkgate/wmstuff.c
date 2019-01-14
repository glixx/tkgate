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

#include <stdio.h>
#include "tkgate.h"

/*
  These functions map functions from the old 'wm' API to the X11 API.
 */

void wm_GetDimensions(int *X,int *Y)
{
  Window Root;
  int Wx,Wy;
  unsigned W,H,BW,Dp;

  XGetGeometry(TkGate.D,TkGate.W,&Root,&Wx,&Wy,&W,&H,&BW,&Dp);
  *X = W;
  *Y = H;
}

