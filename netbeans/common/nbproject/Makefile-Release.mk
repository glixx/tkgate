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
CND_CONF=Release
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

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

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
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcommon.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcommon.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcommon.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcommon.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcommon.a

${OBJECTDIR}/_ext/232673814/hash.o: ../../src/common/hash.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/hash.o ../../src/common/hash.c

${OBJECTDIR}/_ext/232673814/list.o: ../../src/common/list.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/list.o ../../src/common/list.c

${OBJECTDIR}/_ext/232673814/misc.o: ../../src/common/misc.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/misc.o ../../src/common/misc.c

${OBJECTDIR}/_ext/232673814/ycmalloc.o: ../../src/common/ycmalloc.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/ycmalloc.o ../../src/common/ycmalloc.c

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-conf ${TESTFILES}
${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/test.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.c}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} 


${TESTDIR}/tests/test.o: tests/test.c 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.c) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/test.o tests/test.c


${OBJECTDIR}/_ext/232673814/hash_nomain.o: ${OBJECTDIR}/_ext/232673814/hash.o ../../src/common/hash.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	@NMOUTPUT=`${NM} ${OBJECTDIR}/_ext/232673814/hash.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.c) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/hash_nomain.o ../../src/common/hash.c;\
	else  \
	    ${CP} ${OBJECTDIR}/_ext/232673814/hash.o ${OBJECTDIR}/_ext/232673814/hash_nomain.o;\
	fi

${OBJECTDIR}/_ext/232673814/list_nomain.o: ${OBJECTDIR}/_ext/232673814/list.o ../../src/common/list.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	@NMOUTPUT=`${NM} ${OBJECTDIR}/_ext/232673814/list.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.c) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/list_nomain.o ../../src/common/list.c;\
	else  \
	    ${CP} ${OBJECTDIR}/_ext/232673814/list.o ${OBJECTDIR}/_ext/232673814/list_nomain.o;\
	fi

${OBJECTDIR}/_ext/232673814/misc_nomain.o: ${OBJECTDIR}/_ext/232673814/misc.o ../../src/common/misc.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	@NMOUTPUT=`${NM} ${OBJECTDIR}/_ext/232673814/misc.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.c) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/misc_nomain.o ../../src/common/misc.c;\
	else  \
	    ${CP} ${OBJECTDIR}/_ext/232673814/misc.o ${OBJECTDIR}/_ext/232673814/misc_nomain.o;\
	fi

${OBJECTDIR}/_ext/232673814/ycmalloc_nomain.o: ${OBJECTDIR}/_ext/232673814/ycmalloc.o ../../src/common/ycmalloc.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/232673814
	@NMOUTPUT=`${NM} ${OBJECTDIR}/_ext/232673814/ycmalloc.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.c) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/232673814/ycmalloc_nomain.o ../../src/common/ycmalloc.c;\
	else  \
	    ${CP} ${OBJECTDIR}/_ext/232673814/ycmalloc.o ${OBJECTDIR}/_ext/232673814/ycmalloc_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcommon.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
