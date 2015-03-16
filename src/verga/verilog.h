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
#ifndef __verilog_h
#define __verilog_h

#define TYPE_INT	0
#define TYPE_STR	1

/*****************************************************************************
 *
 * Start a new module declaration.
 *
 * Parameters:
 *      name		Name of module to declare.
 *
 *****************************************************************************/
void VerNewModule(const char *);

/*****************************************************************************
 *
 * End a module declaration
 *
 *****************************************************************************/
void VerEndModule();

void VerParmDef(const char *name,Expr *e, int isPort);
void VerPort(const char *name);
void VerBeginDecls(int dtype,VRange*);
void VerDecl(const char *name,VRange *addrRange);
void VerDeclAssign(Expr *lval,Expr *rval,Expr *econd);
void VerAssign(Expr *lval,Expr *rval,Expr *econd);
void VerAutoAssign(int dtype,const char *lval,Expr *expr);
VRange *VerRange(rangestyle_t,Expr *left,Expr *right);
int VerLookupParm(const char *name);
void VerIABlock(int btype,StatDecl *stat);

List *VerEmptyList();
List *VerListAppend(List*L,void*);
List *VerListPrepend(void*,List*L);

/*****************************************************************************
 *
 * Create a conditioned (delay or event trigger) statement
 *
 * Parameters:
 *      e		Condition expression
 *      s		Statement to be conditioned
 *
 * Returns:		New statement with condition added.
 *
 *****************************************************************************/
StatDecl *VerCondStat(Expr*,StatDecl*);
void VerSpecTask(const char *name,List *args);
void VerSpecify(Expr *cond,int ptype,Expr *lhs,Expr *rhs,Expr *value);
void VerSpecParam(const char *name,Expr *value);

/*****************************************************************************
 *
 * Set the type for declaring built-in gates ("and", "or", etc.)
 *
 * Parameters:
 *      gtype		Type code
 *      delay		Delay expression
 *
 *****************************************************************************/
void VerGateDecl(int gtype, Expr *delay);

/*****************************************************************************
 *
 * Create an instance of a built-in gate
 *
 * Parameters:
 *      iname		Instance name
 *      range		Range to use
 *      ports		Port list for gate
 *
 *****************************************************************************/
void VerGateInst(const char *iname, VRange *range, List *parms);

void VerModDecl(const char *name);
void VerModDeclParm(const char *name, Expr *e);
void VerModInst(const char *name, VRange *range, List *parms);

void VerBreakpoint(int n,Expr*);
void VerBeginScript();
void VerEndScript();

void VerSpecialTag(const char *tag);

void VerBeginTask(const char *name,int isauto);
void VerTaskToFunc(VRange *range);
void VerEndTask(StatDecl *sd);

void VerBeginEScript(const char *name);
void VerEndEScript();

#endif
