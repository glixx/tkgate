/****************************************************************************
    Copyright (C) 1987-2015 by Jeffery P. Hansen
    Copyright (C) 2015-2018 by Andrey V. Skvortsov

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

#include <pango/pangoxft.h>
#include <assert.h>

GateColor notAColor = {
	.xColor = {
		.pixel = -1
	},
	.xftColor = {
		.pixel = -1
	}
};

Boolean GateColor_equals(GateColor *lhs, GateColor *rhs)
{
	if (memcmp(lhs, rhs, sizeof (GateColor)) == 0)
		return (GATE_TRUE);
	else
		return (GATE_FALSE);
}

/**
 * @brief virtual methods table for GatePainter class
 */
struct _GatePainter_vtable {
	void (*init)(GatePainter*, Display*, Drawable);
	void (*destroy)(GatePainter*);
	void (*drawString)(GatePainter*, GC, int, int, const char*, int);
	void (*drawString_new)(GatePainter*, GatePainterContext*, int, int, const char*, int);
	GatePainterContext *(*createContext)(GatePainter *self);
	GateColor (*getColor)(GatePainter*, const char*);
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

static GateColor
GatePainterXlib_createColor(GatePainter*, const char*);


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

static GateColor
GatePainterPangoXft_createColor(GatePainter*, const char*);

/**
 * @brief virtual methods table for GatePainterContext class
 */
struct _GatePainterContext_vtable {
	void (*setFont)(GatePainterContext*, GateFont);
	int (*textWidth)(GatePainterContext*, GateFont, const char*, int len);
	GateFontMetrics (*fontMetrics)(GatePainterContext*, GateFont*);
	void (*print)(GatePainterContext*, FILE*);
};

#define GATE_PAINTER \
	struct _GatePainter_vtable	*vtable; \
	Display				*display; \
	Drawable			 drawable; \

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
	Pixmap		 pixmap;
};

static void GatePainterXlibContext_setFont(GatePainterContext*, GateFont);
static void GatePainterPangoXftContext_setFont(GatePainterContext*, GateFont);

static void GatePainterXlibContext_print(GatePainterContext*, FILE*);
static void GatePainterPangoXftContext_print(GatePainterContext*, FILE*);

static int GatePainterXlibContext_textWidth(GatePainterContext*, GateFont, const char*, int);
static int GatePainterPangoXftContext_textWidth(GatePainterContext*, GateFont, const char*, int);

static GateFontMetrics GatePainterXlibContext_fontMetrics(GatePainterContext *_self, GateFont *font);
static GateFontMetrics GatePainterPangoXftContext_fontMetrics(GatePainterContext *_self, GateFont *font);

static struct _GatePainterContext_vtable _gatePainterXlibContext_vtable = {
	.setFont = GatePainterXlibContext_setFont,
	.textWidth = GatePainterXlibContext_textWidth,
	.fontMetrics = GatePainterXlibContext_fontMetrics,
	.print = GatePainterXlibContext_print
};

static struct _GatePainterContext_vtable _gatePainterPangoXftContext_vtable = {
	.setFont = GatePainterPangoXftContext_setFont,
	.textWidth = GatePainterPangoXftContext_textWidth,
	.fontMetrics = GatePainterPangoXftContext_fontMetrics,
	.print = GatePainterPangoXftContext_print
};

#define GATE_PAINTER_CONTEXT \
	struct _GatePainterContext_vtable *vtable; \
	GatePainter	*painter; \
	GateColor	 color; \
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

void
GatePainterContext_setColor(GatePainterContext *self, GateColor color)
{
	self->color = color;
}

void
GatePainterContext_print(GatePainterContext *self, FILE *stream)
{
	self->vtable->print(self, stream);
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

struct _GatePainterPangoXftContext {
	
	GATE_PAINTER_CONTEXT
	
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
	.createContext = GatePainterPangoXft_createContext,
	.getColor = GatePainterPangoXft_createColor
};

static struct _GatePainter_vtable _gatePainterXlib_vtable = {
	.init = GatePainterXlib_init,
	.destroy = GatePainterXlib_destroy,
	.drawString = GatePainterXlib_drawString,
	.drawString_new = GatePainterXlib_drawString_new,
	.createContext = GatePainterXlib_createContext,
	.getColor = GatePainterXlib_createColor
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
GatePainter_drawString(
  GatePainter *self,
  GC gc,
  int x,
  int y,
  const char *str,
  int len)
{
	self->vtable->drawString(self, gc, x, y, str, len);
}

void
GatePainter_drawString_new(
  GatePainter *self,
  GatePainterContext *gc,
  int x,
  int y,
  const char *str,
  int len)
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

GateColor
GatePainter_getColor(GatePainter *self, const char *name)
{
	return self->vtable->getColor(self, name);
}

Drawable
GatePainter_drawable(GatePainter *self)
{
	return self->drawable;
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

GatePainterXlibContext*
new_GatePainterXlibContext()
{
	GatePainterXlibContext *result;
	
	result = (GatePainterXlibContext*)malloc(sizeof (GatePainterXlibContext));
	assert(result != NULL);
	
	result->vtable = &_gatePainterXlibContext_vtable;
	
	return result;
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
	GatePainterContext *result;
	
	result = (GatePainterContext*)new_GatePainterXlibContext();
	
	return result;
#undef self
}

static GateColor
GatePainterXlib_createColor(GatePainter *self, const char *name)
{
	GateColor	result;
	XColor		eXC;
	//int		res;

	/*res =*/ XAllocNamedColor(self->display, TkGate.CM, name, &result.xColor,
	    &eXC);
	//if (res != Success)
	//	fprintf(stderr, "XAllocNamedColor: %d\n", res);
	
	return result;
}

GatePainterPangoXft*
new_GatePainterPangoXft()
{
	GatePainterPangoXft *result;
	
	result = (GatePainterPangoXft*)malloc(sizeof (GatePainterPangoXft));
	assert(result != NULL);
	
	result->vtable = &_gatePainterPangoXft_vtable;
	
	return result;
}

static void
GatePainterPangoXft_init(GatePainter *_self, Display *display, Drawable draw)
{
#define self ((GatePainterPangoXft*)_self)
	
	self->pixmap = XCreatePixmap(display, draw, 800, 600, 24);
	self->draw = XftDrawCreate(
	    self->display,
	    self->pixmap,
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
#define gCont ((GatePainterPangoXftContext*)_gc)
	
	unsigned width, height, function; //, foreground;
	XGCValues result;
	
	XGetGCValues(self->display, gCont->gc,
	  GCFunction | GCBackground | GCForeground, &result);
	function = result.function;
	//foreground = result.foreground;
	
	GatePainterContext_print(_gc, stdout);
	XSetFunction(self->display, gCont->gc, GXcopy);
	//XSetForeground(self->display, gCont->gc, result.background);
	
	pango_layout_set_text(gCont->layout, str, len);
	pango_layout_set_font_description(gCont->layout,
	  pango_font_describe(gCont->activeFont));
	pango_layout_get_pixel_size(gCont->layout, (int*)&width, (int*)&height);
	
	XFillRectangle(self->display,self->pixmap, gCont->gc, 0,0, width,height);
	XSetFunction(self->display, gCont->gc, function);
	//XSetForeground(self->display, gCont->gc, foreground);
	
	pango_xft_render_layout(self->draw, &(gCont->color.xftColor), gCont->layout,
	    0, 0);
	XCopyArea(self->display, self->pixmap, self->drawable, gCont->gc,
	    0,0, width,height, x,y);
	
#undef self
#undef gCont
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
	
	return res;
}

static gboolean
fontsEqual(gconstpointer a, gconstpointer b)
{
	int res;
	
	res = memcmp(a, b, sizeof (GateFont));
	if (res == 0)
		return TRUE;
	else
		return FALSE;
}

static GatePainterContext*
GatePainterPangoXft_createContext(GatePainter *_self)
{
#define self ((GatePainterPangoXft*)_self)
	GatePainterPangoXftContext *result;

	result = (GatePainterPangoXftContext*)malloc(
	    sizeof (GatePainterPangoXftContext));
	assert(result != NULL);
	memset(result, 0, sizeof (GatePainterPangoXftContext));
	
	result->vtable = &_gatePainterPangoXftContext_vtable;
	result->pangoContext = pango_font_map_create_context(self->fontMap);
	assert(result->pangoContext);

	result->fontHash = g_hash_table_new(getFontHash, fontsEqual);
	assert(result->fontHash);
	
	XftColorAllocName(self->display, XDefaultVisual(self->display, 0),
	    TkGate.CM, "black", &(result->color.xftColor));
	
	result->layout = pango_layout_new(result->pangoContext);
	assert(result->layout);
	
	return (GatePainterContext*)result;
#undef self
}

static GateColor
GatePainterPangoXft_createColor(GatePainter *self, const char *name)
{
	GateColor result;
	
	GatePainterXlib_createColor(self, name);
	XftColorAllocName(self->display, XDefaultVisual(self->display, 0),
	    TkGate.CM, name, &result.xftColor);
	
	return result;
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
	if (res != Success);
		//fprintf(stderr, "XSetFont: error %d\n", res);
#undef self
}

void
GatePainterXlibContext_print(GatePainterContext *self, FILE *stream)
{
	XGCValues result;
	
	XGetGCValues(self->painter->display, self->gc,
	    GCFunction | GCForeground | GCBackground | GCFont, &result);
	
	//fprintf(stream, "GatePainter context:\n"
	//    "\tfunction:   %d\n\tforeground: %lx\n\tbackground: %lx\n",
	//    result.function, result.foreground, result.background);
}

void
GatePainterPangoXftContext_print(GatePainterContext *_self, FILE *stream)
{
#define self ((GatePainterPangoXftContext*)_self)
	XGCValues result;
	
	XGetGCValues(self->painter->display, self->gc,
	    GCFunction | GCForeground | GCBackground | GCFont, &result);
	
	//fprintf(stream, "GatePainter context:\n"
	//    "\tfunction:   %d\n\tforeground: %lx\n\tbackground: %lx\n",
	//    result.function, result.foreground, result.background);
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
		    getFontSize(font->size)*TkGate.circuit->zoom_factor*PANGO_SCALE*3/4);
		
		switch (font->prop) {
		case FP_BOLD :
			pango_font_description_set_weight(desc, PANGO_WEIGHT_BOLD);
			break;
		case FP_ITALIC :
			pango_font_description_set_style(desc, PANGO_STYLE_ITALIC);
			break;
		default :
			break;
		}
		
		result = pango_font_map_load_font(painter->fontMap, self->pangoContext,
		    desc);
		if (!result) {
			fputs("pango_font_map_load_font: cannot load font", stderr);
			return NULL;
		}
		
		key = (GateFont*)malloc(sizeof (GateFont));
		memcpy(key, font, sizeof(GateFont));
		if (!g_hash_table_insert(self->fontHash, key, result)) {
			fputs("g_hash_table_insert: cannot insert value", stderr);
			return NULL;
		}
		    
		printf("PainterPangoXft: font desc: family %d, props %d size %d created\n",
		    font->family, font->prop, font->size);
	}
	return result;
#undef painter
}

static void
GatePainterPangoXftContext_setFont(GatePainterContext *_self, GateFont font)
{
#define self ((GatePainterPangoXftContext*)_self)
	self->activeFont = _GatePainterPangoXftContext_addFont(self, &font);
	assert(self->activeFont);
#undef self
}

static int
GatePainterXlibContext_textWidth(GatePainterContext *self, GateFont font, const char *str, int len)
{
	return XTextWidth(GetXFont(font, TkGate.circuit->zoom_factor), str, len);
}

static GateFontMetrics
GatePainterXlibContext_fontMetrics(GatePainterContext *_self, GateFont *font)
{
	GateFontMetrics result;
	XFontStruct *fs;
	
	fs = GetXFont(*font, TkGate.circuit->zoom_factor);
	result.ascent = fs->ascent;
	result.descent = fs->descent;
	
	return result;
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
	
	return width;
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
	
	return result;
#undef self
}
