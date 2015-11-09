#! /usr/bin/tclsh

#   Copyright (C) 1987-2015 by Jeffery P. Hansen
#   Copyright (C) 2015 by Andrey V. Skvortsov
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License along
#   with this program; if not, write to the Free Software Foundation, Inc.,
#   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
#

package require cmdline

set parameters {
	{po.arg "" "Gettext portable object file for locale"}
	{l.arg "" "Translated message file (possibly partial translated)"}
}

set usage "Convert gettext portable objects into TkGate messages files \
\nUsage: tkgatepo2msg \n\t-po <locale file>\n\t-l<localized message file>"

array set options [cmdline::getoptions ::argv $parameters $usage]

if {$argc == 0} {
	puts $usage
	exit 0
}

# try to open locale output file
#try {
	set fLoc [open $options(po) r]
#} on error {res opt} {
#	puts stderr "Locale output file $options(po) not opened"
#	return -options $opt $res
#}
puts stderr "Locale output '$options(po)' opened"

# try to open locale messages file
#try {
	set fLocMsg [open $options(l) w]
#} on error {res opt} {
#	puts stderr "Locale messages file $options(l) not opened"
#	return -options $opt $res
#}
puts stderr "Locale messages '$options(l)' opened"
