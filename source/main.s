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

    teq r0,#0 //check for error
    bne noError$
    b FrameBufferInitError //rapidly blink led if error
    noError$: //otherwise continue
    
    bl DisplayBootLogo

    //turn OK led on if we get past the boot logo
    mov r0,#16
    mov r1,#1
    bl SetGpioFunction
    mov r0,#16
    mov r1,#0
    bl SetGpio
    //end led turn on    

    ldr r0,=5000000
    bl Sleep

    
    mov r0,#0b1111100000000000 //red
    bl ClearScreen
    mov r0,#0b0000011111100000 //green
    bl ClearScreen
    mov r0,#0b0000000000011111 //blue
    bl ClearScreen
    mov r0,#0b0000000000000000 //black
    bl ClearScreen

    mov r0,#0b0000011111100000 //green
    bl SetForeColor

    mov r4,#0
    loop$:
        ldr r0,=format
        mov r1,#formatEnd-format
        ldr r2,=formatEnd
        lsr r3,r4,#4

        cmp r3,#127
        bhi Halt

        push {r3}
        push {r3}
        push {r3}
        push {r3}
        bl FormatString
        add sp,#16

        mov r1,r0
        ldr r0,=formatEnd
        mov r2,#0
        mov r3,r4

        cmp r3,#1072-16
        subhi r3,#1072
        addhi r2,#288

        cmp r3,#1072-16
        subhi r3,#1072
        addhi r2,#288

        cmp r3,#1072-16
        subhi r3,#1072
        addhi r2,#288

        bl DrawString

        add r4,#16

    b loop$
    
    b Halt

.section .data
format:
.ascii "%d = 0b%b = 0x%x = 0%o = '%c'"
formatEnd:

