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

#include "gate_painter.h"
#include "tkgate.h"

#include <X11/Xft/Xft.h>
#include <pango/pangoxft.h>
#include <assert.h>

/**
 * @brief virtual methods table for GatePainter class
 */
struct _GatePainter_vtable {
	void (*init)(GatePainter*, Display*, Drawable);
	void (*destroy)(GatePainter*);
	void (*drawString)(GatePainter*, GC, int, int, const char*, int);
	void (*drawString_new)(GatePainter*, GatePainterContext*, int, int, const char*, int);
	GatePainterContext *(*createContext)(GatePainter *self);
};

static void
GatePainterXlib_init(GatePainter*, Display*, Drawable);

static void
GatePainterXlib_destroy(GatePainter*);

static void
GatePainterXlib_drawString(GatePainter*, GC, int, int, const char*, int);

static void
GatePainterXlib_drawString_new(GatePainter*, GatePainterContext*, int, int, const char*, int);

static GatePainterContext*
GatePainterXlib_createContext(GatePainter*);


static void
GatePainterPangoXft_init(GatePainter*, Display*, Drawable);

static void
GatePainterPangoXft_destroy(GatePainter *);

static void
GatePainterPangoXft_drawString(GatePainter *, GC, int, int, const char*, int);

static void
GatePainterPangoXft_drawString_new(GatePainter *, GatePainterContext*, int, int, const char*, int);

static GatePainterContext*
GatePainterPangoXft_createContext(GatePainter*);

/**
 * @brief virtual methods table for GatePainterContext class
 */
struct _GatePainterContext_vtable {
	void (*setFont)(GatePainterContext*, GateFont);
	int (*textWidth)(GatePainterContext*, GateFont, const char*, int len);
	GateFontMetrics (*fontMetrics)(GatePainterContext*, GateFont*);
};

#define GATE_PAINTER \
	struct _GatePainter_vtable	*vtable; \
	Display				*display; \
	Drawable			 drawable;

struct _GatePainter {
	
	GATE_PAINTER
	
};

struct _GatePainterXlib {
	
	GATE_PAINTER
	
};

struct _GatePainterPangoXft {
	
	GATE_PAINTER
	    
	XftDraw		*draw;
	PangoFontMap	*fontMap;
};

static void GatePainterXlibContext_setFont(GatePainterContext*, GateFont);
static void GatePainterPangoXftContext_setFont(GatePainterContext*, GateFont);

static int GatePainterXlibContext_textWidth(GatePainterContext*, GateFont, const char*, int);
static int GatePainterPangoXftContext_textWidth(GatePainterContext*, GateFont, const char*, int);

static GateFontMetrics GatePainterXlibContext_fontMetrics(GatePainterContext *_self, GateFont *font);
static GateFontMetrics GatePainterPangoXftContext_fontMetrics(GatePainterContext *_self, GateFont *font);

static struct _GatePainterContext_vtable _gatePainterXlibContext_vtable = {
	.setFont = GatePainterXlibContext_setFont,
	.textWidth = GatePainterXlibContext_textWidth,
	.fontMetrics = GatePainterXlibContext_fontMetrics
};

static struct _GatePainterContext_vtable _gatePainterPangoXftContext_vtable = {
	.setFont = GatePainterPangoXftContext_setFont,
	.textWidth = GatePainterPangoXftContext_textWidth,
	.fontMetrics = GatePainterPangoXftContext_fontMetrics
};

#define GATE_PAINTER_CONTEXT \
	struct _GatePainterContext_vtable *vtable; \
	GatePainter *painter; \
	GC gc;

struct _GatePainterContext {
	
	GATE_PAINTER_CONTEXT
	    
};

GC
GatePainterContext_gc(GatePainterContext *self)
{
	return (self->gc);
}

GC*
GatePainterContext_gcRef(GatePainterContext *self)
{
	return (&self->gc);
}

void
GatePainterContext_setFont(GatePainterContext *self, GateFont font)
{
	self->vtable->setFont(self, font);
}

int
GatePainterContext_textWidth(GatePainterContext *self, GateFont font, const char *str, int len)
{
	return (self->vtable->textWidth(self, font, str, len));
}

GateFontMetrics
GatePainterContext_fontMetrics(GatePainterContext *self, GateFont *font)
{
	return (self->vtable->fontMetrics(self, font));
}

struct _GatePainterXlibContext {
	
	GATE_PAINTER_CONTEXT
	    
};

struct _FontHashPair {
	GateFont key;
	PangoFontDescription *desc;
};

struct _GatePainterPangoXftContext {
	
	GATE_PAINTER_CONTEXT
	
	XftColor		 color;
	PangoContext		*pangoContext;
	GHashTable		*fontHash;
	PangoFont		*activeFont;
	PangoLayout		*layout;
};

static struct _GatePainter_vtable _gatePainterPangoXft_vtable = {
	.init = GatePainterPangoXft_init,
	.destroy = GatePainterPangoXft_destroy,
	.drawString = GatePainterPangoXft_drawString,
	.drawString_new = GatePainterPangoXft_drawString_new,
	.createContext = GatePainterPangoXft_createContext
};

static struct _GatePainter_vtable _gatePainterXlib_vtable = {
	.init = GatePainterXlib_init,
	.destroy = GatePainterXlib_destroy,
	.drawString = GatePainterXlib_drawString,
	.drawString_new = GatePainterXlib_drawString_new,
	.createContext = GatePainterXlib_createContext
};

void
GatePainter_init(GatePainter *self, Display *display, Drawable draw)
{
	self->display = display;
	self->drawable = draw;
	self->vtable->init(self, display, draw);
}

void
GatePainter_destroy(GatePainter *self)
{
	self->vtable->destroy(self);
}

void
GatePainter_drawString(GatePainter *self, GC gc, int x, int y, const char *str, int len)
{
	self->vtable->drawString(self, gc, x, y, str, len);
}

void
GatePainter_drawString_new(GatePainter *self, GatePainterContext *gc, int x, int y, const char *str, int len)
{
	self->vtable->drawString_new(self, gc, x, y, str, len);
}

GatePainterContext*
GatePainter_createContext(GatePainter *self)
{
	GatePainterContext *result;
	
	result = self->vtable->createContext(self);
	result->painter = self;
	
	return result;
}

Drawable
GatePainter_drawable(GatePainter *self)
{
	return (self->drawable);
}

void
GatePainter_setDrawable(GatePainter *self, Drawable newVal)
{
	self->drawable = newVal;
}

GatePainterXlib*
new_GatePainterXlib()
{
	GatePainterXlib *result;
	
	result = (GatePainterXlib*)malloc(sizeof (GatePainterXlib));
	assert(result != NULL);
	
	result->vtable = &_gatePainterXlib_vtable;
	
	return (result);
}

static void
GatePainterXlib_init(GatePainter *_self, Display *display, Drawable draw)
{
#define self ((GatePainterXlib*)_self)
	
#undef self
}

static void
GatePainterXlib_destroy(GatePainter *_self)
{
#define self ((GatePainterXlib*)_self)
	
#undef self
}

static void
GatePainterXlib_drawString(GatePainter *self, GC gc, int x, int y, const char *str, int len)
{
	int res;
	
	res = XDrawString(self->display, self->drawable, gc, x, y, str, len);
	
	assert(res == Success);
}

static void
GatePainterXlib_drawString_new(GatePainter *self, GatePainterContext *gc, int x, int y, const char *str, int len)
{
	int res;
	
	res = XDrawString(self->display, self->drawable,
	     GatePainterContext_gc(gc), x, y, str, len);
	
	assert(res == Success);
}

static GatePainterContext*
GatePainterXlib_createContext(GatePainter *_self)
{
#define self ((GatePainterXlib*)_self)
	GatePainterXlibContext *result;
	
	result = (GatePainterXlibContext*)malloc(sizeof (GatePainterXlibContext));
	assert(result != NULL);
	
	result->vtable = &_gatePainterXlibContext_vtable;
	
	return ((GatePainterContext*)result);
#undef self
}

GatePainterPangoXft*
new_GatePainterPangoXft()
{
	GatePainterPangoXft *result;
	
	result = (GatePainterPangoXft*)malloc(sizeof (GatePainterPangoXft));
	assert(result != NULL);
	
	result->vtable = &_gatePainterPangoXft_vtable;
	
	return (result);
}

static void
GatePainterPangoXft_init(GatePainter *_self, Display *display, Drawable draw)
{
#define self ((GatePainterPangoXft*)_self)
	self->draw = XftDrawCreate(
	    self->display,
	    self->drawable,
	    XDefaultVisual(self->display,0),
	    XDefaultColormap(self->display, 0));
	assert(self->draw);
	
	self->fontMap = pango_xft_get_font_map(self->display, 0);
	assert(self->fontMap);
#undef self
}

static void
GatePainterPangoXft_destroy(GatePainter *_self)
{
#define self ((GatePainterPangoXft*)_self)
	XftDrawDestroy(self->draw);
#undef self
}

static void
GatePainterPangoXft_drawString(GatePainter *self, GC gc, int x, int y, const char *str, int len)
{
	int res;
	
	res = XDrawString(self->display, self->drawable, gc, x, y, str, len);
	
	assert(res == Success);
}

static void
GatePainterPangoXft_drawString_new(GatePainter *_self, GatePainterContext *_gc, int x, int y, const char *str, int len)
{
#define self ((GatePainterPangoXft*)_self)
#define gc ((GatePainterPangoXftContext*)_gc)
	
	pango_layout_set_text(gc->layout, str, len);
	pango_layout_set_font_description(gc->layout,
	  pango_font_describe(gc->activeFont));
	pango_xft_render_layout(self->draw, &gc->color, gc->layout,
	    x*PANGO_SCALE,
	    y*PANGO_SCALE);
	
#undef self
#undef gc
}

guint
getFontHash(gconstpointer key)
{
	GateFont *font = (GateFont*)key;
	guint	  res;
	
	res = ((uint8_t)TkGate.circuit->zoom_factor << 24) |
	      ((uint8_t)font->family << 16) |
	      ((uint8_t)font->prop << 8) |
	       (uint8_t)font->size;
	
	return (res);
}

gboolean
fontsEqual(gconstpointer a, gconstpointer b)
{
	int res;
	
	res = memcmp(a, b, sizeof (GateFont));
	if (res == 0)
		return (TRUE);
	else
		return (FALSE);
}

static GatePainterContext*
GatePainterPangoXft_createContext(GatePainter *_self)
{
#define self ((GatePainterPangoXft*)_self)
	GatePainterPangoXftContext *result;
	
	result = (GatePainterPangoXftContext*)malloc(sizeof (GatePainterPangoXftContext));
	assert(result != NULL);
	memset(result, 0, sizeof (GatePainterPangoXftContext));
	
	result->vtable = &_gatePainterPangoXftContext_vtable;
	result->pangoContext = pango_font_map_create_context(self->fontMap);
	assert(result->pangoContext);
	
	result->fontHash = g_hash_table_new(getFontHash, fontsEqual);
	assert(result->fontHash);
	
	XftColorAllocName(self->display, XDefaultVisual(self->display, 0),
	    TkGate.CM, "black", &result->color);
	
	result->layout = pango_layout_new(result->pangoContext);
	assert(result->layout);
	
	return ((GatePainterContext*)result);
#undef self
}

static void
GatePainterXlibContext_setFont(GatePainterContext *_self, GateFont font)
{
#define self ((GatePainterXlibContext*)_self)
	int res;
	XFontStruct *fs;
	
	fs = GetXFont(font, TkGate.circuit->zoom_factor);
	assert(fs);
	
	res = XSetFont(self->painter->display, self->gc, fs->fid);
	if (res != Success)
		fprintf(stderr, "XSetFont: error %d\n", res);
	else
		puts("XSetFont: Success");
#undef self
}

static PangoFont*
_GatePainterPangoXftContext_addFont(GatePainterPangoXftContext *self, GateFont *font)
{
#define painter ((GatePainterPangoXft*)self->painter)
	PangoFontDescription	*desc;
	PangoFont		*result;
	GateFont		*key;
	
	result = (PangoFont*)g_hash_table_lookup(self->fontHash, font);
	if (result == NULL) {
		desc = pango_font_description_new();
		assert(desc);
		switch (font->family) {
		case FF_HELVETICA :
			pango_font_description_set_family(desc, "sans");
			break;
		case FF_COURIER :
			pango_font_description_set_family(desc, "courier");
			break;
		case FF_TIMES :
			pango_font_description_set_family(desc, "serif");
			break;
		default:
			break;
		}
		pango_font_description_set_size(desc,
		    getFontSize(font->size)*TkGate.circuit->zoom_factor*PANGO_SCALE);
		
		result = pango_font_map_load_font(painter->fontMap, self->pangoContext,
		    desc);
		if (!result) {
			fputs("pango_font_map_load_font: cannot load font", stderr);
			return (NULL);
		}
		
		key = (GateFont*)malloc(sizeof (GateFont));
		memcpy(key, font, sizeof(GateFont));
		if (!g_hash_table_insert(self->fontHash, key, result)) {
			fputs("g_hash_table_insert: cannot insert value", stderr);
			return (NULL);
		}
		    
		printf("PainterPangoXft: font desc: family %d, props %d size %d created\n",
		    font->family, font->prop, font->size);
	}
	return (result);
#undef painter
}

static void
GatePainterPangoXftContext_setFont(GatePainterContext *_self, GateFont font)
{
#define self ((GatePainterPangoXftContext*)_self)
	self->activeFont = _GatePainterPangoXftContext_addFont(self, &font);
	assert(self->activeFont);
	printf("font: %d %d %d\n", font.family, font.prop, font.size);
#undef self
}

static int
GatePainterXlibContext_textWidth(GatePainterContext *self, GateFont font, const char *str, int len)
{
	return (XTextWidth(GetXFont(font, TkGate.circuit->zoom_factor), str, len));
}

static GateFontMetrics
GatePainterXlibContext_fontMetrics(GatePainterContext *_self, GateFont *font)
{
	GateFontMetrics result;
	XFontStruct *fs;
	
	fs = GetXFont(*font, TkGate.circuit->zoom_factor);
	result.ascent = fs->ascent;
	result.descent = fs->descent;
	
	return (result);
}

static int
GatePainterPangoXftContext_textWidth(GatePainterContext *_self, GateFont font, const char *str, int len)
{
#define self ((GatePainterPangoXftContext*)_self)
	
	PangoFont *pangoFont;
	int width, height;
	
	pangoFont = _GatePainterPangoXftContext_addFont(self, &font);
	assert(pangoFont);

	pango_layout_set_text(self->layout, str, len);
	pango_layout_set_font_description(self->layout,
	  pango_font_describe(pangoFont));
	pango_layout_get_pixel_size(self->layout, &width, &height);
	
	return (width);
#undef self
}

static GateFontMetrics
GatePainterPangoXftContext_fontMetrics(GatePainterContext *_self, GateFont *font)
{
#define self ((GatePainterPangoXftContext*)_self)
	GateFontMetrics		 result;
	PangoFont		*pangoFont;
	PangoFontMetrics	*metrics;
	
	pangoFont = _GatePainterPangoXftContext_addFont(self, font);
	assert(pangoFont);
	metrics = pango_font_get_metrics(pangoFont, NULL);
	assert(metrics);
	
	result.ascent = pango_font_metrics_get_ascent(metrics) / PANGO_SCALE;
	result.descent = pango_font_metrics_get_descent(metrics) / PANGO_SCALE;
	
	result.descent += result.ascent;
	result.ascent = 0;
	
	return (result);
#undef self
}
