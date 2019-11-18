#include "BOARD.h"
#include "LED.h"
#include "pwm.h"
#include "AD.h"
#include "Stepper.h"
#include "IO_Ports.h"
#include "xc.h"
#include "stdio.h"

unsigned int pot = 0;

int main(void) {
    BOARD_Init();
    AD_Init();
    AD_AddPins(AD_PORTW3);
    LED_Init();
    LED_AddBanks(LED_BANK1 | LED_BANK2 | LED_BANK3);
    Stepper_Init();
    Stepper_SetRate(10);
    Stepper_InitSteps(1, 100);
    PWM_Init();
    PWM_AddPins(PWM_PORTZ06);
    PWM_SetFrequency(1000);
    
    LED_OffBank(LED_BANK1, 0b1111);
    LED_OffBank(LED_BANK2, 0b1111);
    LED_OffBank(LED_BANK3, 0b1111);
    
    while(1){
        
        Stepper_StartSteps();
        FullStepDrive();
        if (AD_IsNewDataReady() == TRUE) {
            pot = AD_ReadADPin(AD_PORTW3);
        }
        
        PWM_SetDutyCycle(PWM_PORTZ06, pot * 1.25);
        
        if (pot >= 61) {
            LED_OnBank(LED_BANK1, 0b0001);
        } else if (pot < 61) {
            LED_OffBank(LED_BANK1, 0b0001);
        }
        if (pot >= 122) {
            LED_OnBank(LED_BANK1, 0b0010);
        } else if (pot < 122) {
            LED_OffBank(LED_BANK1, 0b0010);
        }
        if (pot >= 183) {
            LED_OnBank(LED_BANK1, 0b0100);
        } else if (pot < 183) {
            LED_OffBank(LED_BANK1, 0b0100);
        }
        if (pot >= 244) {
            LED_OnBank(LED_BANK1, 0b1000);
        } else if (pot < 244) {
            LED_OffBank(LED_BANK1, 0b1000);
        }
        
        
        if (pot >= 305) {
            LED_OnBank(LED_BANK2, 0b0001);
        } else if (pot < 305) {
            LED_OffBank(LED_BANK2, 0b0001);
        }
        if (pot >= 366) {
            LED_OnBank(LED_BANK2, 0b0010);
        } else if (pot < 366) {
            LED_OffBank(LED_BANK2, 0b0010);
        }
        if (pot >= 427) {
            LED_OnBank(LED_BANK2, 0b0100);
        } else if (pot < 427) {
            LED_OffBank(LED_BANK2, 0b0100);
        }
        if (pot >= 488) {
            LED_OnBank(LED_BANK2, 0b1000);
        } else if (pot < 488) {
            LED_OffBank(LED_BANK2, 0b1000);
        }
        
        
        if (pot >= 549) {
            LED_OnBank(LED_BANK3, 0b0001);
        } else if (pot < 549) {
            LED_OffBank(LED_BANK3, 0b0001);
        }
        if (pot >= 610) {
            LED_OnBank(LED_BANK3, 0b0010);
        } else if (pot < 610) {
            LED_OffBank(LED_BANK3, 0b0010);
        }
        if (pot >= 671) {
            LED_OnBank(LED_BANK3, 0b0100);
        } else if (pot < 671) {
            LED_OffBank(LED_BANK3, 0b0100);
        }
        if (pot >= 732) {
            LED_OnBank(LED_BANK3, 0b1000);
        } else if (pot < 732) {
            LED_OffBank(LED_BANK3, 0b1000);
        }
    }
    
    return 0;

}