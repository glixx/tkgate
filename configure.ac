#! /bin/bash -norc
dnl	This file is an input file used by the GNU "autoconf" program to
dnl	generate the file "configure", which is run during TkGate installation
dnl	to configure the system for the local environment.

AC_INIT([tkgate],[2.2],[starling13@gmail.com],[tkgate],[https://bitbucket.org/starling13/tkgate/])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([-Wall foreign std-options])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])
m4_ifdef([AM_PROG_AR], [AM_PROG_AR])
AC_PREREQ(2.69)
AC_CONFIG_HEADER(config.h)
AC_LANG(C)

#############################################################################
#
# TkGate version and identifying information.
#
AC_DEFINE(TKGATE_VERSION, 	"2.2",					[Base TkGate version number])
AC_SUBST(TKGATE_VERSION,	2.2)
AC_DEFINE(TKGATE_VERSION_SUFFIX,"",					[TkGate version suffix])
AC_DEFINE(TKGATE_FULL_VERSION,	(TKGATE_VERSION TKGATE_VERSION_SUFFIX), [Full TkGate version number])
AC_DEFINE(TKGATE_DESCRIPTION,	"Digital Circuit Editor and Simulator",	[Tkgate short description])
AC_DEFINE(TKGATE_LOCALDOC,	"file:@H/doc/@L/index.html", 		[Local documentation location])
AC_DEFINE(TKGATE_COPYRIGHT, 	"Copyright (C) 1987-2015 by Jeffery P. Hansen \nCopyright (C) 2015-2019 by Andrey V. Skvortsov", [Copyright notice])
AC_DEFINE(TKGATE_MAILCONTACT,	"starling13@gmail.com",			[Email address for support])
AC_DEFINE(TKGATE_HOMEPAGE,	"https://bitbucket.org/starling13/tkgate",		[TkGate web page])

#############################################################################
#
# Configuration options.
#

#
# Tcl/Tk version we will try to use (from most favored to least favored)
#
TKGATE_TCLTK_VERSIONS="8.6 8.5 8.4 8.3"

#
# Directories to search for include files
#
TKGATE_INCDIRS="/usr/X11R6/include /usr/X11/include /pkgs/include /usr/local/include /usr/openwin/include /usr/X/include /usr/include /sw/include /opt/local/include"

#
# Directories to search for library files
#
TKGATE_LIBDIRS="/usr/X11R6/lib /usr/X11/lib /pkgs/lib /usr/local/lib /usr/lib /sw/lib /opt/local/lib /usr/local/lib/tcl /usr/lib64"

#
# Libraries we may need if available.
#
#TKGATE_OPTLIBNAMES="dl socket nsl m"


#############################################################################
#
# Default prefix directory for installation by OS
#
AC_PREFIX_DEFAULT(/usr/local)


#############################################################################
#
# Header and libraries
#
TKGATE_INCLUDE_SPEC=""
TKGATE_LIB_SPEC=""
TKGATE_LIBS=""

#############################################################################
#
# Supported locales
#
TKGATE_LOCALES="ar az bg ca cs cy da de en es fr gl hr id is it ja lt ms nl oc pl pt pt_BR ru sk sr sv tr uk"
AC_SUBST(TKGATE_LOCALES)

#############################################################################
#
# Top and bottom of config.h
#
AH_TOP([#ifndef __config_h
#define __config_h
#include "options.h"])
AH_BOTTOM([
/*
 * Default font encode for display.
 */
#define TKGATE_DEFAULT_FONT_CODE      "iso8859-1"

#if TKGATE_NOYYRESTART
#define yyrestart(f) { extern FILE *yyin; yyin = f; }
#endif

#if TKGATE_SIGSET
#define signal(a,b)	sigset(a,b)
#endif

#if !HAVE_PW_GECOS
#define pe_gecos pw_name
#endif

#endif /* __config_h */
])

#############################################################################
#
# TkGate Installation Directories
#
currentDirectory=`pwd`
AC_DEFINE_UNQUOTED(TKGATE_SECONDARYHOME, TKGATE_HOMEDIR, [Backup location for TkGate home directory])

#------------------------------------------------------------------------
# Standard compiler checks
#------------------------------------------------------------------------

#
# If the user did not set CFLAGS, set it now to keep
# the AC_PROG_CC macro from adding "-g -O2".
#
# Set TKGATE_CFLAGS in options.h to set compiler options.
#
if test "${CFLAGS+set}" != "set" ; then
    CFLAGS=`grep "^#define.*TKGATE_CFLAGS" options.h | sed 's/#define.*TKGATE_CFLAGS//'`
fi

# Checks for programs.
AC_PROG_CC
AC_PROG_YACC
AC_PATH_PROG(YACC_INST, $YACC)
if test -z "$YACC_INST"; then
   AC_MSG_ERROR([yacc or bison not found])
fi
AM_PROG_LEX
AC_PATH_PROG(LEX_INST, $LEX)
if test -z "$LEX_INST"; then
   AC_MSG_ERROR([lex or flex not found])
fi
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_LIBTOOL
LT_INIT

# Checks for compiler flags.
TKG_CHECK_CFLAGS([-Wno-deprecated-declarations])

# Checks for header files.
AC_PATH_XTRA
AC_FUNC_ALLOCA
AC_HEADER_STDC
AC_HEADER_SYS_WAIT
AC_CHECK_HEADERS([limits.h malloc.h stdlib.h string.h sys/param.h sys/time.h unistd.h stdint.h])
#PKG_CHECK_MODULES(PANGO_XFT, pangoxft)
TKG_CHECK_ICONV_H

AC_SEARCH_LIBS([log], [m])

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST
AC_TYPE_SIZE_T
AC_TYPE_INTPTR_T
AC_HEADER_TIME
AC_STRUCT_TM
AC_CHECK_TYPES(unsigned long long)

# Checks for library functions.
AC_FUNC_FORK
AC_FUNC_MALLOC
AC_TYPE_SIGNAL
AC_FUNC_STAT
AC_FUNC_VPRINTF
AC_CHECK_FUNCS([getcwd gettimeofday memmove memset putenv select strcasecmp strchr strcspn strdup strncasecmp strrchr strspn strstr strcasestr])
AC_CHECK_LIB(m, floor)

#############################################################################
#
# Find out about Tcl/Tk and request substitutions
#
TKG_FINDTCLTK

#############################################################################
#
# Check for gecos field
#
TKG_CHECK_GECOS

#############################################################################
#
# Check for signal handler function
#
TKG_USE_SIGSET

#############################################################################
#
# Check for word size and Endianess
#
AC_C_BIGENDIAN
TKG_WORDSIZE

#############################################################################
#
# Merge all path information
#
TKG_MERGE(TKGATE_IPATH, [$TCL_IPATH $TK_IPATH $X_CFLAGS $ICONV_IPATH])
TKG_MERGE(TKGATE_LPATH, [$TCL_LPATH $TCL_LPATH $ICONV_LPATH])
TKG_MERGE(TKGATE_LIB, [$TCL_LIB $TK_LIB $X_PRE_LIBS -lX11 $X_EXTRA_LIBS $ICONV_LIB])

#############################################################################
#
# TKGate variable substitutions
#
AC_SUBST(TKGATE_IPATH)
AC_SUBST(TKGATE_LPATH)
AC_SUBST(TKGATE_LIB)

#############################################################################
#
# Header file paths we may need
#
AC_SUBST(COMMON_IPATH, ['-I$(top_srcdir)/src/common'])
AC_SUBST(TOP_IPATH, ['-I$(top_srcdir)'])
AC_SUBST(COMMON_LPATH, ['-L$(top_builddir)/src/common'])

#############################################################################
#
# Make sure the libexec directory exists
#
TKG_MAKELIBEXEC

#############################################################################
#
# Substitution variables
#
AC_CONFIG_FILES([Makefile
                 src/Makefile
                 src/common/Makefile
                 src/tkgate/Makefile
                 src/verga/Makefile
                 src/gmac/Makefile
                 src/tools/Makefile])

AC_OUTPUT
