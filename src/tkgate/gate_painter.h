/****************************************************************************
    Copyright (C) 1987-2015 by Jeffery P. Hansen
    Copyright (C) 2015 by Andrey V. Skvortsov

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

#ifndef GATE_PAINTER_H
#define	GATE_PAINTER_H

#include "fonts.h"

/**
 * @class GatePainter
 * @brief Abstract painter
 * @stereotype control
 * 
 * Incapsulates the painting device references and provides interface
 * of drawing the primitives and text
 */
struct _GatePainter;
typedef struct _GatePainter GatePainter;

/**
 * @class GatePainterContext
 * @brief the painter state parameters set
 * @stereotype entity
 */
struct _GatePainterContext;
typedef struct _GatePainterContext GatePainterContext;

/**
 * @brief initialize painter object
 * 
 * @param display X display to use
 * @param draw drawable object to paint on
 */
void GatePainter_init(GatePainter*, Display *display, Drawable draw);

/**
 * @brief destroy painter object and free resources
 * @param 
 */
void GatePainter_destroy(GatePainter*);

/**
 * @brief paint string at given coordinates
 * 
 * @param gc painter parameters to use
 * @param x X coordinate
 * @param y Y coordinate
 * @param str string characters
 * @param len length of the string
 */
void GatePainter_drawString_new(GatePainter*, GatePainterContext*, int, int, const char*, int);
void GatePainter_drawString(GatePainter*, GC, int, int, const char*, int);

GatePainterContext * GatePainter_createContext(GatePainter*);

Drawable GatePainter_drawable(GatePainter *self);
void GatePainter_setDrawable(GatePainter *self, Drawable newVal);

/**
 * @class GatePainterXlib
 * @brief Pure Xlib concrete painter
 */
struct _GatePainterXlib;
typedef struct _GatePainterXlib GatePainterXlib;
GatePainterXlib *new_GatePainterXlib();

struct _GatePainterXlibContext;
typedef struct _GatePainterXlibContext GatePainterXlibContext;

/**
 * @class GatePainterPangoXft
 * @brief Pango/Xft concrete painter
 */
struct _GatePainterPangoXft;
typedef struct _GatePainterPangoXft GatePainterPangoXft;
GatePainterPangoXft *new_GatePainterPangoXft();

struct _GatePainterPangoXftContext;
typedef struct _GatePainterPangoXftContext GatePainterPangoXftContext;

/**
 * @brief GC property get
 */
GC GatePainterContext_gc(GatePainterContext*);
GC *GatePainterContext_gcRef(GatePainterContext*);

/**
 * @brief set active font
 * @param TkGate font object
 */
void GatePainterContext_setFont(GatePainterContext*, GateFont);

int GatePainterContext_textWidth(GatePainterContext*, GateFont, const char*, int);

GateFontMetrics GatePainterContext_fontMetrics(GatePainterContext*, GateFont*);

#endif	/* GATE_PAINTER_H */
