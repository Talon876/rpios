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

        //turn OK led on if we got an error
        mov r0,#16
        mov r1,#1
        bl SetGpioFunction
        mov r0,#16
        mov r1,#0
        bl SetGpio

        //wait forever
        error$:
        b error$

    //otherwise continue
    noError$:
    fbInfoAddr .req r4
    mov fbInfoAddr, r0
    bl SetGraphicsAddress

    mov r0,#0b0000011111100000 //green
    bl SetForeColor
    ldr r0,=0
    ldr r1,=0
    bl DrawPixel

    //sleep 10s after drawing first pixel so monitor has time to wake up
    ldr r0, =10000000
    bl Sleep

    mov r0,#0b1111100000000000 //red
    bl SetForeColor
    ldr r0,=1919
    ldr r1,=0
    bl DrawPixel

    mov r0,#0b0000000000011111 //blue
    bl SetForeColor
    ldr r0,=0
    ldr r1,=1079
    bl DrawPixel

    ldr r0,=0b1101001111000011 //joeys fancy color
    bl SetForeColor
    ldr r0,=1919
    ldr r1,=1079
    bl DrawPixel

    mov r0,#0b0000011111100000 //green
    bl SetForeColor
    ldr r0,=10
    ldr r1,=10
    ldr r2,=100
    ldr r3,=10
    bl DrawLine //top

    ldr r0,=100
    ldr r1,=10
    ldr r2,=100
    ldr r3,=100
    bl DrawLine //right

    ldr r0,=10
    ldr r1,=100
    ldr r2,=10
    ldr r3,=10
    bl DrawLine //bottom

    ldr r0,=10
    ldr r1,=100
    ldr r2,=100
    ldr r3,=100
    bl DrawLine //left

    mov r0,#0b1111100000000000 //red
    bl SetForeColor
    ldr r0,=10
    ldr r1,=10
    ldr r2,=100
    ldr r3,=100
    bl DrawLine //diagonal

    ldr r0,=10
    ldr r1,=100
    ldr r2,=100
    ldr r3,=10
    bl DrawLine //reverse diagonal


    ldr r0,=0b0000011111111111 //blue
    bl SetForeColor

    render$:
        x0 .req r5
        y0 .req r6
        x1 .req r7
        y1 .req r8
        //set initial values
        mov x0,#0
        ldr y0,=1079
        ldr x1,=1919
        mov y1,y0

        innerLoop$:
            cmp y0,#0
            bls out$
            mov r0, x0
            mov r1, y0
            mov r2, x1
            mov r3, y1
            bl DrawLine
            sub y0,#1
            mov y1,y0
            b innerLoop$
        out$:

    b render$

    .unreq fbInfoAddr

