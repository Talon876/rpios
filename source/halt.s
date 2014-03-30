.globl Halt
Halt:
    //blink 3 times fast, then once long. repeat forever
    mov r0,#16
    mov r1,#1
    bl SetGpioFunction
    mov r0,#16
    mov r1,#0
    bl SetGpio
    ldr r0,=150000
    bl Sleep
    mov r0,#16
    mov r1,#1
    bl SetGpio
    ldr r0,=150000
    bl Sleep
    mov r0,#16
    mov r1,#0
    bl SetGpio
    ldr r0,=150000
    bl Sleep
    mov r0,#16
    mov r1,#1
    bl SetGpio
    ldr r0,=150000
    bl Sleep
    mov r0,#16
    mov r1,#0
    bl SetGpio
    ldr r0,=150000
    bl Sleep
    mov r0,#16
    mov r1,#1
    bl SetGpio
    ldr r0,=150000
    bl Sleep
    mov r0,#16
    mov r1,#0
    bl SetGpio
    ldr r0,=1500000
    bl Sleep
    mov r0,#16
    mov r1,#1
    bl SetGpioFunction
    mov r0,#16
    mov r1,#1
    bl SetGpio
    ldr r0,=1000000
    bl Sleep
    b Halt

.globl FrameBufferInitError
FrameBufferInitError:
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
