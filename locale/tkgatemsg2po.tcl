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

########################################################################
#
# Parse string of the messages file
# State machine with state variables currentKey and currentValue
# \param line: text line to parse
# \param sourceLine
# \param msgHash: Hash id to use
#
# You need tcl-tcllib installed
#
proc parseString {line sourceLine msgHash} {

	global messagesHash
	global messagesLine2Key
	global currentKey
	global currentValue

	# New key found
	if {[string equal $currentKey ""]} {
		set start [string first "\t" $line]
		set stop [string last "\t" $line]
		if {$start > 0} {
			set currentKey [string range $line 0 [expr {$start-1}]]
			lappend messagesLine2Key($msgHash) [list $sourceLine $currentKey]
			set value [string trim [string range $line $stop [string length $line]]]
			if {([string equal $value "-fillbegin-"] == 0) &&
			    ([string equal $value "-begin-"] == 0)} {
				set currentValue $value
				set messagesHash($currentKey,$msgHash) $currentValue
				set currentKey ""
			} else {
				set currentValue ""
			}
		}
	# Next line of the current value
	} else {
		if {[string equal $line "-end-"]} {
			set messagesHash($currentKey,$msgHash) $currentValue
			set currentKey ""
			set currentValue ""
		} else {
			if {[string length $currentValue] > 0} {
				set currentValue "$currentValue\n"
			}
			set currentValue "$currentValue$line"
		}
	}
}

proc parseFile {msgFile msgHash} {
	set sourceLine 1

	while {1} {
		set line [gets $msgFile]
		if {[eof $msgFile]} {
			close $msgFile
			break
		}
		# trim line and reject of the comment and service lines
		set line [string trim $line]
		if {([string first # $line] == -1) &&
		    ([string first @ $line] == -1) &&
		    ([string first "\\" $line] == -1) &&
		    ([string length $line] > 0)} {
			parseString $line $sourceLine $msgHash
		}
		incr sourceLine
	}
}

global messagesHash
global messagesLine2Key
global currentKey
global currentValue

set parameters {
	{m.arg "" "Base messages file with all messages (english locale)"}
	{l.arg "" "Translated message file (possibly partial translated)"}
	{pot.arg "" "Gettext portable object template file"}
	{po.arg "" "Gettext portable object file for locale"}
}

set usage "Convert TkGate messages files into gettext portable objects \
\nUsage: tkgatemsg2po \n\t-m <english message file>\n\t-l<localized message file> \
\n\t-pot <template file>\n\t-po <locale file>"

array set options [cmdline::getoptions ::argv $parameters $usage]

if {$argc == 0} {
	puts $usage
	exit 0
}

set currentKey ""
set currentValue ""

# try to open original (english) messages file
#try {
	set f [open $options(m) r]
#} on error {res opt} {
#	puts stderr "Messages file $options(m) not opened"
#	return -options $opt $res
#}
puts "Messages file '$options(m)' opened"

# try to open template output file
#try {
	set f0 [open $options(pot) w]
#} on error {res opt} {
#	puts stderr "Gettext template file $options(pot) not opened"
#	return -options $opt $res
#}
puts stderr "Gettext template file '$options(pot)' opened"

# try to open locale messages file
#try {
	set fLocMsg [open $options(l) r]
#} on error {res opt} {
#	puts stderr "Locale messages file $options(l) not opened"
#	return -options $opt $res
#}
puts stderr "Locale messages '$options(l)' opened"

# try to open locale output file
#try {
	set fLoc [open $options(po) w]
#} on error {res opt} {
#	puts stderr "Locale output file $options(po) not opened"
#	return -options $opt $res
#}
puts stderr "Locale output '$options(po)' opened"

parseFile $f m
parseFile $fLocMsg l

puts $f0 "# SOME DESCRIPTIVE TITLE."
puts $f0 "# Copyright (C) YEAR THE PACKAGE'S COPYRIGHT HOLDER"
puts $f0 "# This file is distributed under the same license as the PACKAGE package."
puts $f0 "# FIRST AUTHOR <EMAIL@ADDRESS>, YEAR."
puts $f0 "#"
puts $f0 "#, fuzzy"
puts $f0 "msgid \"\""
puts $f0 "msgstr \"\""
puts $f0 "\"Project-Id-Version: PACKAGE VERSION\\n\""
puts $f0 "\"Report-Msgid-Bugs-To: \\n\""
puts $f0 "\"POT-Creation-Date: [clock format [clock seconds] -format {%Y-%m-%d %H:%M}]\+0300\\n\""
puts $f0 "\"PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE\\n\""
puts $f0 "\"Last-Translator: FULL NAME <EMAIL@ADDRESS>\\n\""
puts $f0 "\"Language-Team: LANGUAGE <LL@li.org>\\n\""
puts $f0 "\"Language: \\n\""
puts $f0 "\"MIME-Version: 1.0\\n\""
puts $f0 "\"Content-Type: text/plain; charset=UTF-8\\n\""
puts $f0 "\"Content-Transfer-Encoding: 8bit\\n\""

puts $f0 "\n# ##############################################################################"
puts $f0 "# Generated by tkgatemsg2po script"
puts $f0 "# ##############################################################################"

foreach pair $messagesLine2Key(m) {
	set str [lindex $pair 0]
	set keyName [lindex $pair 1]
	set msgVal $messagesHash($keyName,m)
	regsub -all "\"" $msgVal "\\\"" msgVal
	puts $f0 ""
	puts $f0 "# $keyName"
	puts $f0 "#: $options(m):$str"
	set line "msgid "
	set strList [split $msgVal "\n"]
	if {[llength $strList] > 1} {
		set line "$line\"\"\n\"[join $strList \\n\"\n\"]\""
	} else {
		set line "$line\"[lindex $strList 0]\""
	}
	puts $f0 $line
	puts $f0 "msgstr \"\""
}

close $f0
exec msguniq $options(pot) -o "$options(pot).tmp"
exec mv "$options(pot).tmp" $options(pot)
exec sed -i {/#-#-#-#-#/d} $options(pot)

puts $fLoc "# This file is part of TkGate project"
puts $fLoc "# Copyright (C) 1987-2015 by Jeffery P. Hansen"
puts $fLoc "# This file is distributed under the same license as the TkGate package."
puts $fLoc "#"
puts $fLoc "# Translators:"
puts $fLoc "# Andrey V. Skvotsov <starling13@gmail.com>, 2015"
puts $fLoc "msgid \"\""
puts $fLoc "msgstr \"\""
puts $fLoc "\"Project-Id-Version: TkGate 2.0\\n\""
puts $fLoc "\"Report-Msgid-Bugs-To: starling13@gmail.com\\n\""
puts $fLoc "\"POT-Creation-Date: [clock format [clock seconds] -format {%Y-%m-%d %H:%M}]+0300\\n\""
puts $fLoc "\"PO-Revision-Date: [clock format [clock seconds] -format {%Y-%m-%d %H:%M}]+0300\\n\""
puts $fLoc "\"Last-Translator: Andrey Skvortsov <starling13@gmail.com>\\n\""
puts $fLoc "\"Language-Team: LANGUAGE <LL@li.org>\\n\""
puts $fLoc "\"Language: ru\\n\""
puts $fLoc "\"MIME-Version: 1.0\\n\""
puts $fLoc "\"Content-Type: text/plain; charset=UTF-8\\n\""
puts $fLoc "\"Content-Transfer-Encoding: 8bit\\n\""
puts $fLoc "\"X-Generator: tkgatemsg2po script\\n\""

foreach pair $messagesLine2Key(l) {
	
	set str [lindex $pair 0]
	set keyName [lindex $pair 1]
	set msgVal $messagesHash($keyName,l)
	regsub -all "\"" $msgVal "\\\"" msgVal
	set origMsgVal $messagesHash($keyName,m)
	regsub -all "\"" $origMsgVal "\\\"" origMsgVal

	puts $fLoc ""
	puts $fLoc "# $keyName"
	puts $fLoc "#: $options(l):$str"
	
	# Put original message
	set line "msgid "
	set strList [split $origMsgVal "\n"]
	if {[llength $strList] > 1} {
		set line "$line\"\"\n\"[join $strList \\n\"\n\"]\""
	} else {
		set line "$line\"[lindex $strList 0]\""
	}
	puts $fLoc $line
	
	# Put translated message
	set line "msgstr "
	set strList [split $msgVal "\n"]
	if {[llength $strList] > 1} {
		set line "$line\"\"\n\"[join $strList \\n\"\n\"]\""
	} else {
		set line "$line\"[lindex $strList 0]\""
	}
	puts $fLoc $line
}

close $fLoc
exec msguniq $options(po) -o "$options(po).tmp"
exec mv "$options(po).tmp" $options(po)
exec sed -i {/#-#-#-#-#/d} $options(po)
