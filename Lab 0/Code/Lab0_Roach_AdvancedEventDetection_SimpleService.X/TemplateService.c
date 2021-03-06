/*
 * File: TemplateService.h
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a simple service to work with the Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that this file
 * will need to be modified to fit your exact needs, and most of the names will have
 * to be changed to match your code.
 *
 * This is provided as an example and a good place to start.
 *
 * Created on 23/Oct/2011
 * Updated on 13/Nov/2013
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include <BOARD.h>
#include <roach.h>
#include "AD.h"
#include "ES_Configure.h"
#include "ES_Framework.h"
#include "TemplateService.h"
#include <stdio.h>

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/

#define TIMER_0_TICKS 5
#define INTO_DARK 800
#define INTO_LIGHT 500

int i = 0;

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/
/* You will need MyPriority and maybe a state variable; you may need others
 * as well. */

static uint8_t MyPriority;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

int debouncerHelper(unsigned char Debounce[4]) {
    for (i = 0; i < 3; i++) {
        if (Debounce[0] != Debounce[i + 1]) {
            return 0;
        }
    }
    return 1;
}

/**
 * @Function InitTemplateService(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside LightEventChecker function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTemplateService(uint8_t Priority) {
    ES_Event ThisEvent;

    MyPriority = Priority;

    // in here you write your initialization code
    // this includes all hardware and software initialization
    // that needs to occur.

    // post the initial transition event
    ES_Timer_InitTimer(SIMPLE_SERVICE_TIMER, TIMER_0_TICKS);
    ThisEvent.EventType = ES_INIT;
    if (ES_PostToService(MyPriority, ThisEvent) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostTemplateService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostTemplateService(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function LightEventChecker(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the service,
 *        as this is called any time a new event is passed to the event queue. 
 * @note Remember to rename to something appropriate.
 *       Returns ES_NO_EVENT if the event have been "consumed." 
 * @author J. Edward Carryer, 2011.10.23 19:25 */
ES_Event BumperEventChecker(ES_Event ThisEvent) {
    ES_Event FLReturnEvent;
    ES_Event FRReturnEvent;
    ES_Event BLReturnEvent;
    ES_Event BRReturnEvent;
    FLReturnEvent.EventType = NOFLBUMP_STATE; // assume no errors
    FRReturnEvent.EventType = NOFRBUMP_STATE; // assume no errors
    BLReturnEvent.EventType = NOBLBUMP_STATE; // assume no errors
    BRReturnEvent.EventType = NOBRBUMP_STATE; // assume no errors

    /********************************************
     in here you write your service code
     *******************************************/
    static ES_EventTyp_t FLlastEvent = NOFLBUMP_STATE;
    static ES_EventTyp_t FRlastEvent = NOFRBUMP_STATE;
    static ES_EventTyp_t BLlastEvent = NOBLBUMP_STATE;
    static ES_EventTyp_t BRlastEvent = NOBRBUMP_STATE;
    ES_EventTyp_t FLcurEvent;
    ES_EventTyp_t FRcurEvent;
    ES_EventTyp_t BLcurEvent;
    ES_EventTyp_t BRcurEvent;
    unsigned char Debounce[4];

    switch (ThisEvent.EventType) {
        case ES_INIT:
            // No hardware initialization or single time setups, those
            // go in the init function above.
        case ES_TIMERACTIVE:
        case ES_TIMERSTOPPED:
            // This section is used to reset service for some reason
            break;

        case ES_TIMEOUT:
            ES_Timer_InitTimer(SIMPLE_SERVICE_TIMER, TIMER_0_TICKS);
            uint8_t returnVal = FALSE;

            for (i = 0; i < 4; i++) {
                Debounce[i] = Roach_ReadBumpers();
            }

            if (debouncerHelper(Debounce) == 1 && Roach_ReadFrontLeftBumper() == BUMPER_TRIPPED) { //what event?
                FLcurEvent = FLBUMP_STATE;
            } else if (debouncerHelper(Debounce) == 1 && Roach_ReadFrontLeftBumper() == BUMPER_NOT_TRIPPED) {
                FLcurEvent = NOFLBUMP_STATE;
            }

            if (FLcurEvent != FLlastEvent) { // check for change from last time
                //printf("Different Event\n");
                FLReturnEvent.EventType = FLcurEvent;
                FLReturnEvent.EventParam = Roach_ReadBumpers();
                returnVal = TRUE;
                FLlastEvent = FLcurEvent; // update history


#ifndef SIMPLESERVICE_TEST           // keep this as is for test harness
                PostGenericService(FLReturnEvent);
#else
                PostTemplateService(FLReturnEvent);
#endif   
            }

            if (debouncerHelper(Debounce) == 1 && Roach_ReadFrontRightBumper() == BUMPER_TRIPPED) { //what event?
                FRcurEvent = FRBUMP_STATE;
            } else if (debouncerHelper(Debounce) == 1 && Roach_ReadFrontRightBumper() == BUMPER_NOT_TRIPPED) {
                FRcurEvent = NOFRBUMP_STATE;
            }

            if (FRcurEvent != FRlastEvent) { // check for change from last time
                //printf("Different Event\n");
                FRReturnEvent.EventType = FRcurEvent;
                FRReturnEvent.EventParam = Roach_ReadBumpers();
                returnVal = TRUE;
                FRlastEvent = FRcurEvent; // update history


#ifndef SIMPLESERVICE_TEST           // keep this as is for test harness
                PostGenericService(FRReturnEvent);
#else
                PostTemplateService(FRReturnEvent);
#endif   
            }

            if (debouncerHelper(Debounce) == 1 && Roach_ReadRearLeftBumper() == BUMPER_TRIPPED) { //what event?
                BLcurEvent = BLBUMP_STATE;
            } else if (debouncerHelper(Debounce) == 1 && Roach_ReadRearLeftBumper() == BUMPER_NOT_TRIPPED) {
                BLcurEvent = NOBLBUMP_STATE;
            }

            if (BLcurEvent != BLlastEvent) { // check for change from last time
                //printf("Different Event\n");
                BLReturnEvent.EventType = BLcurEvent;
                BLReturnEvent.EventParam = Roach_ReadBumpers();
                returnVal = TRUE;
                BLlastEvent = BLcurEvent; // update history


#ifndef SIMPLESERVICE_TEST           // keep this as is for test harness
                PostGenericService(BLReturnEvent);
#else
                PostTemplateService(BLReturnEvent);
#endif   
            }

            if (debouncerHelper(Debounce) == 1 && Roach_ReadRearRightBumper() == BUMPER_TRIPPED) { //what event?
                BRcurEvent = BRBUMP_STATE;
            } else if (debouncerHelper(Debounce) == 1 && Roach_ReadRearRightBumper() == BUMPER_NOT_TRIPPED) {
                BRcurEvent = NOBRBUMP_STATE;
            }

            if (BRcurEvent != BRlastEvent) { // check for change from last time
                //printf("Different Event\n");
                BRReturnEvent.EventType = BRcurEvent;
                BRReturnEvent.EventParam = Roach_ReadBumpers();
                returnVal = TRUE;
                BRlastEvent = BRcurEvent; // update history


#ifndef SIMPLESERVICE_TEST           // keep this as is for test harness
                PostGenericService(BRReturnEvent);
#else
                PostTemplateService(BRReturnEvent);
#endif   
            }

            break;

#ifdef SIMPLESERVICE_TEST     // keep this as is for test harness      
        default:
            printf("\r\nEvent: %s\tParam: 0x%X",
                    EventNames[ThisEvent.EventType], ThisEvent.EventParam);
            break;
#endif
    }

    return BLReturnEvent;
}

/*******************************************************************************
 * PRIVATE FUNCTIONs                                                           *
 ******************************************************************************/

