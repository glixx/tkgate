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
/*
   yybasic.h: Basic definitions used only by grammar and lexicon.
   This is a C header file.
*/
#ifndef __yybasic_h
#define __yybasic_h
#include "expr.h"

struct lex_keywordentry {
    char *Keyword;
    int Value;
};


typedef union {
  int I;			/* Used for integers */
  char *S;			/* Used for strings */
  Expr *E;			/* Expression */
  void *P;			/* Generic pointer */
} YYVALUE;

#define YYSTYPE YYVALUE
extern YYVALUE yylval;

extern int nativeVerilog;
extern int ycLineNumber;

void BeginPV();
void BeginVR();
void BeginBC();
void BeginAC();
void BeginLC();
void BeginDD();
void BeginDDP();
void BeginVN();
void BeginHDL();
void BeginLast();
void SaveLast();

int yyparse();
int yylex();
void yyerror(char*,...);

void ycSetDefaultModuleType(int modType);
void ycSetModuleType(int modType);
void ycDirective(char *dtext);


#endif


