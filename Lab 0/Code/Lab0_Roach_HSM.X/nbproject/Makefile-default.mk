#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Lab0_Roach_HSM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Lab0_Roach_HSM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/AD.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/BOARD.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_CheckEvents.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Framework.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_KeyboardInput.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_PostList.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Queue.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_TattleTale.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Timers.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/pwm.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/roach.c" "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/serial.c" LightSensorEventChecker.c BumperService.c Lab0_Roach_HSMMain.c RoachHSM.c RoachHideSubHSM.c RoachRunSub.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1970742734/AD.o ${OBJECTDIR}/_ext/1970742734/BOARD.o ${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o ${OBJECTDIR}/_ext/1970742734/ES_Framework.o ${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1970742734/ES_PostList.o ${OBJECTDIR}/_ext/1970742734/ES_Queue.o ${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o ${OBJECTDIR}/_ext/1970742734/ES_Timers.o ${OBJECTDIR}/_ext/1970742734/pwm.o ${OBJECTDIR}/_ext/1970742734/roach.o ${OBJECTDIR}/_ext/1970742734/serial.o ${OBJECTDIR}/LightSensorEventChecker.o ${OBJECTDIR}/BumperService.o ${OBJECTDIR}/Lab0_Roach_HSMMain.o ${OBJECTDIR}/RoachHSM.o ${OBJECTDIR}/RoachHideSubHSM.o ${OBJECTDIR}/RoachRunSub.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1970742734/AD.o.d ${OBJECTDIR}/_ext/1970742734/BOARD.o.d ${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1970742734/ES_Framework.o.d ${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1970742734/ES_PostList.o.d ${OBJECTDIR}/_ext/1970742734/ES_Queue.o.d ${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o.d ${OBJECTDIR}/_ext/1970742734/ES_Timers.o.d ${OBJECTDIR}/_ext/1970742734/pwm.o.d ${OBJECTDIR}/_ext/1970742734/roach.o.d ${OBJECTDIR}/_ext/1970742734/serial.o.d ${OBJECTDIR}/LightSensorEventChecker.o.d ${OBJECTDIR}/BumperService.o.d ${OBJECTDIR}/Lab0_Roach_HSMMain.o.d ${OBJECTDIR}/RoachHSM.o.d ${OBJECTDIR}/RoachHideSubHSM.o.d ${OBJECTDIR}/RoachRunSub.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1970742734/AD.o ${OBJECTDIR}/_ext/1970742734/BOARD.o ${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o ${OBJECTDIR}/_ext/1970742734/ES_Framework.o ${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1970742734/ES_PostList.o ${OBJECTDIR}/_ext/1970742734/ES_Queue.o ${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o ${OBJECTDIR}/_ext/1970742734/ES_Timers.o ${OBJECTDIR}/_ext/1970742734/pwm.o ${OBJECTDIR}/_ext/1970742734/roach.o ${OBJECTDIR}/_ext/1970742734/serial.o ${OBJECTDIR}/LightSensorEventChecker.o ${OBJECTDIR}/BumperService.o ${OBJECTDIR}/Lab0_Roach_HSMMain.o ${OBJECTDIR}/RoachHSM.o ${OBJECTDIR}/RoachHideSubHSM.o ${OBJECTDIR}/RoachRunSub.o

# Source Files
SOURCEFILES=D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/AD.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/BOARD.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_CheckEvents.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Framework.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_KeyboardInput.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_PostList.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Queue.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_TattleTale.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Timers.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/pwm.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/roach.c D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/serial.c LightSensorEventChecker.c BumperService.c Lab0_Roach_HSMMain.c RoachHSM.c RoachHideSubHSM.c RoachRunSub.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
Device=PIC32MX320F128H
ProjectDir="D:\Fall 2019\Mech\Labs\Lab 0\Lab 0\Lab0_Roach_HSM.X"
ProjectName=Lab0_Roach_HSM
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\Lab0_Roach_HSM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="Lab0_Roach_HSM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Lab0_Roach_HSM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="D:\Fall 2019\Mech\Mech Class Files\CMPE118\bootloader320.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1970742734/AD.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/AD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/AD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/AD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/AD.o.d" -o ${OBJECTDIR}/_ext/1970742734/AD.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/AD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/BOARD.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/BOARD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/BOARD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/BOARD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/BOARD.o.d" -o ${OBJECTDIR}/_ext/1970742734/BOARD.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/BOARD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_CheckEvents.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_CheckEvents.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_Framework.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_Framework.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Framework.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_Framework.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_Framework.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Framework.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_KeyboardInput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_KeyboardInput.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_PostList.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_PostList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_PostList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_PostList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_PostList.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_PostList.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_Queue.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_Queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_Queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_Queue.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Queue.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_TattleTale.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_TattleTale.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_Timers.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_Timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_Timers.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Timers.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/pwm.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/pwm.o.d" -o ${OBJECTDIR}/_ext/1970742734/pwm.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/roach.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/roach.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/roach.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/roach.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/roach.o.d" -o ${OBJECTDIR}/_ext/1970742734/roach.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/roach.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/serial.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/serial.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/serial.o.d" -o ${OBJECTDIR}/_ext/1970742734/serial.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/serial.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/LightSensorEventChecker.o: LightSensorEventChecker.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LightSensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/LightSensorEventChecker.o 
	@${FIXDEPS} "${OBJECTDIR}/LightSensorEventChecker.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/LightSensorEventChecker.o.d" -o ${OBJECTDIR}/LightSensorEventChecker.o LightSensorEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/BumperService.o: BumperService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BumperService.o.d 
	@${RM} ${OBJECTDIR}/BumperService.o 
	@${FIXDEPS} "${OBJECTDIR}/BumperService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/BumperService.o.d" -o ${OBJECTDIR}/BumperService.o BumperService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Lab0_Roach_HSMMain.o: Lab0_Roach_HSMMain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Lab0_Roach_HSMMain.o.d 
	@${RM} ${OBJECTDIR}/Lab0_Roach_HSMMain.o 
	@${FIXDEPS} "${OBJECTDIR}/Lab0_Roach_HSMMain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/Lab0_Roach_HSMMain.o.d" -o ${OBJECTDIR}/Lab0_Roach_HSMMain.o Lab0_Roach_HSMMain.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/RoachHSM.o: RoachHSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RoachHSM.o.d 
	@${RM} ${OBJECTDIR}/RoachHSM.o 
	@${FIXDEPS} "${OBJECTDIR}/RoachHSM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/RoachHSM.o.d" -o ${OBJECTDIR}/RoachHSM.o RoachHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/RoachHideSubHSM.o: RoachHideSubHSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RoachHideSubHSM.o.d 
	@${RM} ${OBJECTDIR}/RoachHideSubHSM.o 
	@${FIXDEPS} "${OBJECTDIR}/RoachHideSubHSM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/RoachHideSubHSM.o.d" -o ${OBJECTDIR}/RoachHideSubHSM.o RoachHideSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/RoachRunSub.o: RoachRunSub.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RoachRunSub.o.d 
	@${RM} ${OBJECTDIR}/RoachRunSub.o 
	@${FIXDEPS} "${OBJECTDIR}/RoachRunSub.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/RoachRunSub.o.d" -o ${OBJECTDIR}/RoachRunSub.o RoachRunSub.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1970742734/AD.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/AD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/AD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/AD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/AD.o.d" -o ${OBJECTDIR}/_ext/1970742734/AD.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/AD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/BOARD.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/BOARD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/BOARD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/BOARD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/BOARD.o.d" -o ${OBJECTDIR}/_ext/1970742734/BOARD.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/BOARD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_CheckEvents.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_CheckEvents.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_CheckEvents.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_Framework.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_Framework.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Framework.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_Framework.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_Framework.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Framework.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_KeyboardInput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_KeyboardInput.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_KeyboardInput.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_PostList.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_PostList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_PostList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_PostList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_PostList.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_PostList.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_Queue.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_Queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_Queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_Queue.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Queue.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_TattleTale.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_TattleTale.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_TattleTale.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/ES_Timers.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/ES_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/ES_Timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/ES_Timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1970742734/ES_Timers.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/ES_Timers.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/pwm.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/pwm.o.d" -o ${OBJECTDIR}/_ext/1970742734/pwm.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/roach.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/roach.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/roach.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/roach.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/roach.o.d" -o ${OBJECTDIR}/_ext/1970742734/roach.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/roach.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1970742734/serial.o: D\:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/src/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1970742734" 
	@${RM} ${OBJECTDIR}/_ext/1970742734/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970742734/serial.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1970742734/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1970742734/serial.o.d" -o ${OBJECTDIR}/_ext/1970742734/serial.o "D:/Fall 2019/Mech/Mech Class Files/CMPE118/src/serial.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/LightSensorEventChecker.o: LightSensorEventChecker.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LightSensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/LightSensorEventChecker.o 
	@${FIXDEPS} "${OBJECTDIR}/LightSensorEventChecker.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/LightSensorEventChecker.o.d" -o ${OBJECTDIR}/LightSensorEventChecker.o LightSensorEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/BumperService.o: BumperService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BumperService.o.d 
	@${RM} ${OBJECTDIR}/BumperService.o 
	@${FIXDEPS} "${OBJECTDIR}/BumperService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/BumperService.o.d" -o ${OBJECTDIR}/BumperService.o BumperService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Lab0_Roach_HSMMain.o: Lab0_Roach_HSMMain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Lab0_Roach_HSMMain.o.d 
	@${RM} ${OBJECTDIR}/Lab0_Roach_HSMMain.o 
	@${FIXDEPS} "${OBJECTDIR}/Lab0_Roach_HSMMain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/Lab0_Roach_HSMMain.o.d" -o ${OBJECTDIR}/Lab0_Roach_HSMMain.o Lab0_Roach_HSMMain.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/RoachHSM.o: RoachHSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RoachHSM.o.d 
	@${RM} ${OBJECTDIR}/RoachHSM.o 
	@${FIXDEPS} "${OBJECTDIR}/RoachHSM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/RoachHSM.o.d" -o ${OBJECTDIR}/RoachHSM.o RoachHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/RoachHideSubHSM.o: RoachHideSubHSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RoachHideSubHSM.o.d 
	@${RM} ${OBJECTDIR}/RoachHideSubHSM.o 
	@${FIXDEPS} "${OBJECTDIR}/RoachHideSubHSM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/RoachHideSubHSM.o.d" -o ${OBJECTDIR}/RoachHideSubHSM.o RoachHideSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/RoachRunSub.o: RoachRunSub.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RoachRunSub.o.d 
	@${RM} ${OBJECTDIR}/RoachRunSub.o 
	@${FIXDEPS} "${OBJECTDIR}/RoachRunSub.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DEVENTCHECKER_TEST -DSIMPLESERVICE_TEST -I"." -I"../../../../Mech Class Files/CMPE118/include" -MMD -MF "${OBJECTDIR}/RoachRunSub.o.d" -o ${OBJECTDIR}/RoachRunSub.o RoachRunSub.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Lab0_Roach_HSM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    D:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Lab0_Roach_HSM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Lab0_Roach_HSM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   D:/Fall\ 2019/Mech/Mech\ Class\ Files/CMPE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Lab0_Roach_HSM.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Lab0_Roach_HSM.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif

.pre:
	@echo "--------------------------------------"
	@echo "User defined pre-build step: [python C:\CMPE118\scripts\Enum_To_String.py]"
	@python C:\CMPE118\scripts\Enum_To_String.py
	@echo "--------------------------------------"

# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
