#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 4000000

unsigned char digits[10] = {
    
    0b00111111, //0
    0b00000110, //1
    0b01011011, //2
    0b01001111, //3
    0b01100110, //4
    0b01101101, //5
    0b01111101, //6
    0b00000111, //7
    0b01111111, //8
    0b01101111, //9
};

int i,j;

void main(void){
    
    TRISA = 0x00;           
    TRISB = 0x00;
    
    while(1)
    {                
        for(i = 0; i<=9; i++)
        {
           for(j = 0; j <=9 ; j++)
            {
               for(int k = 0; k <1; k++)
                   
               {
                RA0 = 1;
                RA1 = 0;
                PORTB = digits[j];
                __delay_ms(10);
                RA0 = 0;
                RA1 = 1;
                PORTB = digits[i];
                __delay_ms(10);
               }
            }  
         }        
    }
}
