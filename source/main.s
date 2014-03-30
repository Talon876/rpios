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

    render$:
        fbAddr .req r3
        ldr fbAddr,[fbInfoAddr,#32]

        color .req r0
        y .req r1
        ldr y,=1080
        drawRow$:
            x .req r2
            ldr x,=1920
            drawPixel$:
                strh color,[fbAddr] //store low half word number in color at fbAddr
                add fbAddr,#2
                sub x,#1
                teq x,#0
                bne drawPixel$

            sub y,#1
            add color,#1
            teq y,#0
            bne drawRow$

        b render$

    .unreq fbAddr
    .unreq fbInfoAddr

