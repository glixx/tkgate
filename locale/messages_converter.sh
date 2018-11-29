#/bin/sh

file="uk/messages"

sed -i "s|^b.open|#b.open|g" $file
sed -i "s|^b.bitw|#b.bitw|g" $file
sed -i "s|^b.deleteb|#b.deleteb|g" $file
sed -i "s|^file		|menu.file	0:|g" $file
sed -i "s|^edit		|menu.edit	0:|g" $file
sed -i "s|^tool		|menu.tool	0:|g" $file
sed -i "s|^simulate	|menu.simulate	0:|g" $file
sed -i "s|^module		|menu.module	0:|g" $file
sed -i "s|^make		|menu.make	0:|g" $file
sed -i "s|^new		|menu.file.new		0:|g" $file
sed -i "s|^open		|menu.file.open		0:|g" $file
sed -i "s|^openlib		|menu.file.openlib	0:|g" $file
sed -i "s|^save		|menu.file.save		0:|g" $file
sed -i "s|^saveas		|menu.file.saveas	5:|g" $file
sed -i "s|^print		|menu.file.print		0:|g" $file
sed -i "s|^quit		|menu.file.quit		0:|g" $file
sed -i "s|^gate		|#gate		|g" $file
sed -i "s|^options		|#options		|g" $file
sed -i "s|^circ		|#circ		|g" $file
sed -i "s|^undo		|menu.edit.undo		0:|g" $file
sed -i "s|^redo		|menu.edit.redo		0:|g" $file
sed -i "s|^cut		|menu.edit.cut		0:|g" $file
sed -i "s|^copy		|menu.edit.copy		3:|g" $file
sed -i "s|^paste		|menu.edit.paste		0:|g" $file
sed -i "s|^selall		|menu.edit.selall	0:|g" $file
sed -i "s|^find		|menu.edit.find		0:|g" $file
sed -i "s|^zoomin		|menu.edit.zoomin	5:|g" $file
sed -i "s|^zoomout		|menu.edit.zoomout	5:|g" $file
sed -i "s|^move		|menu.tool.move		0:|g" $file
sed -i "s|^delg		|menu.tool.delg		0:|g" $file
sed -i "s|^cutw		|menu.tool.cutw		0:|g" $file
sed -i "s|^inv		|menu.tool.inv		0:|g" $file
sed -i "s|^bitw		|menu.tool.bitw		0:|g" $file
sed -i "s|^debug		|menu.tool.debug		0:|g" $file
sed -i "s|^rot0		|#rot0		|g" $file
sed -i "s|^rot90		|#rot90		|g" $file
sed -i "s|^rot180		|#rot180		|g" $file
sed -i "s|^rot270		|#rot270		|g" $file
sed -i "s|^simbegin	|menu.simulate.begin	0:|g" $file
sed -i "s|^simend		|menu.simulate.end	0:|g" $file
sed -i "s|^algnv		|menu.format.algnv	6:|g" $file
sed -i "s|^algnh		|menu.format.algnh	6:|g" $file
sed -i "s|^simadprobe	|menu.simulate.addprobe	0:|g" $file
sed -i "s|^simrun		|menu.simulate.run	0:|g" $file
sed -i "s|^simpause	|menu.simulate.pause	0:|g" $file
sed -i "s|^simstep		|menu.simulate.step	0:|g" $file
sed -i "s|^simcycle	|menu.simulate.cycle	5:|g" $file
sed -i "s|^simbreak	|menu.simulate.break	0:|g" $file
sed -i "s|^simscript	|menu.simulate.script	1:|g" $file
sed -i "s|^simload		|menu.simulate.load	1:|g" $file
sed -i "s|^simdump		|menu.simulate.dump	1:|g" $file
sed -i "s|^modopen		|menu.module.open	0:|g" $file
sed -i "s|^modclose	|menu.module.close	0:|g" $file
sed -i "s|^modseti		|#modseti		|g" $file
sed -i "s|^modediti	|#modediti	|g" $file
sed -i "s|^modnew		|menu.module.new		0:|g" $file
sed -i "s|^moddel		|menu.module.del		0:|g" $file
sed -i "s|^modcopy		|menu.module.copy	1:|g" $file
sed -i "s|^modrename	|menu.module.rename	0:|g" $file
sed -i "s|^modclaim	|menu.module.claim	1:|g" $file
sed -i "s|^circprop	|#circprop	|g" $file
sed -i "s|^cpath		|#cpath		|g" $file
sed -i "s|^gataddin	|#gataddin	|g" $file
sed -i "s|^gataddout	|#gataddout	|g" $file
sed -i "s|^gataddinout	|#gataddinout	|g" $file
sed -i "s|^gatiochg	|#gatiochg	|g" $file
sed -i "s|^gatanchor	|#gatanchor	|g" $file
sed -i "s|^gatunanchor	|#gatunanchor	|g" $file
sed -i "s|^gatprop		|#gatprop		|g" $file
sed -i "s|^gatrep		|#gatrep		|g" $file
sed -i "s|^gatdel		|#gatdel		|g" $file
sed -i "s|^gatsettech	|#gatsettech	|g" $file
sed -i "s|^gmswitch	|gm.io		|g" $file
sed -i "s|^gmgate		|gm.gate		|g" $file
sed -i "s|^gmredgate	|gm.rgate	|g" $file
sed -i "s|^gmmsi		|gm.msi		|g" $file
sed -i "s|^gmalu		|gm.alu		|g" $file
sed -i "s|^gmmem		|gm.mem		|g" $file
sed -i "s|^gmmod		|gm.mod		|g" $file
sed -i "s|^gmcomment	|gm.comment	|g" $file
sed -i "s|^gmframe		|gm.frame	|g" $file
sed -i "s|^gmxswitch	|gm.io.switch	|g" $file
sed -i "s|^gmdip		|gm.io.dip	|g" $file
sed -i "s|^gmground	|#gmground	|g" $file
sed -i "s|^gmvdd		|#gmvdd		|g" $file
sed -i "s|^gmmerge		|gm.io.merge	|g" $file
sed -i "s|^gmclock		|gm.io.clock	|g" $file
sed -i "s|^gm.led		|gm.io.led	|g" $file
sed -i "s|^gm.ledbar	|gm.io.ledbar	|g" $file
sed -i "s|^gm.ledhex	|gm.io.ledhex	|g" $file
sed -i "s|^gm.leddec	|gm.io.leddec	|g" $file
sed -i "s|^gm.ledseg	|gm.io.ledseg	|g" $file
sed -i "s|^gmtty		|gm.io.tty	|g" $file
sed -i "s|^gmand		|gm.gate.and	|g" $file
sed -i "s|^gmnand		|gm.gate.nand	|g" $file
sed -i "s|^gmor		|gm.gate.or	|g" $file
sed -i "s|^gmnor		|gm.gate.nor	|g" $file
sed -i "s|^gmxor		|gm.gate.xor	|g" $file
sed -i "s|^gmxnor		|gm.gate.xnor	|g" $file
sed -i "s|^gmbuf		|gm.gate.buf	|g" $file
sed -i "s|^gminv		|gm.gate.inv	|g" $file
sed -i "s|^gmtribuf	|gm.gate.tribuf	|g" $file
sed -i "s|^gmnmos		|gm.gate.nmos	|g" $file
sed -i "s|^gmpmos		|gm.gate.pmos	|g" $file
sed -i "s|^gmrand		|gm.rgate.and	|g" $file
sed -i "s|^gmrnand		|gm.rgate.nand	|g" $file
sed -i "s|^gmror		|gm.rgate.or	|g" $file
sed -i "s|^gmrnor		|gm.rgate.nor	|g" $file
sed -i "s|^gmrxor		|gm.rgate.xor	|g" $file
sed -i "s|^gmrxnor		|gm.rgate.xnor	|g" $file
sed -i "s|^gmadd		|gm.alu.add	|g" $file
sed -i "s|^gmmult		|gm.alu.mult	|g" $file
sed -i "s|^gmdiv		|gm.alu.div	|g" $file
sed -i "s|^gmlshift	|gm.alu.lshift	|g" $file
sed -i "s|^gmrshift	|gm.alu.rshift	|g" $file
sed -i "s|^gmarshift	|gm.alu.arshift	|g" $file
sed -i "s|^gmroll		|gm.alu.roll	|g" $file
sed -i "s|^gmreg		|gm.mem.reg	|g" $file
sed -i "s|^gmff		|gm.mem.ff	|g" $file
sed -i "s|^gmram		|gm.mem.ram	|g" $file
sed -i "s|^gmrom		|gm.mem.rom	|g" $file
sed -i "s|^gm21mux		|gm.msi.21mux	|g" $file
sed -i "s|^gm41mux		|gm.msi.41mux	|g" $file
sed -i "s|^gm81mux		|gm.msi.81mux	|g" $file
sed -i "s|^gm12dec		|gm.msi.12dec	|g" $file
sed -i "s|^gm14dec		|gm.msi.14dec	|g" $file
sed -i "s|^gm18dec		|gm.msi.18dec	|g" $file
sed -i "s|^gmmodinst	|gm.mod.inst	|g" $file
sed -i "s|^gmmodin		|gm.mod.in	|g" $file
sed -i "s|^gmmodout	|gm.mod.out	|g" $file
sed -i "s|^gmmodinout	|gm.mod.inout	|g" $file
sed -i "s|^addwireseg|#addwireseg|g" $file
sed -i "s|^hlpabout	|menu.help.about		0:|g" $file
sed -i "s|^hlplicense	|menu.help.license	0:|g" $file
sed -i "s|^hlpdoc		|menu.help.doc		0:|g" $file
sed -i "s|^hlptut		|menu.help.tut		1:|g" $file
sed -i "s|^hlpexample	|menu.help.example	1:|g" $file
sed -i "s|^help|#help|g" $file
sed -i "s|^exampcomb	|#exampcomb	|g" $file
sed -i "s|^examp3bit	|#examp3bit	|g" $file
sed -i "s|^examp8bit	|#examp8bit	|g" $file
sed -i "s|^examptrff	|#examptrff	|g" $file
sed -i "s|^exampcpu	|#exampcpu	|g" $file
sed -i "s|^tutwelcome	|#tutwelcome	|g" $file
sed -i "s|^tutcreate	|#tutcreate	|g" $file
sed -i "s|^tutedit1	|#tutedit1	|g" $file
sed -i "s|^tutedit2	|#tutedit2	|g" $file
sed -i "s|^tutmods		|#tutmods		|g" $file
sed -i "s|^tutsim		|#tutsim		|g" $file
sed -i "s|^menu.sc.prtrace	|menu.scope_file.ptrace		0:|g" $file
sed -i "s|^menu.sc.close	|menu.scope_file.close		0:|g" $file
sed -i "s|^menu.sc.trace	|#menu.sc.trace	|g" $file
sed -i "s|^menu.sc.zoomin |menu.scope_trace.zoomin		5:|g" $file
sed -i "s|^menu.sc.zoomout |menu.scope_trace.zoomout	5:|g" $file
sed -i "s|^db.gate.islink		|#db.gate.islink		|g" $file
sed -i "s|^db.gate.link		|#db.gate.link		|g" $file
sed -i "s|^db.gate.findw		|#db.gate.findw		|g" $file
sed -i "s|^db.gate.findg		|#db.gate.findg		|g" $file
sed -i "s|^db.gate.findwg		|#db.gate.findwg		|g" $file
sed -i "s|^db.gate.extbar		|#db.gate.extbar		|g" $file
sed -i "s|^db.led.type		|db.gate.led.type	|g" $file
sed -i "s|^db.led.bit		|db.gate.led.bit.hdr	|g" $file
sed -i "s|^db.led.bar		|db.gate.led.bar.hdr	|g" $file
sed -i "s|^db.led.hex		|db.gate.led.hex.hdr	|g" $file
sed -i "s|^db.led.dec		|db.gate.led.dec.hdr	|g" $file
sed -i "s|^db.led.seg		|db.gate.led.seg.hdr	|g" $file
sed -i "s|^print.outto		|#print.outto		|g" $file
sed -i "s|^print.doctit		|#print.doctit		|g" $file
sed -i "s|^print.prmod		|#print.prmod		|g" $file
sed -i "s|^print.end		|#print.end		|g" $file
sed -i "s|^opt.outmove|#opt.outmove|g" $file
sed -i "s|^opt.ckpoint|#opt.ckpoint|g" $file
sed -i "s|^opt.mode		|#opt.mode		|g" $file
sed -i "s|^opt.normal		|#opt.normal		|g" $file
sed -i "s|^opt.logfile		|#opt.logfile		|g" $file
sed -i "s|^opt.rememberprobes	|#opt.rememberprobes	|g" $file
sed -i "s|^opt.initscript		|#opt.initscript		|g" $file
sed -i "s|^opt.circdefaults	|#opt.circdefaults	|g" $file
sed -i "s|^blklst.newmod		|blklst.new.cap		|g" $file
sed -i "s|^blklst.delmod		|blklst.del.cap		|g" $file
sed -i "s|^blklst.frommod		|blklst.from		|g" $file
sed -i "s|^blklst.tomod		|blklst.to		|g" $file
sed -i "s|^blklst.oldname		|#blklst.oldname		|g" $file
sed -i "s|^blklst.newname		|#blklst.newname		|g" $file
sed -i "s|^blklst.claim		|blklst.claim.cap	|g" $file
sed -i "s|^circ.topmod		|#circ.topmod		|g" $file
sed -i "s|^circ.noscript		|#circ.noscript		|g" $file
sed -i "s|^circ.really1		|#circ.really1		|g" $file
sed -i "s|^circ.really2		|#circ.really2		|g" $file
sed -i "s|^sim.breakpt		|#sim.breakpt		|g" $file
sed -i "s|^cmd.file		|#cmd.file		|g" $file
sed -i "s|^cmd.topname		|#cmd.topname		|g" $file
sed -i "s|^err.verilog		|#err.verilog		|g" $file
sed -i "s|^err.libmode		|#err.libmode		|g" $file
sed -i "s|^err.pounimpl		|#err.pounimpl		|g" $file
sed -i "s|^err.sim.clockbadedge	|#err.sim.clockbadedge	|g" $file
sed -i "s|^err.badmake		|#err.badmake		|g" $file
sed -i "s|^err.badportdel		|#err.badportdel		|g" $file
sed -i "s|^err.badportedit		|#err.badportedit		|g" $file
sed -i "s|^err.noport		|#err.noport		|g" $file
sed -i "s|^err.sim.isnotrun	|#err.sim.isnotrun	|g" $file
sed -i "s|^ho.modopen	|#ho.modopen	|g" $file
sed -i "s|^ho.modclose	|#ho.modclose	|g" $file
sed -i "s|^ho.simstart	|#ho.simstart	|g" $file
sed -i "s|^ho.sim.break	|#ho.sim.break	|g" $file
sed -i "s|^ho.f.modlist	|ho.modlist	|g" $file
sed -i "s|^ho.edgat.extbar		|#ho.edgat.extbar		|g" $file
sed -i "s|^ho.edgat.cname		|#ho.edgat.cname		|g" $file
sed -i "s|^ho.edgat.cport		|#ho.edgat.cport		|g" $file
sed -i "s|^ho.edgat.ctype		|#ho.edgat.ctype		|g" $file
sed -i "s|^ho.edgat.cbitw		|#ho.edgat.cbitw		|g" $file
sed -i "s|^ho.edgat.cedit		|#ho.edgat.cedit		|g" $file
sed -i "s|^ho.edgat.cadd		|#ho.edgat.cadd		|g" $file
sed -i "s|^ho.edgat.cdel		|#ho.edgat.cdel		|g" $file
sed -i "s|^ho.opt.rememberprobes	|#ho.opt.rememberprobes	|g" $file
sed -i "s|^ho.opt.normal		|#ho.opt.normal		|g" $file
sed -i "s|^ho.simlog		|#ho.simlog		|g" $file
sed -i "s|^ho.cpathanal		|#ho.cpathanal		|g" $file
sed -i "s|^gmroll	    |#gmroll	    |g" $file
sed -i "s|^menu.sc.zoomin	|menu.scope_trace.zoomin		5:|g" $file
sed -i "s|^menu.sc.zoomout	|menu.scope_trace.zoomout	5:|g" $file
sed -i "s|^opt.initscript	|#opt.initscript	|g" $file
sed -i "s|^msg.badsave		|#msg.badsave		|g" $file
sed -i "s|^ho.opt.normal	|#ho.opt.normal	|g" $file
sed -i "s|^@|#|g" $file
sed -i "s|^db.err.explain		|#db.err.explain		|g" $file
sed -i "s|^menu.circ		|#menu.circ		|g" $file
sed -i "s|^menu.interface.set	|#menu.interface.set	|g" $file
sed -i "s|^menu.interface.edit	|#menu.interface.edit	|g" $file
sed -i "s|^menu.circ.path		|#menu.circ.path		|g" $file
sed -i "s|^menu.gate.addin		|#menu.gate.addin		|g" $file
sed -i "s|^menu.gate.addout	|#menu.gate.addout	|g" $file
sed -i "s|^menu.gate.addinout	|#menu.gate.addinout	|g" $file
sed -i "s|^menu.gate.iochg		|#menu.gate.iochg		|g" $file
sed -i "s|^menu.scope.prtrace	|#menu.scope_file.ptrace		0:|g" $file
sed -i "s|^menu.scope.close	|menu.scope_file.close		0:|g" $file
sed -i "s|^menu.scope.trace	|menu.scope_trace		0:|g" $file
sed -i "s|^menu.scope.zoomin	|menu.scope_trace.zoomin		5:|g" $file
sed -i "s|^menu.scope.zoomout	|menu.scope_trace.zoomout	5:|g" $file
sed -i "s|^gm.switch	|#gm.switch	|g" $file
sed -i "s|^ho.edgate.frame		|#ho.edgate.frame		|g" $file
sed -i "s|^msg.backupfail		|#msg.backupfail		|g" $file
#sed -i "s|||g" $file
