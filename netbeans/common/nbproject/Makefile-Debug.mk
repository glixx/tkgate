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
	${OBJECTDIR}/_ext/232673814/hash.o \
	${OBJECTDIR}/_ext/232673814/list.o \
	${OBJECTDIR}/_ext/232673814/misc.o \
	${OBJECTDIR}/_ext/232673814/ycmalloc.o


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
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ../build/${CND_CONF}/libcommon.a

../build/${CND_CONF}/libcommon.a: ${OBJECTFILES}
	${MKDIR} -p ../build/${CND_CONF}
	${RM} ../build/${CND_CONF}/libcommon.a
	${AR} -rv ../build/${CND_CONF}/libcommon.a ${OBJECTFILES} 
	$(RANLIB) ../build/${CND_CONF}/libcommon.a

${OBJECTDIR}/_ext/232673814/hash.o: ../../src/common/hash.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -I../.. -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/hash.o ../../src/common/hash.c

${OBJECTDIR}/_ext/232673814/list.o: ../../src/common/list.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -I../.. -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/list.o ../../src/common/list.c

${OBJECTDIR}/_ext/232673814/misc.o: ../../src/common/misc.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -I../.. -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/misc.o ../../src/common/misc.c

${OBJECTDIR}/_ext/232673814/ycmalloc.o: ../../src/common/ycmalloc.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -I../.. -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/ycmalloc.o ../../src/common/ycmalloc.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ../build/${CND_CONF}/libcommon.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
