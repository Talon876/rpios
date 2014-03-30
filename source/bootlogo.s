/**
 * Draws a boot logo then clears the screen.
 * Takes the FrameBufferInfo address as the first argument (r0)
 * Returns nothing.
 */
.globl DisplayBootLogo
DisplayBootLogo:
    push {lr}
    fbInfoAddr .req r4
    mov fbInfoAddr, r0
    bl SetGraphicsAddress
    .unreq fbInfoAddr


    mov r0,#0b0000011111100000 //green
    bl SetForeColor
    ldr r0,=960
    ldr r1,=540
    bl DrawPixel

    //everything below is generated
ldr r0,=7000000
bl Sleep

mov r0,#0b0000011111100000
bl SetForeColor

mov r0,#0
mov r1,#0
ldr r2,=1919
ldr r3,=1079
bl DrawLine

mov r0,#0b0000000000011111
bl SetForeColor

ldr r0,=1919
mov r1,#0
mov r2,#0
ldr r3,=1079
bl DrawLine

ldr r0,=0b1111100000000000
bl SetForeColor

mov r0,#0
ldr r1,=540
ldr r2,=101
ldr r3,=543
bl DrawLine

ldr r0,=101
ldr r1,=543
ldr r2,=101
ldr r3,=543
bl DrawLine

ldr r0,=101
ldr r1,=543
ldr r2,=202
ldr r3,=545
bl DrawLine

ldr r0,=202
ldr r1,=545
ldr r2,=303
ldr r3,=574
bl DrawLine

ldr r0,=303
ldr r1,=574
ldr r2,=404
ldr r3,=510
bl DrawLine

ldr r0,=404
ldr r1,=510
ldr r2,=505
ldr r3,=535
bl DrawLine

ldr r0,=505
ldr r1,=535
ldr r2,=606
ldr r3,=580
bl DrawLine

ldr r0,=606
ldr r1,=580
ldr r2,=707
ldr r3,=545
bl DrawLine

ldr r0,=707
ldr r1,=545
ldr r2,=808
ldr r3,=559
bl DrawLine

ldr r0,=808
ldr r1,=559
ldr r2,=909
ldr r3,=526
bl DrawLine

ldr r0,=909
ldr r1,=526
ldr r2,=1010
ldr r3,=513
bl DrawLine

ldr r0,=1010
ldr r1,=513
ldr r2,=1111
ldr r3,=553
bl DrawLine

ldr r0,=1111
ldr r1,=553
ldr r2,=1212
ldr r3,=505
bl DrawLine

ldr r0,=1212
ldr r1,=505
ldr r2,=1313
ldr r3,=514
bl DrawLine

ldr r0,=1313
ldr r1,=514
ldr r2,=1414
ldr r3,=548
bl DrawLine

ldr r0,=1414
ldr r1,=548
ldr r2,=1515
ldr r3,=536
bl DrawLine

ldr r0,=1515
ldr r1,=536
ldr r2,=1616
ldr r3,=502
bl DrawLine

ldr r0,=1616
ldr r1,=502
ldr r2,=1717
ldr r3,=520
bl DrawLine

ldr r0,=1717
ldr r1,=520
ldr r2,=1818
ldr r3,=580
bl DrawLine

ldr r0,=1818
ldr r1,=580
ldr r2,=1919
ldr r3,=571
bl DrawLine


ldr r0,=0b1111100000000000
bl SetForeColor

ldr r0,=85
ldr r1,=890
ldr r2,=585
bl DrawCharacter
ldr r0,=100000
bl Sleep

mov r0,#0b0000011111100000
bl SetForeColor

ldr r0,=87
ldr r1,=906
ldr r2,=585
bl DrawCharacter
ldr r0,=79
ldr r1,=922
ldr r2,=585
bl DrawCharacter
ldr r0,=84
ldr r1,=938
ldr r2,=585
bl DrawCharacter
ldr r0,=100000
bl Sleep

mov r0,#0b0000000000011111
bl SetForeColor

ldr r0,=109
ldr r1,=954
ldr r2,=585
bl DrawCharacter
ldr r0,=56
ldr r1,=970
ldr r2,=585
bl DrawCharacter
ldr r0,=750000
bl Sleep

ldr r0,=0b1111111111111111
bl SetForeColor

ldr r0,=63
ldr r1,=986
ldr r2,=585
bl DrawCharacter
ldr r0,=500000
bl Sleep

pop {pc}
