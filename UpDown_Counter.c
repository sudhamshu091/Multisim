#include "pic.h"

#define bitset(var,bitno)((var) |=   1 << (bitno))
#define bitclr(var,bitno)((var) &= ~(1 << (bitno))

// Hex Data for 7-Seg Display (inverted logic)
// = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F)
const char HexTable[16] = { 0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90, 0x88, 0x83, 0xC6, 0xA1, 0x86, 0x8E };

void init(void)
{
	bitclr(STATUS, RP0);	// Select Bank 0
	PORTA = 0x00;
	PORTB = 0x00;
	bitset(STATUS, RP0);	// Select Bank 1
	TRISA = 0xFF;			// Set Port A pins to input mode
	TRISB = 0x00;			// Set Port B pins to output mode
}

void delay(void)
{
	int mIndex = 0;
	for (mIndex = 0; mIndex < 100; mIndex++);
}


void main()
{	
	int nIndex = 0;
	
	init();
	
	while (1)	// Run continuously
	{	
		if (RA0 == 1)
			{	PORTB = HexTable[nIndex];
				if (RA1 == 1)
				{	nIndex++;	
					if (nIndex == 16) { nIndex = 0;	}
				}
				else
				{	nIndex--;
					if (nIndex == -1) { nIndex = 15; }
				}
				delay();
			}
		else
		{	PORTB = 0xFF;
		}
	}
}
