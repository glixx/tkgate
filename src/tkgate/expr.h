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

#ifndef __expr_h
#define __expr_h

#define EE_OK		0
#define EE_RETURN	1
#define EE_BREAK	2
#define EE_NOCASE	3
#define EE_NOTDEF	4
#define EE_NOTLIT	5
#define EE_BADFUNC	6
#define EE_DIV0		7
#define EE_OVERFLOW	8
#define EE_INTERNAL	-1

typedef int EValueLookup(const char *func,const char *name,void *data,int *rval);

typedef struct expr {
  int op;			/* Op code */
  char *lit;			/* Literal or function name  */
  int value;			/* Value of expression  */
  struct expr *l,*r,*x;		/* left, right and extended operands */
} Expr;

Expr *Expr_lit(const char*);
Expr *Expr_num(int);
Expr *Expr_op(int,Expr*,Expr*);
Expr *Expr_case(int,int);
Expr *Expr_op3(int,Expr*,Expr*,Expr*);
Expr *Expr_func(const char*,Expr*,Expr*);
int Expr_print(Expr *e);
int Expr_sprint(char *buf,int n,Expr *e);

int Expr_eval(Expr *e,int *rval,EValueLookup *f,void *d);

void delete_Expr(Expr *e);

extern const char *expr_errsym;

#endif
