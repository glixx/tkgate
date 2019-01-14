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

#ifndef __thyme_h
#define __thyme_h
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/time.h>
#include <unistd.h>
#include <stdarg.h>
#include <string.h>
#include "config.h"		/* Tkgate global configuration parameters */
#include "thyme_config.h"	/* thyme-specific configuration parameters */
#include "misc.h"		/* libcommon miscelaneous functions/macros */
#include "hash.h"		/* libcommon hash table functions/macros */
#include "list.h"		/* libcommon list functions/macros */
#include "ycmalloc.h"		/* libcommon ycmalloc package */
#include "io.h"			/* Communication functions */
#include "error.h"		/* Error and Place handling */
#include "multint.h"		/* Multi-word integer operations */
#include "value.h"		/* Verilog value class */
#include "operators.h"		/* Operator functions */
#include "systask.h"		/* System tasks */
#include "memory.h"		/* Memory */
#include "expr.h"		/* Expressions */
#include "statement.h"		/* Statements */
#include "mitem.h"		/* Module Items */
#include "specify.h"		/* Handling for specify blocks */
#include "directive.h"		/* Compiler directive handling */
#include "module.h"		/* Modules */
#include "task.h"		/* User-defined tasks */
#include "net.h"		/* Nets */
#include "circuit.h"		/* Circuit */
#include "evqueue.h"		/* Event processing */
#include "channel.h"		/* Data channel handling */
#include "trigger.h"		/* Event triggers */
#include "bytecode.h"		/* Simulation byte code */
#include "verilog.h"		/* Parser functions */
#include "yybasic.h"		/* Basic parser functions */
#include "vgrammar.h"		/* Symbols definitions for tokens */

typedef enum delay_type_en {
	DT_MIN = 0,
#define DT_MIN DT_MIN		/* Use minimum delays */
	DT_TYP = 1,
#define DT_TYP DT_TYP		/* Use typical delays */
	DT_MAX = 2
#define DT_MAX DT_MAX		/* Use maximum delays */
} DelayType;

typedef enum verilog_std_en {
	VSTD_UNDEFINED = 0,
	VSTD_1995 = 1995,
	VSTD_2001 = 2001
} VerilogStd;

/*****************************************************************************
 *
 * GVSecurity - Security settings.
 *
 *****************************************************************************/
typedef struct {
  int		vgs_send;		/* Enable $tkg$send() */
  int		vgs_fopen;		/* Enable $fopen() */
  int		vgs_writemem;	/* Enable $writememb() and $writememh() */
  int		vgs_queue;		/* Enable $tkg$read() and $tkg$write() */
  int		vgs_exec;		/* 0=disabled, 1=registered, 2=enabled */
  int		vgs_handling;	/* 0=ignore, 1=warn, 2=stop */
} VGSecurity;

/*****************************************************************************
 *
 * GVSim - Top level structure for simulator data.
 *
 *****************************************************************************/
typedef struct vgsim_str {
  char *vg_baseDirectory;	/* Base directory for input files */
  char *vg_topModuleName;	/* Name of top-level module */
  char *vg_defaultTopModuleName;	/* Default name of top-level module */
  SHash vg_modules;	/* Table of modules */
  Circuit vg_circuit;	/* Instantiated circuit to be simulated */
  int vg_interactive;	/* Non-zero if we are in interactive mode */

  VGSecurity vg_sec;	/* Security options */

  Timescale vg_timescale;	/* Lowest timescale of any loaded module */
  int vg_haveTScount;	/* Number of modules with timescale */

  int vg_noTimeViolations;	/* Supress all timing violations? */
  simtime_t vg_initTime;	/* Time need for user circuit to initialize. */

  DelayType vg_delayType;	/* Type of delays to use */
  VerilogStd vg_std;
} VGSim;

void VGSim_init(VGSim *);
void VGSim_addModule(VGSim *, ModuleDecl * m);
ModuleDecl *VGSim_findModule(VGSim *, const char *name);

void VGSecurity_init(VGSecurity *, int trusted);
void VGSecurity_handleException(VGSecurity *, VGThread * t, const char *name);

int VerilogLoad(const char *name);
int VerilogLoadScript(const char *name, DynamicModule * dm);
FILE *openInPath(const char *name);

extern VGSim vgsim;		/* Global state for gvsim */

void *ob_malloc(int s,char *x);
void *ob_calloc(int n,int s,char *x);
void ob_free(void *p);
char *ob_strdup(char const *s);
void ob_set_type(void *o,char *n);
void ob_touch(void *o);

#endif
