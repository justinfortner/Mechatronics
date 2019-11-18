/*
 * File:   TemplateEventChecker.c
 * Author: Gabriel Hugh Elkaim
 *
 * Template file to set up typical EventCheckers for the  Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the
 * names will have to be changed to match your code.
 *
 * This EventCheckers file will work with both FSM's and HSM's.
 *
 * Remember that EventCheckers should only return TRUE when an event has occured,
 * and that the event is a TRANSITION between two detectable differences. They
 * should also be atomic and run as fast as possible for good results.
 *
 * This file includes a test harness that will run the event detectors listed in the
 * ES_Configure file in the project, and will conditionally compile main if the macro
 * EVENTCHECKER_TEST is defined (either in the project or in the file). This will allow
 * you to check you event detectors in their own project, and then leave them untouched
 * for your project unless you need to alter their post functions.
 *
 * Created on September 27, 2013, 8:37 AM
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "TemplateEventChecker.h"
#include "ES_Events.h"
#include "serial.h"
#include "AD.h"
#include <BOARD.h>
#include <roach.h>

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
//413 for auto spam
#define IN_DARK 800
#define IN_LIGHT 700
//int i = 0;

/*******************************************************************************
 * EVENTCHECKER_TEST SPECIFIC CODE                                                             *
 ******************************************************************************/

//#define EVENTCHECKER_TEST
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
#define SaveEvent(x) do {eventName=__func__; storedEvent=x;} while (0)

static const char *eventName;
static ES_Event storedEvent;
#endif

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this EventChecker. They should be functions
   relevant to the behavior of this particular event checker */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/

/* Any private module level variable that you might need for keeping track of
   events would be placed here. Private variables should be STATIC so that they
   are limited in scope to this module. */

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function LightEventChecker(void)
 * @param none
 * @return TRUE or FALSE
 * @brief 
 * @note 
 * @author 
 **/
uint8_t LightEventChecker(void) {
    //printf("In LightEventChecker \n");
    static ES_EventTyp_t lastEvent = DARK_STATE;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    uint16_t LightLevel = Roach_LightLevel(); // read the light sensor

    //printf("Light Level: %d \n", LightLevel);
    //int i;
    //for (i = 0; i < 312500; i++) {

    //}
    
    if (curEvent = DARK_STATE && LightLevel < IN_LIGHT && lastEvent == DARK_STATE) { //DARK into LIGHT
        //printf("In Dark State \n");
        curEvent = LIGHT_STATE;
    } else if (curEvent = LIGHT_STATE && LightLevel > IN_DARK && lastEvent == LIGHT_STATE) { //LIGHT into DARK
        //printf("In Dark State \n");
        curEvent = DARK_STATE;
    } else{
        curEvent = lastEvent;
    }


    if (curEvent != lastEvent) { // check for change from last time
        //printf("Different Event\n");

        if (curEvent == DARK_STATE) {
            printf("\n DARK_STATE \n");
        } else if (curEvent == LIGHT_STATE) {
            printf("\n LIGHT_STATE \n");
        }

        thisEvent.EventType = curEvent;
        thisEvent.EventParam = LightLevel;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        LightEventChecker(void);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

/* 
 * The Test Harness for the event checkers is conditionally compiled using
 * the EVENTCHECKER_TEST macro (defined either in the file or at the project level).
 * No other main() can exist within the project.
 * 
 * It requires a valid ES_Configure.h file in the project with the correct events in 
 * the enum, and the correct list of event checkers in the EVENT_CHECK_LIST.
 * 
 * The test harness will run each of your event detectors identically to the way the
 * ES_Framework will call them, and if an event is detected it will print out the function
 * name, event, and event parameter. Use this to test your event checking code and
 * ensure that it is fully functional.
 * 
 * If you are locking up the output, most likely you are generating too many events.
 * Remember that events are detectable changes, not a state in itself.
 * 
 * Once you have fully tested your event checking code, you can leave it in its own
 * project and point to it from your other projects. If the EVENTCHECKER_TEST marco is
 * defined in the project, no changes are necessary for your event checkers to work
 * with your other projects.
 */

/*
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
static uint8_t(*EventList[])(void) = {EVENT_CHECK_LIST};

void PrintEvent(void);


void main(void) {
    BOARD_Init();
    // user initialization code goes here 
    Roach_Init();
    // Do not alter anything below this line
    int i;

    printf("\r\nEvent checking test harness for %s", __FILE__);

    while (1) {
        if (IsTransmitEmpty()) {
            for (i = 0; i< sizeof (EventList) >> 2; i++) {
                if (EventList[i]() == TRUE) {
                    PrintEvent();
                    break;
                }

            }
        }
    }
}

void PrintEvent(void) {
    printf("\r\nFunc: %s\tEvent: %s\tParam: 0x%X", eventName,
            EventNames[storedEvent.EventType], storedEvent.EventParam);
}
#endif
 */