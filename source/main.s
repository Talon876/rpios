//tells assembler to put this code in .init section, which is set as first
.section .init 

.globl _start

_start:

b main

.section .text
main:
    mov sp,#0x8000 //setup stack http://i.imgur.com/Ipqusb3.png

    ldr r0,=1920
    ldr r1,=1080
    mov r2,#16
    bl InitFrameBuffer

    teq r0,#0
        bne noError$
        //wait forever and blink OK led rapidly
        error$:
            //turn on led
            mov r0,#16
            mov r1,#1
            bl SetGpioFunction
            mov r0,#16
            mov r1,#0
            bl SetGpio
            ldr r0,=100000
            bl Sleep
            //turn off led
            mov r0,#16
            mov r1,#1
            bl SetGpioFunction
            mov r0,#16
            mov r1,#1
            bl SetGpio
            ldr r0,=100000
            bl Sleep
        b error$

    //otherwise continue
    noError$:
    
    //r0 still has fbInfoAddr so start boot logo
    bl DisplayBootLogo

    //turn OK led on if we get past the boot logo
    mov r0,#16
    mov r1,#1
    bl SetGpioFunction
    mov r0,#16
    mov r1,#0
    bl SetGpio
    //end led turn on

    //sleep 3s before drawing starts
    ldr r0, =3000000
    bl Sleep

    random .req r4
    color .req r5
    lastX .req r6
    lastY .req r7
    x .req r8
    y .req r9
    mov random,#12
    ldr lastX, =960
    ldr lastY, =540
    mov color,#0b0000011101000000 //white
    render$:
        mov r0,random
        bl Random
        mov x,r0
        bl Random
        mov y,r0
        mov random,r0

        mov r0,color
        add color,#1
        lsl color,#16
        lsr color,#16
        bl SetForeColor

        mov r0,lastX
        mov r1,lastY
        lsr r2,x,#21
        lsr r3,y,#21

        ldr r10,=1079
        cmp r3,r10
        bhs render$
        ldr r10,=1919
        cmp r2,r10
        bhs render$

        mov lastX,r2
        mov lastY,r3

        bl DrawLine

    b render$

    .unreq x
    .unreq y
    .unreq random
    .unreq color
    .unreq lastX
    .unreq lastY
