//tells assembler to put this code in .init section, which is set as first
.section .init 

.globl _start

_start:
    b main

    .section .text

    main:
    mov sp,#0x8000



    //blink forever
    loop$:

        //turn led on
        pinNum .req r0
        pinFunc .req r1
        mov pinNum,#16
        mov pinFunc,#0
        bl SetGpioFunction
        .unreq pinNum
        .unreq pinFunc

        //wait a bit
        mov r2,#0x3F0000
        wait1$:
            sub r2, #1
            cmp r2, #0
            bne wait1$

        //turn led off
        pinNum .req r0
        pinFunc .req r1
        mov pinNum,#16
        mov pinFunc,#1
        bl SetGpioFunction
        .unreq pinNum
        .unreq pinFunc

        //wait a bit
        mov r2,#0x3F0000
        wait2$:
            sub r2, #1
            cmp r2, #0
            bne wait2$

    b loop$
