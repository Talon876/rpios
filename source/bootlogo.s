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
ldr r3,=535
bl DrawLine

ldr r0,=101
ldr r1,=535
ldr r2,=101
ldr r3,=535
bl DrawLine

ldr r0,=101
ldr r1,=535
ldr r2,=202
ldr r3,=556
bl DrawLine

ldr r0,=202
ldr r1,=556
ldr r2,=303
ldr r3,=551
bl DrawLine

ldr r0,=303
ldr r1,=551
ldr r2,=404
ldr r3,=500
bl DrawLine

ldr r0,=404
ldr r1,=500
ldr r2,=505
ldr r3,=565
bl DrawLine

ldr r0,=505
ldr r1,=565
ldr r2,=606
ldr r3,=564
bl DrawLine

ldr r0,=606
ldr r1,=564
ldr r2,=707
ldr r3,=549
bl DrawLine

ldr r0,=707
ldr r1,=549
ldr r2,=808
ldr r3,=536
bl DrawLine

ldr r0,=808
ldr r1,=536
ldr r2,=909
ldr r3,=532
bl DrawLine

ldr r0,=909
ldr r1,=532
ldr r2,=1010
ldr r3,=501
bl DrawLine

ldr r0,=1010
ldr r1,=501
ldr r2,=1111
ldr r3,=567
bl DrawLine

ldr r0,=1111
ldr r1,=567
ldr r2,=1212
ldr r3,=560
bl DrawLine

ldr r0,=1212
ldr r1,=560
ldr r2,=1313
ldr r3,=579
bl DrawLine

ldr r0,=1313
ldr r1,=579
ldr r2,=1414
ldr r3,=568
bl DrawLine

ldr r0,=1414
ldr r1,=568
ldr r2,=1515
ldr r3,=541
bl DrawLine

ldr r0,=1515
ldr r1,=541
ldr r2,=1616
ldr r3,=510
bl DrawLine

ldr r0,=1616
ldr r1,=510
ldr r2,=1717
ldr r3,=589
bl DrawLine

ldr r0,=1717
ldr r1,=589
ldr r2,=1818
ldr r3,=523
bl DrawLine


ldr r0,=1000000
bl Sleep

pop {pc}
