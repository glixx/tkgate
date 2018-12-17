//: version "2.1"
//: property encoding = "utf-8"
//: property locale = "ja"
//: property prefix = "_GG"
//: property title = "Customizing TkGate"
//: property showSwitchNets = 0
//: property discardChanges = 1
//: property timingViolationMode = 2
//: property initTime = "0 ns"
//: require "tty"

`timescale 1ns/1ns

//: /netlistBegin PAGE1
module PAGE1;    //: root_module
//: enddecls

  //: comment g1 @(219,134) /sn:0 /anc:1
  //: /line:"<img src=iface.gif>"
  //: /end
  //: comment g9 @(10,10) /anc:1
  //: /line:"<font color=purple>Customizing TkGate</font>"
  //: /line:""
  //: /line:"This chapter introduces some of the options that can be customized in TkGate. Your option settings"
  //: /line:"are stored in a file named \".tkgate2-preferences\" in your home directory."
  //: /end
  //: comment g0 @(10,310) /sn:0 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE3
module PAGE3();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
//: enddecls

  //: comment g1 @(134,181) /sn:0 /anc:1
  //: /line:"<img src=example_bindings.gif>"
  //: /end
  //: comment g9 @(10,10) /anc:1
  //: /line:"<font color=purple>Customizing TkGate</font> <b>(setting your key beinding style)</b>"
  //: /line:""
  //: /line:"You can the basic key-binding style that you would like to use on the <font color=red2>Interface</font> tab of the options dialog"
  //: /line:"box. Currently you can choose between \"emacs\"-style and \"Windows\"-style. Chosing one of these"
  //: /line:"options will make key bindings for operations such as cut/paste similar to either emacs or Windows,"
  //: /line:"although key bindings for gate creation operations will remain the same."
  //: /end
  //: comment g0 @(10,310) /sn:0
  //: /line:"<tutorial-navigation>"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE2
module PAGE2();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
//: enddecls

  //: comment g1 @(116,149) /sn:0 /anc:1
  //: /line:"<img src=example_name.gif>"
  //: /end
  //: comment g9 @(10,10) /anc:1
  //: /line:"<font color=purple>Customizing TkGate</font> <b>(setting your personal identification)</b>"
  //: /line:""
  //: /line:"To set your TkGate options, open the options dilaog box by selecting <font color=red2>File &rarr; Options</font> from the"
  //: /line:"main menu. Enter your site name and user name in the \"Identity\" dialog box. The values you enter"
  //: /line:"here will be used on any printed output from TkGate."
  //: /end
  //: comment g0 @(10,310) /sn:0 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end

endmodule
//: /netlistEnd

