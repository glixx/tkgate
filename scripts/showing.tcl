#   Copyright (C) 1987-2015 by Jeffery P. Hansen
#   Copyright (C) 2015-2019 by Andrey V. Skvortsov
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

proc showDocFile {label file L} {

  set w .docwin
  set i 0
  while { [catch { toplevel $w$i}] } {
    incr i
  }
  set w $w$i

  wm resizable $w 0 0
  wm title $w $label
  wm transient $w .

  button $w.dismiss -text [m b.dismiss] -command "destroy $w"
  scrollbar $w.scroll -command "$w.text yview"
  text $w.text -yscrollcommand "$w.scroll set"

  pack $w.dismiss -side bottom -fill x
  pack $w.text $w.scroll -side left -fill y

  foreach s $L {
    $w.text insert end "$s\n"
  }

  if { $file != "" } {
    set f [open $file r]
    $w.text insert end [read $f]
    close $f
  }
  $w.text configure -state disabled
}

proc showLicense {} {
  global bd tkg_progVer tkg_copyright tkg_mailContact tkg_description lang tkg_gateHome

  set L {}
  lappend L "TkGate $tkg_progVer - [m cprt.descr]"
  lappend L ""
  lappend L "$tkg_copyright"
  lappend L ""
  lappend L "[m license1]"
  lappend L ""
  lappend L "[m license2]"
  lappend L ""
  lappend L "[m license3]"
  lappend L ""

  showDocFile [m cprt.lic] "" $L

#  set licensePath "$tkg_gateHome/locale/$lang/license.txt"
#  if { [file exists $licensePath] == 0 } {
#    puts "Cannot locate $licensePath, using en version"
#    set licensePath "$tkg_gateHome/locale/en/license.txt"
#  }
#  showDocFile [m cprt.lic] $licensePath $L
}

proc showDocumentation {} {
  global bd tkg_progVer tkg_copyright tkg_mailContact tkg_description tkg_homepage tkg_localdoc

  gat_dohyperlink $tkg_localdoc

  if {0} {
    set L {}
    lappend L "TkGate $tkg_progVer - [m cprt.descr]"
    lappend L ""
    lappend L "$tkg_copyright"
    lappend L ""
#    lappend L "Currently there is no built-in documentation for TkGate other than the"
#    lappend L "balloon help which can be activated by placing the mouse cursor over"
#    lappend L "interface elements, and the online tutorials available. Documentation"
#    lappend L "can be found by pointing your Web browser at the TkGate home page:"
#    lappend L ""
    lappend L "   $tkg_homepage"
    lappend L ""
#    lappend L "or through the copy of the documentation included in this distribution at:"
#    lappend L ""
#    lappend L "   $tkg_localdoc"

    showDocFile [m showdoc] "" $L
  }
}

proc showAbout {} {
  global bd tkg_progVer tkg_copyright tkg_mailContact tkg_description

  if { [catch { toplevel .about}] } {
    catch { raise .about }
    return;
  }
  wm title .about  "[m cprt.about] $tkg_progVer"

  button .about.dismiss -text [m b.dismiss] -command "destroy .about"
  label .about.logo -relief groove -image [gifI biggatelogo.gif]
  label .about.label -text "TKGate $tkg_progVer - [m cprt.descr]\n$tkg_copyright\n$tkg_mailContact"

  pack .about.logo -padx 10 -pady 10  -ipadx 10 -ipady 10
  pack .about.label -padx 10 -pady 10
  pack .about.dismiss -padx 10 -pady 10
}
