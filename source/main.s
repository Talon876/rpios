//tells assembler to put this code in .init section, which is set as first
.section .init 

.globl _start

_start:

//put address of GPIO controller in to r0
ldr r0,=0x20200000

//OK LED is the 16th gpio pin

//enable output to 16th pin
//This is the 6th set of 3 pins in the second set of bytes
mov r1,#1  //place 1 in r1
lsl r1,#18 //get at 6th set of 3 bins (1 << (6*3=18))
str r1,[r0,#4]  //set in second set of bytes (offset 4)

//to turn the led on, set pin 16 to off (yes, off)
//turn pin off
mov r1, #1 
lsl r1, #16 //shift 1 << 16 for pin 16
str r1,[r0,#40] //store in 40 offset from controller

loop$:
b loop$


