//tells assembler to put this code in .init section, which is set as first
.section .init 

.globl _start

_start:

ldr r0,=0x20200000 //loads physical address of GPIO in to r0

mov r1,#1 //puts 1 in to r1
lsl r1,#18 //shifts r1 left by 18
str r1,[r0,#4] //store r0 offset 4 in to r1


mov r1, #1
lsl r1, #16

//blink forever
loop$:

    str r1,[r0,#40] //turn pin 16 off, turning the led on

    //wait a bit
    mov r2,#0x3F0000
    wait1$:
        sub r2, #1
        cmp r2, #0
        bne wait1$

    str r1,[r0,#28] //turn pin 16 on, turning the led off.

    //wait a bit
    mov r2,#0x3F0000
    wait1$:
        sub r2, #1
        cmp r2, #0
        bne wait1$

b loop$
