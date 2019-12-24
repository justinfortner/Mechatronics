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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RDP-V3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RDP-V3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/AD.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/BOARD.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_CheckEvents.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Framework.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_KeyboardInput.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_PostList.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Queue.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_TattleTale.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Timers.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/pwm.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/Robot.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotHSM.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Pursue.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Destroy.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Escape.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotBumper.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TapeSensor.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TrackWire.c C:/CMPE118/src/serial.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/Main.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/Beacon.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Lookout.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Search.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1700629049/AD.o ${OBJECTDIR}/_ext/1700629049/BOARD.o ${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o ${OBJECTDIR}/_ext/1700629049/ES_Framework.o ${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1700629049/ES_PostList.o ${OBJECTDIR}/_ext/1700629049/ES_Queue.o ${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o ${OBJECTDIR}/_ext/1700629049/ES_Timers.o ${OBJECTDIR}/_ext/1700629049/pwm.o ${OBJECTDIR}/_ext/1700629049/Robot.o ${OBJECTDIR}/_ext/1772898800/RobotHSM.o ${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o ${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o ${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o ${OBJECTDIR}/_ext/1772898800/RobotBumper.o ${OBJECTDIR}/_ext/1772898800/TapeSensor.o ${OBJECTDIR}/_ext/1772898800/TrackWire.o ${OBJECTDIR}/_ext/331920610/serial.o ${OBJECTDIR}/_ext/399613070/Main.o ${OBJECTDIR}/_ext/1772898800/Beacon.o ${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o ${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1700629049/AD.o.d ${OBJECTDIR}/_ext/1700629049/BOARD.o.d ${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1700629049/ES_Framework.o.d ${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1700629049/ES_PostList.o.d ${OBJECTDIR}/_ext/1700629049/ES_Queue.o.d ${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o.d ${OBJECTDIR}/_ext/1700629049/ES_Timers.o.d ${OBJECTDIR}/_ext/1700629049/pwm.o.d ${OBJECTDIR}/_ext/1700629049/Robot.o.d ${OBJECTDIR}/_ext/1772898800/RobotHSM.o.d ${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o.d ${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o.d ${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o.d ${OBJECTDIR}/_ext/1772898800/RobotBumper.o.d ${OBJECTDIR}/_ext/1772898800/TapeSensor.o.d ${OBJECTDIR}/_ext/1772898800/TrackWire.o.d ${OBJECTDIR}/_ext/331920610/serial.o.d ${OBJECTDIR}/_ext/399613070/Main.o.d ${OBJECTDIR}/_ext/1772898800/Beacon.o.d ${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o.d ${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1700629049/AD.o ${OBJECTDIR}/_ext/1700629049/BOARD.o ${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o ${OBJECTDIR}/_ext/1700629049/ES_Framework.o ${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1700629049/ES_PostList.o ${OBJECTDIR}/_ext/1700629049/ES_Queue.o ${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o ${OBJECTDIR}/_ext/1700629049/ES_Timers.o ${OBJECTDIR}/_ext/1700629049/pwm.o ${OBJECTDIR}/_ext/1700629049/Robot.o ${OBJECTDIR}/_ext/1772898800/RobotHSM.o ${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o ${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o ${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o ${OBJECTDIR}/_ext/1772898800/RobotBumper.o ${OBJECTDIR}/_ext/1772898800/TapeSensor.o ${OBJECTDIR}/_ext/1772898800/TrackWire.o ${OBJECTDIR}/_ext/331920610/serial.o ${OBJECTDIR}/_ext/399613070/Main.o ${OBJECTDIR}/_ext/1772898800/Beacon.o ${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o ${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o

# Source Files
SOURCEFILES=C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/AD.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/BOARD.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_CheckEvents.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Framework.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_KeyboardInput.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_PostList.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Queue.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_TattleTale.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Timers.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/pwm.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/Robot.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotHSM.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Pursue.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Destroy.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Escape.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotBumper.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TapeSensor.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TrackWire.c C:/CMPE118/src/serial.c C:/Users/lurmerca/Downloads/CMPE118/CMPE118/Main.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/Beacon.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Lookout.c C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Search.c



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
ProjectDir="C:\Users\lurmerca\MPLABXProjects\RDP-V3.X"
ProjectName=RDP-V3
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\RDP-V3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="RDP-V3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/RDP-V3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="C:\Users\lurmerca\Downloads\CMPE118\CMPE118\bootloader320.ld"
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
${OBJECTDIR}/_ext/1700629049/AD.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/AD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/AD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/AD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/AD.o.d" -o ${OBJECTDIR}/_ext/1700629049/AD.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/BOARD.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/BOARD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/BOARD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/BOARD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/BOARD.o.d" -o ${OBJECTDIR}/_ext/1700629049/BOARD.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_CheckEvents.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_Framework.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Framework.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Framework.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_Framework.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_Framework.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_KeyboardInput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_PostList.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_PostList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_PostList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_PostList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_PostList.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_Queue.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_Queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_Queue.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_TattleTale.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_Timers.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_Timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_Timers.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/pwm.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/pwm.o.d" -o ${OBJECTDIR}/_ext/1700629049/pwm.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/Robot.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/Robot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/Robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/Robot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/Robot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/Robot.o.d" -o ${OBJECTDIR}/_ext/1700629049/Robot.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/Robot.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/RobotHSM.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotHSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/RobotHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/RobotHSM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/RobotHSM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/RobotHSM.o.d" -o ${OBJECTDIR}/_ext/1772898800/RobotHSM.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Pursue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o.d" -o ${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Pursue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Destroy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o.d" -o ${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Destroy.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Escape.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o.d" -o ${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Escape.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/RobotBumper.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotBumper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/RobotBumper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/RobotBumper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/RobotBumper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/RobotBumper.o.d" -o ${OBJECTDIR}/_ext/1772898800/RobotBumper.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotBumper.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/TapeSensor.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TapeSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/TapeSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/TapeSensor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/TapeSensor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/TapeSensor.o.d" -o ${OBJECTDIR}/_ext/1772898800/TapeSensor.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TapeSensor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/TrackWire.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TrackWire.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/TrackWire.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/TrackWire.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/TrackWire.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/TrackWire.o.d" -o ${OBJECTDIR}/_ext/1772898800/TrackWire.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TrackWire.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/331920610/serial.o: C\:/CMPE118/src/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/331920610" 
	@${RM} ${OBJECTDIR}/_ext/331920610/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/331920610/serial.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/331920610/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/331920610/serial.o.d" -o ${OBJECTDIR}/_ext/331920610/serial.o C:/CMPE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/399613070/Main.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399613070" 
	@${RM} ${OBJECTDIR}/_ext/399613070/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/399613070/Main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/399613070/Main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/399613070/Main.o.d" -o ${OBJECTDIR}/_ext/399613070/Main.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/Beacon.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/Beacon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/Beacon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/Beacon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/Beacon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/Beacon.o.d" -o ${OBJECTDIR}/_ext/1772898800/Beacon.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/Beacon.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Lookout.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o.d" -o ${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Lookout.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Search.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o.d" -o ${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Search.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1700629049/AD.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/AD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/AD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/AD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/AD.o.d" -o ${OBJECTDIR}/_ext/1700629049/AD.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/BOARD.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/BOARD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/BOARD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/BOARD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/BOARD.o.d" -o ${OBJECTDIR}/_ext/1700629049/BOARD.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_CheckEvents.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_CheckEvents.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_Framework.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Framework.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Framework.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_Framework.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_Framework.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_KeyboardInput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_KeyboardInput.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_PostList.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_PostList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_PostList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_PostList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_PostList.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_Queue.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_Queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_Queue.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_TattleTale.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_TattleTale.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/ES_Timers.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/ES_Timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/ES_Timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1700629049/ES_Timers.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/pwm.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/pwm.o.d" -o ${OBJECTDIR}/_ext/1700629049/pwm.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1700629049/Robot.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/Robot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700629049" 
	@${RM} ${OBJECTDIR}/_ext/1700629049/Robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700629049/Robot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700629049/Robot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1700629049/Robot.o.d" -o ${OBJECTDIR}/_ext/1700629049/Robot.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/src/Robot.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/RobotHSM.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotHSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/RobotHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/RobotHSM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/RobotHSM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/RobotHSM.o.d" -o ${OBJECTDIR}/_ext/1772898800/RobotHSM.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Pursue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o.d" -o ${OBJECTDIR}/_ext/1772898800/SubHSM_Pursue.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Pursue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Destroy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o.d" -o ${OBJECTDIR}/_ext/1772898800/SubHSM_Destroy.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Destroy.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Escape.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o.d" -o ${OBJECTDIR}/_ext/1772898800/SubHSM_Escape.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Escape.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/RobotBumper.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotBumper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/RobotBumper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/RobotBumper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/RobotBumper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/RobotBumper.o.d" -o ${OBJECTDIR}/_ext/1772898800/RobotBumper.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/RobotBumper.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/TapeSensor.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TapeSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/TapeSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/TapeSensor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/TapeSensor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/TapeSensor.o.d" -o ${OBJECTDIR}/_ext/1772898800/TapeSensor.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TapeSensor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/TrackWire.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TrackWire.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/TrackWire.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/TrackWire.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/TrackWire.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/TrackWire.o.d" -o ${OBJECTDIR}/_ext/1772898800/TrackWire.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/TrackWire.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/331920610/serial.o: C\:/CMPE118/src/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/331920610" 
	@${RM} ${OBJECTDIR}/_ext/331920610/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/331920610/serial.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/331920610/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/331920610/serial.o.d" -o ${OBJECTDIR}/_ext/331920610/serial.o C:/CMPE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/399613070/Main.o: C\:/Users/lurmerca/Downloads/CMPE118/CMPE118/Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399613070" 
	@${RM} ${OBJECTDIR}/_ext/399613070/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/399613070/Main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/399613070/Main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/399613070/Main.o.d" -o ${OBJECTDIR}/_ext/399613070/Main.o C:/Users/lurmerca/Downloads/CMPE118/CMPE118/Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/Beacon.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/Beacon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/Beacon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/Beacon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/Beacon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/Beacon.o.d" -o ${OBJECTDIR}/_ext/1772898800/Beacon.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/Beacon.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Lookout.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o.d" -o ${OBJECTDIR}/_ext/1772898800/SubHSM_Lookout.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Lookout.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o: C\:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Search.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1772898800" 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"C:/Users/lurmerca/Downloads/CMPE118/CMPE118/include" -MMD -MF "${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o.d" -o ${OBJECTDIR}/_ext/1772898800/SubHSM_Search.o C:/Users/lurmerca/MPLABXProjects/RDP-V3.X/SubHSM_Search.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/RDP-V3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/lurmerca/Downloads/CMPE118/CMPE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RDP-V3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/RDP-V3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/lurmerca/Downloads/CMPE118/CMPE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RDP-V3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/RDP-V3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
