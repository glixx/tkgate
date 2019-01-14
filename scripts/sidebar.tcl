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

namespace eval SideBar {
  #############################################################################
  #
  # Make a tab for the Net/Ports box
  #
  proc netTabs {w tab} {
    switch $tab {
      Nets {
	NetList::create $w
      }
      Ports {
	PortList::create $w
      }
    }
    $w configure -padx 2 -pady 2
  }


  #############################################################################
  #
  # Make a tab for the module tree/list view
  #
  proc moduleTabs {w tab} {
    switch $tab {
      Tree {
	BlockTree::create $w
      }
      List {
	BlockList::create $w
      }
    }
    $w configure -padx 2 -pady 2
  }

  #############################################################################
  #
  # This creates the combined nets/ports list on the lower left side of the GUI
  #
  proc makeNetPortBox {w} {
    TabBox::new $w -tabs { Nets Ports} -command SideBar::netTabs -tablabels [list [m sidetab.nets]  [m sidetab.ports]] -expand 1

    helpon $w.bNets [m ho.netlist]
    helpon $w.bPorts [m ho.ports]
  }

  #############################################################################
  #
  # This creates the combined module tree/list viewer
  #
  proc makeBlockList {w} {
    frame $w

    set labels [list [m module.tree] [m module.list]]
    set images [list [gifI modtree.gif] [gifI modlist.gif]]

    TabBox::new $w.mtab -tabs {Tree List} -command SideBar::moduleTabs -tablabels $labels -tabimages $images -compound left -expand 1
    pack $w.mtab -fill both -expand 1


    helpon $w.mtab.bTree [m ho.modtree]
    helpon $w.mtab.bList [m ho.modlist]
  }

  #
  # The user requested a property edit, but there are no gates seleted.  Look in the side
  # bar windows to see if we can find something selected.
  #
  proc editModuleOrNet {} {
    set net [NetList::getselection]
    if {$net != "" } {
      gat_editNet $net
      return
    }
    #  if { [BlockList::getselection] != "" || [BlockTree::getselection] != "" } {
    #    EditModuleDB::post
    #  }
  }

  #
  # Set up the side-bar windows here.
  #
  proc new {w} {
    makeBlockList $w.blklst
    makeNetPortBox $w.nptab

    pane $w.blklst $w.nptab -orient vertical -handlelook {-relief flat -height 10} -decoration paneDecoration
  }
}
