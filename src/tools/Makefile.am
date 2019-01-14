## Process this file with automake to produce Makefile.in
#
#    Copyright (C) 1987-2015 by Jeffery P. Hansen
#    Copyright (C) 2015-2019 by Andrey V. Skvortsov
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program; if not, write to the Free Software Foundation, Inc.,
#    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#

AM_CFLAGS=@COMMON_IPATH@ @TOP_IPATH@

noinst_PROGRAMS=colors msgdiff mvtag

colors_SOURCES=colors.c
colors_LDFLAGS=@COMMON_LPATH@
colors_LDADD=-lcommon

msgdiff_SOURCES=msgdiff.c
msgdiff_LDFLAGS=@COMMON_LPATH@
msgdiff_LDADD=-lcommon

mvtag_SOURCES=mvtag.c
mvtag_LDFLAGS=@COMMON_LPATH@
mvtag_LDADD=-lcommon

dist_noinst_DATA=blue.txt cyan.txt magenta.txt yellow.txt colors.txt green.txt red.txt
dist_noinst_SCRIPTS=genmsg
