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

#ifndef __verilog_h
#define __verilog_h

typedef enum {
  VSO_LIBRARY = 0x1,
  VSO_BUILTINS = 0x2,
  VSO_NOHDLCHECK = 0x4,
  VSO_ALLMODS = VSO_LIBRARY|VSO_BUILTINS,	/* All module type flags */
} vsaveopts_t;

#define VGC_DOMARK	0x1
#define VGC_NOWIRES	0x2



int VerilogBasicGateCall(FILE *f,GCElement *g);
int VerilogBasicGateParmList(FILE *f,GCElement *g);
void VerilogBasicGateComment(FILE *f,GCElement *g,unsigned flags);
int VerilogWriteModules(const char *name,vsaveopts_t writeLibBlocks);
int VerilogSave(const char *name);
int VerilogOpen(EditState **es,const char *name,int append);
int VerilogOpenLibrary(const char *name);
void VerilogSaveModule(FILE *f,GModuleDef *M);
void VerilogSavePlainModule(FILE *f,GModuleDef *M);
void VerilogWriteInit();

int isVerilogFile(const char*);

#endif
