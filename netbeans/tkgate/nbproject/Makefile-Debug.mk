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
CND_PLATFORM=GNU-Linux-x86
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
	${OBJECTDIR}/_ext/715485165/adder.o \
	${OBJECTDIR}/_ext/715485165/and.o \
	${OBJECTDIR}/_ext/715485165/arshift.o \
	${OBJECTDIR}/_ext/715485165/ascii.o \
	${OBJECTDIR}/_ext/715485165/block.o \
	${OBJECTDIR}/_ext/715485165/breakpoint.o \
	${OBJECTDIR}/_ext/715485165/buffer.o \
	${OBJECTDIR}/_ext/715485165/circuit.o \
	${OBJECTDIR}/_ext/715485165/clock.o \
	${OBJECTDIR}/_ext/715485165/comment.o \
	${OBJECTDIR}/_ext/715485165/concat.o \
	${OBJECTDIR}/_ext/715485165/cpath.o \
	${OBJECTDIR}/_ext/715485165/cursors.o \
	${OBJECTDIR}/_ext/715485165/decoder.o \
	${OBJECTDIR}/_ext/715485165/delay.o \
	${OBJECTDIR}/_ext/715485165/demux.o \
	${OBJECTDIR}/_ext/715485165/dip.o \
	${OBJECTDIR}/_ext/715485165/divide.o \
	${OBJECTDIR}/_ext/715485165/edit.o \
	${OBJECTDIR}/_ext/715485165/editstate.o \
	${OBJECTDIR}/_ext/715485165/error.o \
	${OBJECTDIR}/_ext/715485165/expr.o \
	${OBJECTDIR}/_ext/715485165/flipflop.o \
	${OBJECTDIR}/_ext/715485165/fonts.o \
	${OBJECTDIR}/_ext/715485165/frame.o \
	${OBJECTDIR}/_ext/715485165/functions.o \
	${OBJECTDIR}/_ext/715485165/gates.o \
	${OBJECTDIR}/_ext/715485165/generic.o \
	${OBJECTDIR}/_ext/715485165/ground.o \
	${OBJECTDIR}/_ext/715485165/hdl.o \
	${OBJECTDIR}/_ext/715485165/html.o \
	${OBJECTDIR}/_ext/715485165/hyperlink.o \
	${OBJECTDIR}/_ext/715485165/icon.o \
	${OBJECTDIR}/_ext/715485165/igenerate.o \
	${OBJECTDIR}/_ext/715485165/in.o \
	${OBJECTDIR}/_ext/715485165/jkff.o \
	${OBJECTDIR}/_ext/715485165/join.o \
	${OBJECTDIR}/_ext/715485165/joint.o \
	${OBJECTDIR}/_ext/715485165/led.o \
	${OBJECTDIR}/_ext/715485165/locale.o \
	${OBJECTDIR}/_ext/715485165/lshift.o \
	${OBJECTDIR}/_ext/715485165/luthor.o \
	${OBJECTDIR}/_ext/715485165/main.o \
	${OBJECTDIR}/_ext/715485165/metrics.o \
	${OBJECTDIR}/_ext/715485165/modint.o \
	${OBJECTDIR}/_ext/715485165/modsym.o \
	${OBJECTDIR}/_ext/715485165/module.o \
	${OBJECTDIR}/_ext/715485165/mult.o \
	${OBJECTDIR}/_ext/715485165/mux.o \
	${OBJECTDIR}/_ext/715485165/net.o \
	${OBJECTDIR}/_ext/715485165/nmos.o \
	${OBJECTDIR}/_ext/715485165/object.o \
	${OBJECTDIR}/_ext/715485165/or.o \
	${OBJECTDIR}/_ext/715485165/out.o \
	${OBJECTDIR}/_ext/715485165/paux.o \
	${OBJECTDIR}/_ext/715485165/pmos.o \
	${OBJECTDIR}/_ext/715485165/primitives.o \
	${OBJECTDIR}/_ext/715485165/print.o \
	${OBJECTDIR}/_ext/715485165/ram.o \
	${OBJECTDIR}/_ext/715485165/register.o \
	${OBJECTDIR}/_ext/715485165/release.o \
	${OBJECTDIR}/_ext/715485165/roll.o \
	${OBJECTDIR}/_ext/715485165/rom.o \
	${OBJECTDIR}/_ext/715485165/rshift.o \
	${OBJECTDIR}/_ext/715485165/scope.o \
	${OBJECTDIR}/_ext/715485165/scopewin.o \
	${OBJECTDIR}/_ext/715485165/script.o \
	${OBJECTDIR}/_ext/715485165/search.o \
	${OBJECTDIR}/_ext/715485165/selection.o \
	${OBJECTDIR}/_ext/715485165/simulate.o \
	${OBJECTDIR}/_ext/715485165/switch.o \
	${OBJECTDIR}/_ext/715485165/symblock.o \
	${OBJECTDIR}/_ext/715485165/tap.o \
	${OBJECTDIR}/_ext/715485165/tclfuncs.o \
	${OBJECTDIR}/_ext/715485165/text.o \
	${OBJECTDIR}/_ext/715485165/tkgate.o \
	${OBJECTDIR}/_ext/715485165/tkgatewin.o \
	${OBJECTDIR}/_ext/715485165/traceprint.o \
	${OBJECTDIR}/_ext/715485165/tri.o \
	${OBJECTDIR}/_ext/715485165/tribuffer.o \
	${OBJECTDIR}/_ext/715485165/vdd.o \
	${OBJECTDIR}/_ext/715485165/verify.o \
	${OBJECTDIR}/_ext/715485165/verilog_in.o \
	${OBJECTDIR}/_ext/715485165/verilog_out.o \
	${OBJECTDIR}/_ext/715485165/vgrammar.o \
	${OBJECTDIR}/_ext/715485165/wiresadd.o \
	${OBJECTDIR}/_ext/715485165/wiresdraw.o \
	${OBJECTDIR}/_ext/715485165/wiresedit.o \
	${OBJECTDIR}/_ext/715485165/wiresmove.o \
	${OBJECTDIR}/_ext/715485165/wiresnap.o \
	${OBJECTDIR}/_ext/715485165/wmstuff.o \
	${OBJECTDIR}/_ext/715485165/xor.o \
	${OBJECTDIR}/_ext/715485165/zoom.o


# C Compiler Flags
CFLAGS=

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
	${LINK.c} -o ../../tkgate ${OBJECTFILES} ${LDLIBSOPTIONS} `pkg-config --libs X`

${OBJECTDIR}/_ext/715485165/adder.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/adder.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/adder.o ../../src/tkgate/adder.c

${OBJECTDIR}/_ext/715485165/and.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/and.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/and.o ../../src/tkgate/and.c

${OBJECTDIR}/_ext/715485165/arshift.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/arshift.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/arshift.o ../../src/tkgate/arshift.c

${OBJECTDIR}/_ext/715485165/ascii.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/ascii.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/ascii.o ../../src/tkgate/ascii.c

${OBJECTDIR}/_ext/715485165/block.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/block.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/block.o ../../src/tkgate/block.c

${OBJECTDIR}/_ext/715485165/breakpoint.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/breakpoint.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/breakpoint.o ../../src/tkgate/breakpoint.c

${OBJECTDIR}/_ext/715485165/buffer.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/buffer.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/buffer.o ../../src/tkgate/buffer.c

${OBJECTDIR}/_ext/715485165/circuit.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/circuit.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/circuit.o ../../src/tkgate/circuit.c

${OBJECTDIR}/_ext/715485165/clock.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/clock.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/clock.o ../../src/tkgate/clock.c

${OBJECTDIR}/_ext/715485165/comment.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/comment.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/comment.o ../../src/tkgate/comment.c

${OBJECTDIR}/_ext/715485165/concat.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/concat.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/concat.o ../../src/tkgate/concat.c

${OBJECTDIR}/_ext/715485165/cpath.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/cpath.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/cpath.o ../../src/tkgate/cpath.c

${OBJECTDIR}/_ext/715485165/cursors.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/cursors.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/cursors.o ../../src/tkgate/cursors.c

${OBJECTDIR}/_ext/715485165/decoder.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/decoder.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/decoder.o ../../src/tkgate/decoder.c

${OBJECTDIR}/_ext/715485165/delay.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/delay.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/delay.o ../../src/tkgate/delay.c

${OBJECTDIR}/_ext/715485165/demux.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/demux.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/demux.o ../../src/tkgate/demux.c

${OBJECTDIR}/_ext/715485165/dip.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/dip.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/dip.o ../../src/tkgate/dip.c

${OBJECTDIR}/_ext/715485165/divide.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/divide.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/divide.o ../../src/tkgate/divide.c

${OBJECTDIR}/_ext/715485165/edit.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/edit.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/edit.o ../../src/tkgate/edit.c

${OBJECTDIR}/_ext/715485165/editstate.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/editstate.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/editstate.o ../../src/tkgate/editstate.c

${OBJECTDIR}/_ext/715485165/error.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/error.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/error.o ../../src/tkgate/error.c

${OBJECTDIR}/_ext/715485165/expr.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/expr.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/expr.o ../../src/tkgate/expr.c

${OBJECTDIR}/_ext/715485165/flipflop.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/flipflop.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/flipflop.o ../../src/tkgate/flipflop.c

${OBJECTDIR}/_ext/715485165/fonts.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/fonts.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/fonts.o ../../src/tkgate/fonts.c

${OBJECTDIR}/_ext/715485165/frame.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/frame.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/frame.o ../../src/tkgate/frame.c

${OBJECTDIR}/_ext/715485165/functions.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/functions.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/functions.o ../../src/tkgate/functions.c

${OBJECTDIR}/_ext/715485165/gates.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/gates.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/gates.o ../../src/tkgate/gates.c

${OBJECTDIR}/_ext/715485165/generic.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/generic.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/generic.o ../../src/tkgate/generic.c

${OBJECTDIR}/_ext/715485165/ground.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/ground.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/ground.o ../../src/tkgate/ground.c

${OBJECTDIR}/_ext/715485165/hdl.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/hdl.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/hdl.o ../../src/tkgate/hdl.c

${OBJECTDIR}/_ext/715485165/html.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/html.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/html.o ../../src/tkgate/html.c

${OBJECTDIR}/_ext/715485165/hyperlink.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/hyperlink.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/hyperlink.o ../../src/tkgate/hyperlink.c

${OBJECTDIR}/_ext/715485165/icon.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/icon.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/icon.o ../../src/tkgate/icon.c

${OBJECTDIR}/_ext/715485165/igenerate.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/igenerate.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/igenerate.o ../../src/tkgate/igenerate.c

${OBJECTDIR}/_ext/715485165/in.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/in.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/in.o ../../src/tkgate/in.c

${OBJECTDIR}/_ext/715485165/jkff.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/jkff.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/jkff.o ../../src/tkgate/jkff.c

${OBJECTDIR}/_ext/715485165/join.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/join.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/join.o ../../src/tkgate/join.c

${OBJECTDIR}/_ext/715485165/joint.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/joint.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/joint.o ../../src/tkgate/joint.c

${OBJECTDIR}/_ext/715485165/led.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/led.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/led.o ../../src/tkgate/led.c

${OBJECTDIR}/_ext/715485165/locale.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/locale.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/locale.o ../../src/tkgate/locale.c

${OBJECTDIR}/_ext/715485165/lshift.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/lshift.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/lshift.o ../../src/tkgate/lshift.c

${OBJECTDIR}/_ext/715485165/luthor.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/luthor.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/luthor.o ../../src/tkgate/luthor.c

${OBJECTDIR}/_ext/715485165/main.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/main.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/main.o ../../src/tkgate/main.c

${OBJECTDIR}/_ext/715485165/metrics.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/metrics.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/metrics.o ../../src/tkgate/metrics.c

${OBJECTDIR}/_ext/715485165/modint.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/modint.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/modint.o ../../src/tkgate/modint.c

${OBJECTDIR}/_ext/715485165/modsym.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/modsym.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/modsym.o ../../src/tkgate/modsym.c

${OBJECTDIR}/_ext/715485165/module.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/module.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/module.o ../../src/tkgate/module.c

${OBJECTDIR}/_ext/715485165/mult.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/mult.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/mult.o ../../src/tkgate/mult.c

${OBJECTDIR}/_ext/715485165/mux.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/mux.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/mux.o ../../src/tkgate/mux.c

${OBJECTDIR}/_ext/715485165/net.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/net.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/net.o ../../src/tkgate/net.c

${OBJECTDIR}/_ext/715485165/nmos.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/nmos.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/nmos.o ../../src/tkgate/nmos.c

${OBJECTDIR}/_ext/715485165/object.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/object.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/object.o ../../src/tkgate/object.c

${OBJECTDIR}/_ext/715485165/or.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/or.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/or.o ../../src/tkgate/or.c

${OBJECTDIR}/_ext/715485165/out.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/out.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/out.o ../../src/tkgate/out.c

${OBJECTDIR}/_ext/715485165/paux.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/paux.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/paux.o ../../src/tkgate/paux.c

${OBJECTDIR}/_ext/715485165/pmos.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/pmos.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/pmos.o ../../src/tkgate/pmos.c

${OBJECTDIR}/_ext/715485165/primitives.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/primitives.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/primitives.o ../../src/tkgate/primitives.c

${OBJECTDIR}/_ext/715485165/print.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/print.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/print.o ../../src/tkgate/print.c

${OBJECTDIR}/_ext/715485165/ram.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/ram.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/ram.o ../../src/tkgate/ram.c

${OBJECTDIR}/_ext/715485165/register.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/register.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/register.o ../../src/tkgate/register.c

${OBJECTDIR}/_ext/715485165/release.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/release.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/release.o ../../src/tkgate/release.c

${OBJECTDIR}/_ext/715485165/roll.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/roll.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/roll.o ../../src/tkgate/roll.c

${OBJECTDIR}/_ext/715485165/rom.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/rom.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/rom.o ../../src/tkgate/rom.c

${OBJECTDIR}/_ext/715485165/rshift.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/rshift.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/rshift.o ../../src/tkgate/rshift.c

${OBJECTDIR}/_ext/715485165/scope.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/scope.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/scope.o ../../src/tkgate/scope.c

${OBJECTDIR}/_ext/715485165/scopewin.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/scopewin.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/scopewin.o ../../src/tkgate/scopewin.c

${OBJECTDIR}/_ext/715485165/script.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/script.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/script.o ../../src/tkgate/script.c

${OBJECTDIR}/_ext/715485165/search.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/search.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/search.o ../../src/tkgate/search.c

${OBJECTDIR}/_ext/715485165/selection.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/selection.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/selection.o ../../src/tkgate/selection.c

${OBJECTDIR}/_ext/715485165/simulate.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/simulate.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/simulate.o ../../src/tkgate/simulate.c

${OBJECTDIR}/_ext/715485165/switch.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/switch.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/switch.o ../../src/tkgate/switch.c

${OBJECTDIR}/_ext/715485165/symblock.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/symblock.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/symblock.o ../../src/tkgate/symblock.c

${OBJECTDIR}/_ext/715485165/tap.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/tap.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/tap.o ../../src/tkgate/tap.c

${OBJECTDIR}/_ext/715485165/tclfuncs.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/tclfuncs.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/tclfuncs.o ../../src/tkgate/tclfuncs.c

${OBJECTDIR}/_ext/715485165/text.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/text.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/text.o ../../src/tkgate/text.c

${OBJECTDIR}/_ext/715485165/tkgate.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/tkgate.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/tkgate.o ../../src/tkgate/tkgate.c

${OBJECTDIR}/_ext/715485165/tkgatewin.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/tkgatewin.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/tkgatewin.o ../../src/tkgate/tkgatewin.c

${OBJECTDIR}/_ext/715485165/traceprint.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/traceprint.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/traceprint.o ../../src/tkgate/traceprint.c

${OBJECTDIR}/_ext/715485165/tri.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/tri.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/tri.o ../../src/tkgate/tri.c

${OBJECTDIR}/_ext/715485165/tribuffer.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/tribuffer.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/tribuffer.o ../../src/tkgate/tribuffer.c

${OBJECTDIR}/_ext/715485165/vdd.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/vdd.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/vdd.o ../../src/tkgate/vdd.c

${OBJECTDIR}/_ext/715485165/verify.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/verify.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/verify.o ../../src/tkgate/verify.c

${OBJECTDIR}/_ext/715485165/verilog_in.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/verilog_in.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/verilog_in.o ../../src/tkgate/verilog_in.c

${OBJECTDIR}/_ext/715485165/verilog_out.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/verilog_out.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/verilog_out.o ../../src/tkgate/verilog_out.c

${OBJECTDIR}/_ext/715485165/vgrammar.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/vgrammar.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/vgrammar.o ../../src/tkgate/vgrammar.c

${OBJECTDIR}/_ext/715485165/wiresadd.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/wiresadd.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/wiresadd.o ../../src/tkgate/wiresadd.c

${OBJECTDIR}/_ext/715485165/wiresdraw.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/wiresdraw.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/wiresdraw.o ../../src/tkgate/wiresdraw.c

${OBJECTDIR}/_ext/715485165/wiresedit.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/wiresedit.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/wiresedit.o ../../src/tkgate/wiresedit.c

${OBJECTDIR}/_ext/715485165/wiresmove.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/wiresmove.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/wiresmove.o ../../src/tkgate/wiresmove.c

${OBJECTDIR}/_ext/715485165/wiresnap.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/wiresnap.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/wiresnap.o ../../src/tkgate/wiresnap.c

${OBJECTDIR}/_ext/715485165/wmstuff.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/wmstuff.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/wmstuff.o ../../src/tkgate/wmstuff.c

${OBJECTDIR}/_ext/715485165/xor.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/xor.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/xor.o ../../src/tkgate/xor.c

${OBJECTDIR}/_ext/715485165/zoom.o: nbproject/Makefile-${CND_CONF}.mk ../../src/tkgate/zoom.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/715485165
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DTKGATE_HOMEDIR=NULL -I../.. -I/usr/include/tcl -I../../src/common -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/715485165/zoom.o ../../src/tkgate/zoom.c

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
