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

#ifndef __zoom_h
#define __zoom_h

void ZDrawLine(Display *display,Drawable d,GC gc,int x1,int y1,int x2,int y2);
void ZDrawLines(Display *display,Drawable d,GC gc,XPoint *points,int npoints,int mode);
void ZDrawRectangle(Display *display, Drawable d,GC gc,int x,int y,unsigned width,unsigned height);
void ZFillRectangle(Display *display, Drawable d,GC gc,int x,int y,unsigned width,unsigned height);
void ZDrawString(Display *display,Drawable d,GC gc,int x,int y,char *string,int length);
void ZDrawString16(Display *display,Drawable d,GC gc,int x,int y,XChar2b *string,int length);
void ZCopyArea(Display *display,Drawable src,Drawable dest,GC gc,int src_x,int src_y,
	       unsigned width,unsigned height,int dest_x,int dest_y);
void ZCopyPlane(Display *display,Drawable src,Drawable dest,GC gc,int src_x,int src_y,
		unsigned width,unsigned height,int dest_x,int dest_y,unsigned long plane);

/*@TODO: to remove*/
/*void unZoomMetrics(Tk_FontMetrics *);*/

#endif
