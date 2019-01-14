/****************************************************************************
    This file is part of TkGate digital circuit editor and simulator.

    Copyright (C)  1987-2015 by Jeffery P. Hansen
    Copyright (C)  2015-2019 by Andrey V. Skvortsov

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

#ifndef SWITCH_H_INCLUDED
#define SWITCH_H_INCLUDED

#include "module.h"
#include "elements.h"
#include "tkgate_misc.h"

GCElement *SwitchDip_Copy(GModuleDef *M,GCElement *g,int x,int y,unsigned);
void SwitchDip_VerSave(FILE *f,GCElement *g);
void SwitchDip_SetProp(GCElement*,const char*,const void*);
void SwitchDip_getCompositeName(GCElement *g,char *compositeName);

#endif // SWITCH_H_INCLUDED
