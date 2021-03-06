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

#ifndef __tkgate_fonts_h
#define __tkgate_fonts_h

#include <X11/Xlib.h>

/*
 * Font family codes
 */
typedef enum _FontFamily_t {
	FF_COURIER = 0,
#define FF_COURIER	FF_COURIER
	FF_HELVETICA = 1,
#define FF_HELVETICA	FF_HELVETICA
	FF_TIMES = 2,
#define FF_TIMES	FF_TIMES
	FF_SYMBOL = 3,
#define FF_SYMBOL	FF_SYMBOL
	FF_NOKANJI_MAX = 4,
#define FF_NOKANJI_MAX	FF_NOKANJI_MAX
#define FF_KANJI	4
	FF_MAX = 5
#define FF_MAX		FF_MAX
} fontfamily_t;

/*
 * Font property codes
 */
typedef enum _FontProperty_t {
	FP_ROMAN = 0,
#define FP_ROMAN	FP_ROMAN
	FP_BOLD = 1,
#define FP_BOLD		FP_BOLD
	FP_ITALIC = 2,
#define FP_ITALIC	FP_ITALIC
	FP_MAX = 4
#define FP_MAX		FP_MAX
} fontprop_t;

/*
 * Font size codes
 */
typedef enum _FontSize_t {
	FS_TINY = 0,
#define FS_TINY		FS_TINY
	FS_VSMALL,
#define FS_VSMALL	FS_VSMALL
	FS_SMALL,
#define FS_SMALL	FS_SMALL
	FS_NORMAL,
#define FS_NORMAL	FS_NORMAL
	FS_LARGE,
#define FS_LARGE	FS_LARGE
	FS_HUGE,
#define FS_HUGE		FS_HUGE
	FS_XHUGE,
#define FS_XHUGE	FS_XHUGE
	FS_MAX
#define FS_MAX		FS_MAX
} fontsize_t;

XFontStruct *GetXFont(fontfamily_t ff,fontprop_t fp,fontsize_t fs,int zoom);
XFontStruct **GetXFonts(fontfamily_t,fontprop_t,fontsize_t);
void UnloadAllFonts();

int getKanjiFontSize(int fs);
int getFontSize(int fs);
const char *getFontFamilyName(fontfamily_t ff);

#endif
