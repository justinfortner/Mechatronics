/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel Elkaim and Soja-Marie Morgens
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is another template file for the SubHSM's that is slightly differet, and
 * should be used for all of the subordinate state machines (flat or heirarchical)
 *
 * This is provided as an example and a good place to start.
 *
 * History
 * When           Who     What/Why
 * -------------- ---     --------
 * 09/13/13 15:17 ghe      added tattletail functionality and recursive calls
 * 01/15/12 11:12 jec      revisions for Gen2 framework
 * 11/07/11 11:26 jec      made the queue static
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTemplateSM()
 * 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "RobotHSM.h"
#include "Robot.h"
#include "SubHSM_Lookout.h" //#include all sub state machines called
#include "SubHSM_Search.h"
#include "SubHSM_Pursue.h"
#include "SubHSM_Destroy.h"
#include "SubHSM_Escape.h"
#include <stdio.h>

/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/
//Include any defines you need to do

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/


typedef enum {
    InitPState,
    Lookout,
    Search,
    Pursue,
    Flank,
    Destroy,
    Escape,
} TemplateHSMState_t;

static const char *StateNames[] = {
	"InitPState",
	"Lookout",
	"Search",
	"Pursue",
	"Flank",
	"Destroy",
	"Escape",
};

#define Lookout_Timer 8500 //Timer for robot to make a full 360 turn
#define Escape_Timer 2500 //A timer to allow robot to move away from beacon
#define CANNON_TIMER 1350
#define CHECK_TIMER 600
#define SPIN_TIMER 5000

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine
   Example: char RunAway(uint_8 seconds);*/
/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TemplateHSMState_t CurrentState = InitPState; // <- change enum name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitRobotHSM(uint8_t Priority) {
    MyPriority = Priority;
    // put us into the Initial PseudoState
    CurrentState = InitPState;
    // post the initial transition event
    if (ES_PostToService(MyPriority, INIT_EVENT) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostTemplateHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostRobotHSM(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTemplateHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the heirarchical state
 *        machine, as this is called any time a new event is passed to the event
 *        queue. This function will be called recursively to implement the correct
 *        order for a state transition to be: exit current state -> enter next state
 *        using the ES_EXIT and ES_ENTRY events.
 * @note Remember to rename to something appropriate.
 *       The lower level state machines are run first, to see if the event is dealt
 *       with there rather than at the current level. ES_EXIT and ES_ENTRY events are
 *       not consumed as these need to pass pack to the higher level state machine.
 * @author J. Edward Carryer, 2011.10.23 19:25
 * @author Gabriel H Elkaim, 2011.10.23 19:25 */
ES_Event RunRobotHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    TemplateHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPState: // If current state is initial Pseudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state
                // Initialize all sub-state machines
                InitSubHSM_Lookout();
                InitSubHSM_Search();
                InitSubHSM_Pursue();
                InitSubHSM_Destroy();
                //            InitSubHSM_Escape();
                // now put the machine into the actual initial state
                nextState = Lookout;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                ES_Timer_InitTimer(HSM_TIMER, Lookout_Timer);
            }
            break;
        case Lookout:
            //        ES_Timer_InitTimer(HSM_TIMER, Lookout_Timer);
            ThisEvent = RunSubHSM_Lookout(ThisEvent);
            if (ThisEvent.EventType == Beacon_found) {
                nextState = Pursue;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            if (ThisEvent.EventType == ES_TIMEOUT) {
                if (ThisEvent.EventParam == HSM_TIMER) {
                    nextState = Search;
                    ES_Timer_InitTimer(HSM_TIMER, SPIN_TIMER);
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
            }
            break;
        case Search: // in the first state, replace this with correct names
            // run sub-state machine for this state
            //NOTE: the SubState Machine runs and responds to events before anything in the this
            //state machine does
            ThisEvent = RunSubHSM_Search(ThisEvent);
            if (ThisEvent.EventType == Beacon_found) {
                nextState = Pursue;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            } else if (ThisEvent.EventType == ES_TIMEOUT) {
                if (ThisEvent.EventParam == HSM_TIMER) {
                    nextState = Lookout;
                    ES_Timer_InitTimer(HSM_TIMER, Lookout_Timer);
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
            }
            break;
        case Pursue:
            ThisEvent = RunSubHSM_Pursue(ThisEvent);
            if (ThisEvent.EventType == Wall_found) {
                nextState = Destroy;
                ES_Timer_InitTimer(HSM_TIMER, CHECK_TIMER);
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;

            }
            else if (ThisEvent.EventType == GoSeeking) {
                nextState = Lookout;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case Destroy:
            ThisEvent = RunSubHSM_Destroy(ThisEvent);
            if (ThisEvent.EventType == Ball_deposit) {
                int j;
                for (j = 0; j < 30000; j++) {
                    asm("nop");
                }
                nextState = Escape;
                ES_Timer_InitTimer(HSM_TIMER, Escape_Timer);
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case Escape:
            ThisEvent = RunSubHSM_Escape(ThisEvent);
            if (ThisEvent.EventType == ES_TIMEOUT) {
                if (ThisEvent.EventParam == HSM_TIMER) {
                    //                    InitSubHSM_Search();
                    InitSubHSM_Pursue();
                    InitSubHSM_Destroy();
                    nextState = Lookout;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
            }
            //            else {
            ////                printf("Escape \n");
            //                Robot_RightMtrSpeed(-85);
            //                Robot_LeftMtrSpeed(85);
            CannonMtrSpeed(0);
            //            }
            break;
        default: // all unhandled states fall into here
            break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunRobotHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunRobotHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
