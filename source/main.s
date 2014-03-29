//tells assembler to put this code in .init section, which is set as first
.section .init 

.globl _start

_start:

b main

.section .text
main:
    mov sp,#0x8000 //setup stack http://i.imgur.com/Ipqusb3.png

//prepare pin 16
pinNum .req r0
pinFunc .req r1
mov pinNum, #16 //pin 16 for OK led
mov pinFunc, #1 //function 001
bl SetGpioFunction
.unreq pinNum
.unreq pinFunc

//load pattern in to r4 and set r5 to 0
ptrn .req r4
ldr ptrn, =pattern
ldr ptrn,[ptrn]
seq .req r5
mov seq, #0

loop$:
    
    //set r1 to pattern[seq]
    mov r1, #1
    lsl r1, seq
    and r1, ptrn

    //turn OK led  if we're on a 1, otherwise turn it off
    mov r0, #16 //pin number
    //pin value is set from pattern
    bl SetGpio

    add seq, #1 //add one to the sequence
    cmp seq, #32 //see if we're higher than 32
    movhi seq, #0 //if we are higher than 32, set to 0

    //wait 0.25s
    ldr r0, =250000
    bl Sleep

    b loop$

.section .data

.align 2 //.align num ensures next line is a multiple of 2^num, in this case: 4

//used to represent morse code
//a 0 is led off, a 1 is led on, it is read from right to left
pattern:
.int 0b11111111101010100010001000101010

