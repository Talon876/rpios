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

loop$:
    //turn on OK led by setting pin to off (yes, off)
    pinNum .req r0
    pinVal .req r1
    mov pinNum, #16
    mov pinVal, #0 //0 = off, not 0 = on
    bl SetGpio
    .unreq pinNum
    .unreq pinVal

    //wait 0.13s
    ldr r0, =130000
    bl Sleep

    //turn off OK led 
    pinNum .req r0
    pinVal .req r1
    mov pinNum, #16
    mov pinVal, #1
    bl SetGpio
    .unreq pinNum
    .unreq pinVal

    //wait 0.15s
    ldr r0, =150000
    bl Sleep

    str r1,[r0,#40] //store in 40 offset from controller (turn off)

    b loop$

