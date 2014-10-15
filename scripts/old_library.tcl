namespace eval LibraryMgr {
  variable libList
  variable libTitle
  variable libStatus
  variable libReqStatus
  variable w .lib_mgr
  variable ss_w

  #############################################################################
  #
  # Get the title of a library file.
  #
  proc gettitle {name} {
    set f [open $name]
    if { $f == "" } { return "" }

    while {![eof $f]} {
      set s [gets $f]

      if {[lindex $s 0] == "//:" && [lindex $s 1] == "property" && [lindex $s 2] == "title"} {
	close $f
	return [lindex $s 4]
      }
    }
    close $f
    return ""
  }

  #############################################################################
  #
  # Scan the library path for the list of available libraries.
  #
  proc scanlibs args {
    global tkg_simVLibPath
    variable libTitle
    variable libStatus
    variable libReqStatus

    set path $tkg_simVLibPath
    if {[llength $args] > 0} {
      set path [lindex $args 0] 
    }

    set L {}

    foreach directory $path {
      set directory [namespace eval :: "eval concat $directory"]
      foreach file [glob -nocomplain $directory/*.v] {
	set lib [file rootname [file tail $file]]
	set title [gettitle $file]
	lappend L $lib
	set libTitle($lib) $title
	set libStatus($lib) [gat_libIsLoaded $lib]
	set libReqStatus($lib) $libStatus($lib)
      }
    }
    return [lsort -dictionary $L]
  }

  #############################################################################
  #
  # Return a string describing the status of a library.
  #
  proc status {lib} {
    variable libStatus
    variable libReqStatus
    set status unknown
    switch $libStatus($lib):$libReqStatus($lib) {
      0:0 { set status [m libmgr.status.unload] }
      1:1 { set status [m libmgr.status.load] }
      1:0 { set status [m libmgr.status.unloadp] }
      0:1 { set status [m libmgr.status.loadp] }
    }
    return $status
  }

  #############################################################################
  #
  # Mark libraries in the selection as "to be loaded".
  #
  proc load {} {
    variable libReqStatus
    variable ss_w

    foreach idx [SpreadSheet::getselection $ss_w] {
      set item [SpreadSheet::get $ss_w $idx]
      set lib [lindex $item 0]
      set libReqStatus($lib) 1
      set item [lreplace $item 2 2 [status $lib]]
      SpreadSheet::put $ss_w $idx $item
    }
  }

  #############################################################################
  #
  # Mark libraries in the selection as "to be unloaded".
  #
  proc unload {} {
    variable libReqStatus
    variable ss_w

    foreach idx [SpreadSheet::getselection $ss_w] {
      set item [SpreadSheet::get $ss_w $idx]
      set lib [lindex $item 0]
      set libReqStatus($lib) 0
      set item [lreplace $item 2 2 [status $lib]]
      SpreadSheet::put $ss_w $idx $item
    }
  }

  #############################################################################
  #
  # Mark all libraries as "to be unloaded".
  #
  proc unloadall {} {
    variable libReqStatus
    variable ss_w

    set n [SpreadSheet::size $ss_w]
    for { set idx 0 } { $idx < $n } { incr idx } {
      set item [SpreadSheet::get $ss_w $idx]
      set lib [lindex $item 0]
      set libReqStatus($lib) 0
      set item [lreplace $item 2 2 [status $lib]]
      SpreadSheet::put $ss_w $idx $item
    }
  }

  #############################################################################
  #
  # Commit changes to library status.
  #
  proc ok {} {
    variable libStatus
    variable libReqStatus
    variable libList
    variable w
    
    set actionname ""

    destroy $w

    set doload 0
    set dounload 0
    foreach lib $libList {
      if { $libReqStatus($lib) == $libStatus($lib) } continue
	
      if { $libReqStatus($lib) } {
	set doload 1
      } else {
	set dounload 1
      }
    }

    if {$doload && !$dounload} {
      set actionname LoadLibs
    } elseif {!$doload && $dounload} {
      set actionname UnloadLibs
    } elseif {$doload && $dounload} {
      set actionname ChgLibs
    } else {
      set actionname ""
    }

    if { $actionname != "" } {
      action $actionname {
	foreach lib $libList {
	  if { $libReqStatus($lib) == $libStatus($lib) } continue
	  
	  if { $libReqStatus($lib) } {
	    gat_loadLibrary $lib
	  } else {
	    gat_unloadLibrary $lib
	  }
	}
      }
    }
  }

  #############################################################################
  #
  # Cancel any changes to library status.
  #
  proc cancel {} {
    variable w
    destroy $w
  }

  proc manager {cmd args} {
    switch $cmd {
      canenter {
	return 0
      }
    }
  }


  #############################################################################
  #
  # Post the library manager.
  #
  proc post {} {
    variable w
    variable ss_w
    variable libList
    variable libTitle
    variable libStatus
    variable libReqStatus
    global simOn

    if {$simOn} {
      tk_messageBox -type ok -icon warning -message [m libmgr.notedit]
      return
    }

    if {[catch {toplevel $w}]} return
    wm resizable $w 0 0
    wm title $w "TKGate: Library Manager"
    wm geometry $w [offsetgeometry . 50 50]
    wm transient $w .

    set libList [scanlibs]

    okcancel $w.ok -okcommand LibraryMgr::ok -cancelcommand LibraryMgr::cancel
    pack $w.ok -side bottom -fill both

    frame $w.main -bd 2 -relief raised
    pack $w.main -fill both

    dialogImage $w.main.image -image [gifI general.gif] -caption  [m libmgr.cap] -explaination [m libmgr.exp]
    pack $w.main.image -side left

    frame $w.main.g
    SpreadSheet::create $w.main.g.lb  -height 13 -bd 2 -relief sunken -yscrollcommand "$w.main.g.vb set"  \
	-dograb 0 -entrycommand LibraryMgr::manager
    scrollbar $w.main.g.vb -orient vertical -command "SpreadSheet::yview  $w.main.g.lb"
    SpreadSheet::addcolumn $w.main.g.lb -width 15 -header [m libmgr.library]
    SpreadSheet::addcolumn $w.main.g.lb -width 50 -header [m libmgr.description]
    SpreadSheet::addcolumn $w.main.g.lb -width 15 -header [m libmgr.status]
    set ss_w $w.main.g.lb

    foreach item $libList {
      SpreadSheet::insert $ss_w end [list $item $libTitle($item) [status $item]]
    }

    pack $w.main.g.lb $w.main.g.vb -side left -fill y
    pack $w.main.g -padx 15 -pady 15

    frame $w.main.bb
    button $w.main.bb.load -text [m libmgr.load] -command LibraryMgr::load
    button $w.main.bb.unload -text [m libmgr.unload] -command LibraryMgr::unload
    button $w.main.bb.unloadall -text [m libmgr.unloadall] -command LibraryMgr::unloadall
    pack $w.main.bb.load $w.main.bb.unload $w.main.bb.unloadall -side left -padx 5 -pady 5
    pack $w.main.bb -anchor e
  }
}

