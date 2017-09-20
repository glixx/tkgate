#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/2aa56fed/adder.o \
	${OBJECTDIR}/_ext/2aa56fed/and.o \
	${OBJECTDIR}/_ext/2aa56fed/arshift.o \
	${OBJECTDIR}/_ext/2aa56fed/ascii.o \
	${OBJECTDIR}/_ext/2aa56fed/block.o \
	${OBJECTDIR}/_ext/2aa56fed/breakpoint.o \
	${OBJECTDIR}/_ext/2aa56fed/buffer.o \
	${OBJECTDIR}/_ext/2aa56fed/circuit.o \
	${OBJECTDIR}/_ext/2aa56fed/clock.o \
	${OBJECTDIR}/_ext/2aa56fed/comment.o \
	${OBJECTDIR}/_ext/2aa56fed/concat.o \
	${OBJECTDIR}/_ext/2aa56fed/cpath.o \
	${OBJECTDIR}/_ext/2aa56fed/cursors.o \
	${OBJECTDIR}/_ext/2aa56fed/decoder.o \
	${OBJECTDIR}/_ext/2aa56fed/delay.o \
	${OBJECTDIR}/_ext/2aa56fed/demux.o \
	${OBJECTDIR}/_ext/2aa56fed/dip.o \
	${OBJECTDIR}/_ext/2aa56fed/divide.o \
	${OBJECTDIR}/_ext/2aa56fed/edit.o \
	${OBJECTDIR}/_ext/2aa56fed/editstate.o \
	${OBJECTDIR}/_ext/2aa56fed/error.o \
	${OBJECTDIR}/_ext/2aa56fed/expr.o \
	${OBJECTDIR}/_ext/2aa56fed/flipflop.o \
	${OBJECTDIR}/_ext/2aa56fed/fonts.o \
	${OBJECTDIR}/_ext/2aa56fed/frame.o \
	${OBJECTDIR}/_ext/2aa56fed/functions.o \
	${OBJECTDIR}/_ext/2aa56fed/gate_painter.o \
	${OBJECTDIR}/_ext/2aa56fed/gates.o \
	${OBJECTDIR}/_ext/2aa56fed/generic.o \
	${OBJECTDIR}/_ext/2aa56fed/ground.o \
	${OBJECTDIR}/_ext/2aa56fed/hdl.o \
	${OBJECTDIR}/_ext/2aa56fed/html.o \
	${OBJECTDIR}/_ext/2aa56fed/hyperlink.o \
	${OBJECTDIR}/_ext/2aa56fed/icon.o \
	${OBJECTDIR}/_ext/2aa56fed/igenerate.o \
	${OBJECTDIR}/_ext/2aa56fed/in.o \
	${OBJECTDIR}/_ext/2aa56fed/jkff.o \
	${OBJECTDIR}/_ext/2aa56fed/join.o \
	${OBJECTDIR}/_ext/2aa56fed/joint.o \
	${OBJECTDIR}/_ext/2aa56fed/led.o \
	${OBJECTDIR}/_ext/2aa56fed/locale.o \
	${OBJECTDIR}/_ext/2aa56fed/lshift.o \
	${OBJECTDIR}/_ext/2aa56fed/luthor.o \
	${OBJECTDIR}/_ext/2aa56fed/main.o \
	${OBJECTDIR}/_ext/2aa56fed/metrics.o \
	${OBJECTDIR}/_ext/2aa56fed/modint.o \
	${OBJECTDIR}/_ext/2aa56fed/modsym.o \
	${OBJECTDIR}/_ext/2aa56fed/module.o \
	${OBJECTDIR}/_ext/2aa56fed/mult.o \
	${OBJECTDIR}/_ext/2aa56fed/mux.o \
	${OBJECTDIR}/_ext/2aa56fed/net.o \
	${OBJECTDIR}/_ext/2aa56fed/nmos.o \
	${OBJECTDIR}/_ext/2aa56fed/object.o \
	${OBJECTDIR}/_ext/2aa56fed/or.o \
	${OBJECTDIR}/_ext/2aa56fed/out.o \
	${OBJECTDIR}/_ext/2aa56fed/paux.o \
	${OBJECTDIR}/_ext/2aa56fed/pmos.o \
	${OBJECTDIR}/_ext/2aa56fed/primitives.o \
	${OBJECTDIR}/_ext/2aa56fed/print.o \
	${OBJECTDIR}/_ext/2aa56fed/pulldown.o \
	${OBJECTDIR}/_ext/2aa56fed/pullup.o \
	${OBJECTDIR}/_ext/2aa56fed/ram.o \
	${OBJECTDIR}/_ext/2aa56fed/register.o \
	${OBJECTDIR}/_ext/2aa56fed/release.o \
	${OBJECTDIR}/_ext/2aa56fed/roll.o \
	${OBJECTDIR}/_ext/2aa56fed/rom.o \
	${OBJECTDIR}/_ext/2aa56fed/rshift.o \
	${OBJECTDIR}/_ext/2aa56fed/scope.o \
	${OBJECTDIR}/_ext/2aa56fed/scopewin.o \
	${OBJECTDIR}/_ext/2aa56fed/script.o \
	${OBJECTDIR}/_ext/2aa56fed/search.o \
	${OBJECTDIR}/_ext/2aa56fed/selection.o \
	${OBJECTDIR}/_ext/2aa56fed/simulate.o \
	${OBJECTDIR}/_ext/2aa56fed/switch.o \
	${OBJECTDIR}/_ext/2aa56fed/symblock.o \
	${OBJECTDIR}/_ext/2aa56fed/tap.o \
	${OBJECTDIR}/_ext/2aa56fed/tclfuncs.o \
	${OBJECTDIR}/_ext/2aa56fed/text.o \
	${OBJECTDIR}/_ext/2aa56fed/tkgate.o \
	${OBJECTDIR}/_ext/2aa56fed/tkgatewin.o \
	${OBJECTDIR}/_ext/2aa56fed/traceprint.o \
	${OBJECTDIR}/_ext/2aa56fed/tri.o \
	${OBJECTDIR}/_ext/2aa56fed/tribuffer.o \
	${OBJECTDIR}/_ext/2aa56fed/vdd.o \
	${OBJECTDIR}/_ext/2aa56fed/verify.o \
	${OBJECTDIR}/_ext/2aa56fed/verilog_in.o \
	${OBJECTDIR}/_ext/2aa56fed/verilog_out.o \
	${OBJECTDIR}/_ext/2aa56fed/vgrammar.o \
	${OBJECTDIR}/_ext/2aa56fed/wiresadd.o \
	${OBJECTDIR}/_ext/2aa56fed/wiresdraw.o \
	${OBJECTDIR}/_ext/2aa56fed/wiresedit.o \
	${OBJECTDIR}/_ext/2aa56fed/wiresmove.o \
	${OBJECTDIR}/_ext/2aa56fed/wiresnap.o \
	${OBJECTDIR}/_ext/2aa56fed/wmstuff.o \
	${OBJECTDIR}/_ext/2aa56fed/xor.o \
	${OBJECTDIR}/_ext/2aa56fed/zoom.o


# C Compiler Flags
CFLAGS=`pkg-config --cflags pangoxft` 

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=../common/../build/Debug/libcommon.a -lX11 -ltcl8.6 -lm -ltk8.6

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ../../tkgate

../../tkgate: ../common/../build/Debug/libcommon.a

../../tkgate: ${OBJECTFILES}
	${MKDIR} -p ../..
	${LINK.c} -o ../../tkgate ${OBJECTFILES} ${LDLIBSOPTIONS} `pkg-config --libs pangoxft`

${OBJECTDIR}/_ext/2aa56fed/adder.o: ../../src/tkgate/adder.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/adder.o ../../src/tkgate/adder.c

${OBJECTDIR}/_ext/2aa56fed/and.o: ../../src/tkgate/and.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/and.o ../../src/tkgate/and.c

${OBJECTDIR}/_ext/2aa56fed/arshift.o: ../../src/tkgate/arshift.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/arshift.o ../../src/tkgate/arshift.c

${OBJECTDIR}/_ext/2aa56fed/ascii.o: ../../src/tkgate/ascii.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/ascii.o ../../src/tkgate/ascii.c

${OBJECTDIR}/_ext/2aa56fed/block.o: ../../src/tkgate/block.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/block.o ../../src/tkgate/block.c

${OBJECTDIR}/_ext/2aa56fed/breakpoint.o: ../../src/tkgate/breakpoint.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/breakpoint.o ../../src/tkgate/breakpoint.c

${OBJECTDIR}/_ext/2aa56fed/buffer.o: ../../src/tkgate/buffer.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/buffer.o ../../src/tkgate/buffer.c

${OBJECTDIR}/_ext/2aa56fed/circuit.o: ../../src/tkgate/circuit.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/circuit.o ../../src/tkgate/circuit.c

${OBJECTDIR}/_ext/2aa56fed/clock.o: ../../src/tkgate/clock.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/clock.o ../../src/tkgate/clock.c

${OBJECTDIR}/_ext/2aa56fed/comment.o: ../../src/tkgate/comment.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/comment.o ../../src/tkgate/comment.c

${OBJECTDIR}/_ext/2aa56fed/concat.o: ../../src/tkgate/concat.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/concat.o ../../src/tkgate/concat.c

${OBJECTDIR}/_ext/2aa56fed/cpath.o: ../../src/tkgate/cpath.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/cpath.o ../../src/tkgate/cpath.c

${OBJECTDIR}/_ext/2aa56fed/cursors.o: ../../src/tkgate/cursors.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/cursors.o ../../src/tkgate/cursors.c

${OBJECTDIR}/_ext/2aa56fed/decoder.o: ../../src/tkgate/decoder.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/decoder.o ../../src/tkgate/decoder.c

${OBJECTDIR}/_ext/2aa56fed/delay.o: ../../src/tkgate/delay.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/delay.o ../../src/tkgate/delay.c

${OBJECTDIR}/_ext/2aa56fed/demux.o: ../../src/tkgate/demux.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/demux.o ../../src/tkgate/demux.c

${OBJECTDIR}/_ext/2aa56fed/dip.o: ../../src/tkgate/dip.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/dip.o ../../src/tkgate/dip.c

${OBJECTDIR}/_ext/2aa56fed/divide.o: ../../src/tkgate/divide.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/divide.o ../../src/tkgate/divide.c

${OBJECTDIR}/_ext/2aa56fed/edit.o: ../../src/tkgate/edit.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/edit.o ../../src/tkgate/edit.c

${OBJECTDIR}/_ext/2aa56fed/editstate.o: ../../src/tkgate/editstate.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/editstate.o ../../src/tkgate/editstate.c

${OBJECTDIR}/_ext/2aa56fed/error.o: ../../src/tkgate/error.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/error.o ../../src/tkgate/error.c

${OBJECTDIR}/_ext/2aa56fed/expr.o: ../../src/tkgate/expr.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/expr.o ../../src/tkgate/expr.c

${OBJECTDIR}/_ext/2aa56fed/flipflop.o: ../../src/tkgate/flipflop.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/flipflop.o ../../src/tkgate/flipflop.c

${OBJECTDIR}/_ext/2aa56fed/fonts.o: ../../src/tkgate/fonts.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/fonts.o ../../src/tkgate/fonts.c

${OBJECTDIR}/_ext/2aa56fed/frame.o: ../../src/tkgate/frame.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/frame.o ../../src/tkgate/frame.c

${OBJECTDIR}/_ext/2aa56fed/functions.o: ../../src/tkgate/functions.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/functions.o ../../src/tkgate/functions.c

${OBJECTDIR}/_ext/2aa56fed/gate_painter.o: ../../src/tkgate/gate_painter.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/gate_painter.o ../../src/tkgate/gate_painter.c

${OBJECTDIR}/_ext/2aa56fed/gates.o: ../../src/tkgate/gates.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/gates.o ../../src/tkgate/gates.c

${OBJECTDIR}/_ext/2aa56fed/generic.o: ../../src/tkgate/generic.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/generic.o ../../src/tkgate/generic.c

${OBJECTDIR}/_ext/2aa56fed/ground.o: ../../src/tkgate/ground.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/ground.o ../../src/tkgate/ground.c

${OBJECTDIR}/_ext/2aa56fed/hdl.o: ../../src/tkgate/hdl.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/hdl.o ../../src/tkgate/hdl.c

${OBJECTDIR}/_ext/2aa56fed/html.o: ../../src/tkgate/html.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/html.o ../../src/tkgate/html.c

${OBJECTDIR}/_ext/2aa56fed/hyperlink.o: ../../src/tkgate/hyperlink.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/hyperlink.o ../../src/tkgate/hyperlink.c

${OBJECTDIR}/_ext/2aa56fed/icon.o: ../../src/tkgate/icon.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/icon.o ../../src/tkgate/icon.c

${OBJECTDIR}/_ext/2aa56fed/igenerate.o: ../../src/tkgate/igenerate.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/igenerate.o ../../src/tkgate/igenerate.c

${OBJECTDIR}/_ext/2aa56fed/in.o: ../../src/tkgate/in.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/in.o ../../src/tkgate/in.c

${OBJECTDIR}/_ext/2aa56fed/jkff.o: ../../src/tkgate/jkff.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/jkff.o ../../src/tkgate/jkff.c

${OBJECTDIR}/_ext/2aa56fed/join.o: ../../src/tkgate/join.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/join.o ../../src/tkgate/join.c

${OBJECTDIR}/_ext/2aa56fed/joint.o: ../../src/tkgate/joint.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/joint.o ../../src/tkgate/joint.c

${OBJECTDIR}/_ext/2aa56fed/led.o: ../../src/tkgate/led.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/led.o ../../src/tkgate/led.c

${OBJECTDIR}/_ext/2aa56fed/locale.o: ../../src/tkgate/locale.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/locale.o ../../src/tkgate/locale.c

${OBJECTDIR}/_ext/2aa56fed/lshift.o: ../../src/tkgate/lshift.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/lshift.o ../../src/tkgate/lshift.c

${OBJECTDIR}/_ext/2aa56fed/luthor.o: ../../src/tkgate/luthor.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/luthor.o ../../src/tkgate/luthor.c

${OBJECTDIR}/_ext/2aa56fed/main.o: ../../src/tkgate/main.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/main.o ../../src/tkgate/main.c

${OBJECTDIR}/_ext/2aa56fed/metrics.o: ../../src/tkgate/metrics.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/metrics.o ../../src/tkgate/metrics.c

${OBJECTDIR}/_ext/2aa56fed/modint.o: ../../src/tkgate/modint.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/modint.o ../../src/tkgate/modint.c

${OBJECTDIR}/_ext/2aa56fed/modsym.o: ../../src/tkgate/modsym.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/modsym.o ../../src/tkgate/modsym.c

${OBJECTDIR}/_ext/2aa56fed/module.o: ../../src/tkgate/module.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/module.o ../../src/tkgate/module.c

${OBJECTDIR}/_ext/2aa56fed/mult.o: ../../src/tkgate/mult.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/mult.o ../../src/tkgate/mult.c

${OBJECTDIR}/_ext/2aa56fed/mux.o: ../../src/tkgate/mux.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/mux.o ../../src/tkgate/mux.c

${OBJECTDIR}/_ext/2aa56fed/net.o: ../../src/tkgate/net.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/net.o ../../src/tkgate/net.c

${OBJECTDIR}/_ext/2aa56fed/nmos.o: ../../src/tkgate/nmos.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/nmos.o ../../src/tkgate/nmos.c

${OBJECTDIR}/_ext/2aa56fed/object.o: ../../src/tkgate/object.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/object.o ../../src/tkgate/object.c

${OBJECTDIR}/_ext/2aa56fed/or.o: ../../src/tkgate/or.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/or.o ../../src/tkgate/or.c

${OBJECTDIR}/_ext/2aa56fed/out.o: ../../src/tkgate/out.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/out.o ../../src/tkgate/out.c

${OBJECTDIR}/_ext/2aa56fed/paux.o: ../../src/tkgate/paux.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/paux.o ../../src/tkgate/paux.c

${OBJECTDIR}/_ext/2aa56fed/pmos.o: ../../src/tkgate/pmos.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/pmos.o ../../src/tkgate/pmos.c

${OBJECTDIR}/_ext/2aa56fed/primitives.o: ../../src/tkgate/primitives.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/primitives.o ../../src/tkgate/primitives.c

${OBJECTDIR}/_ext/2aa56fed/print.o: ../../src/tkgate/print.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/print.o ../../src/tkgate/print.c

${OBJECTDIR}/_ext/2aa56fed/pulldown.o: ../../src/tkgate/pulldown.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/pulldown.o ../../src/tkgate/pulldown.c

${OBJECTDIR}/_ext/2aa56fed/pullup.o: ../../src/tkgate/pullup.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/pullup.o ../../src/tkgate/pullup.c

${OBJECTDIR}/_ext/2aa56fed/ram.o: ../../src/tkgate/ram.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/ram.o ../../src/tkgate/ram.c

${OBJECTDIR}/_ext/2aa56fed/register.o: ../../src/tkgate/register.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/register.o ../../src/tkgate/register.c

${OBJECTDIR}/_ext/2aa56fed/release.o: ../../src/tkgate/release.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/release.o ../../src/tkgate/release.c

${OBJECTDIR}/_ext/2aa56fed/roll.o: ../../src/tkgate/roll.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/roll.o ../../src/tkgate/roll.c

${OBJECTDIR}/_ext/2aa56fed/rom.o: ../../src/tkgate/rom.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/rom.o ../../src/tkgate/rom.c

${OBJECTDIR}/_ext/2aa56fed/rshift.o: ../../src/tkgate/rshift.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/rshift.o ../../src/tkgate/rshift.c

${OBJECTDIR}/_ext/2aa56fed/scope.o: ../../src/tkgate/scope.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/scope.o ../../src/tkgate/scope.c

${OBJECTDIR}/_ext/2aa56fed/scopewin.o: ../../src/tkgate/scopewin.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/scopewin.o ../../src/tkgate/scopewin.c

${OBJECTDIR}/_ext/2aa56fed/script.o: ../../src/tkgate/script.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/script.o ../../src/tkgate/script.c

${OBJECTDIR}/_ext/2aa56fed/search.o: ../../src/tkgate/search.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/search.o ../../src/tkgate/search.c

${OBJECTDIR}/_ext/2aa56fed/selection.o: ../../src/tkgate/selection.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/selection.o ../../src/tkgate/selection.c

${OBJECTDIR}/_ext/2aa56fed/simulate.o: ../../src/tkgate/simulate.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/simulate.o ../../src/tkgate/simulate.c

${OBJECTDIR}/_ext/2aa56fed/switch.o: ../../src/tkgate/switch.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/switch.o ../../src/tkgate/switch.c

${OBJECTDIR}/_ext/2aa56fed/symblock.o: ../../src/tkgate/symblock.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/symblock.o ../../src/tkgate/symblock.c

${OBJECTDIR}/_ext/2aa56fed/tap.o: ../../src/tkgate/tap.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/tap.o ../../src/tkgate/tap.c

${OBJECTDIR}/_ext/2aa56fed/tclfuncs.o: ../../src/tkgate/tclfuncs.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/tclfuncs.o ../../src/tkgate/tclfuncs.c

${OBJECTDIR}/_ext/2aa56fed/text.o: ../../src/tkgate/text.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/text.o ../../src/tkgate/text.c

${OBJECTDIR}/_ext/2aa56fed/tkgate.o: ../../src/tkgate/tkgate.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/tkgate.o ../../src/tkgate/tkgate.c

${OBJECTDIR}/_ext/2aa56fed/tkgatewin.o: ../../src/tkgate/tkgatewin.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/tkgatewin.o ../../src/tkgate/tkgatewin.c

${OBJECTDIR}/_ext/2aa56fed/traceprint.o: ../../src/tkgate/traceprint.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/traceprint.o ../../src/tkgate/traceprint.c

${OBJECTDIR}/_ext/2aa56fed/tri.o: ../../src/tkgate/tri.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/tri.o ../../src/tkgate/tri.c

${OBJECTDIR}/_ext/2aa56fed/tribuffer.o: ../../src/tkgate/tribuffer.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/tribuffer.o ../../src/tkgate/tribuffer.c

${OBJECTDIR}/_ext/2aa56fed/vdd.o: ../../src/tkgate/vdd.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/vdd.o ../../src/tkgate/vdd.c

${OBJECTDIR}/_ext/2aa56fed/verify.o: ../../src/tkgate/verify.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/verify.o ../../src/tkgate/verify.c

${OBJECTDIR}/_ext/2aa56fed/verilog_in.o: ../../src/tkgate/verilog_in.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/verilog_in.o ../../src/tkgate/verilog_in.c

${OBJECTDIR}/_ext/2aa56fed/verilog_out.o: ../../src/tkgate/verilog_out.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/verilog_out.o ../../src/tkgate/verilog_out.c

${OBJECTDIR}/_ext/2aa56fed/vgrammar.o: ../../src/tkgate/vgrammar.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/vgrammar.o ../../src/tkgate/vgrammar.c

${OBJECTDIR}/_ext/2aa56fed/wiresadd.o: ../../src/tkgate/wiresadd.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/wiresadd.o ../../src/tkgate/wiresadd.c

${OBJECTDIR}/_ext/2aa56fed/wiresdraw.o: ../../src/tkgate/wiresdraw.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/wiresdraw.o ../../src/tkgate/wiresdraw.c

${OBJECTDIR}/_ext/2aa56fed/wiresedit.o: ../../src/tkgate/wiresedit.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/wiresedit.o ../../src/tkgate/wiresedit.c

${OBJECTDIR}/_ext/2aa56fed/wiresmove.o: ../../src/tkgate/wiresmove.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/wiresmove.o ../../src/tkgate/wiresmove.c

${OBJECTDIR}/_ext/2aa56fed/wiresnap.o: ../../src/tkgate/wiresnap.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/wiresnap.o ../../src/tkgate/wiresnap.c

${OBJECTDIR}/_ext/2aa56fed/wmstuff.o: ../../src/tkgate/wmstuff.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/wmstuff.o ../../src/tkgate/wmstuff.c

${OBJECTDIR}/_ext/2aa56fed/xor.o: ../../src/tkgate/xor.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/xor.o ../../src/tkgate/xor.c

${OBJECTDIR}/_ext/2aa56fed/zoom.o: ../../src/tkgate/zoom.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/2aa56fed
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2aa56fed/zoom.o ../../src/tkgate/zoom.c

# Subprojects
.build-subprojects:
	cd ../common && ${MAKE}  -f Makefile CONF=Debug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ../../tkgate

# Subprojects
.clean-subprojects:
	cd ../common && ${MAKE}  -f Makefile CONF=Debug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
