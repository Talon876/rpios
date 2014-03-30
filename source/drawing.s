.section .data
.align 1
foreColor:
.hword 0xFFFF

.align 2
graphicsAddress:
.int 0

.align 4
font:
.incbin "monospace.bin"

.section .text

/**
 * Sets the 16 bit high-color to draw with.
 * ooooo oooooo ooooo
 * red   green  blue
 * 0-31  0-63   0-31
 */
.globl SetForeColor
SetForeColor:
    cmp r0,#0x10000
    movhs pc,lr
    ldr r1,=foreColor
    strh r0,[r1]
    mov pc,lr

/**
 * Sets where in memory to draw to.
 */
.globl SetGraphicsAddress
SetGraphicsAddress:
    ldr r1,=graphicsAddress
    str r0,[r1]
    mov pc,lr


/**
 * Sets a pixel at a specified x (r0) and y (r1) location to the current color.
 * Make sure you have set the graphics address and color.
 * 
 * 1. Load in the graphicsAddress
 * 2. Check the x/y are less than the width/height.
 * 3. Compute address of the pixel to write.
 *    frameBufferAddress + (x + y * width) * pixelSize)
 * 4. Load in the foreColor
 * 5. Store it at the address
 */
.globl DrawPixel
DrawPixel:
    // Step 1
    px .req r0
    py .req r1
    addr .req r2
    ldr addr,=graphicsAddress //load graphicsAddress in to addr
    ldr addr,[addr] //load value AT addr in to addr

    // Step 2
    height .req r3
    ldr height,[addr,#4]
    sub height,#1
    cmp py,height
    movhi pc,lr
    .unreq height
    width .req r3
    ldr width,[addr,#0]
    sub width,#1
    cmp px,width
    movhi pc,lr

    // Step 3
    ldr addr,[addr,#32] //get pointer to frameBuffer
    add width,#1
    mla px, py, width, px //px
    .unreq width
    .unreq py
    add addr, px, lsl #1
    .unreq px

    // Step 4
    fore .req r3
    ldr fore,=foreColor
    ldrh fore,[fore]

    // Step 5
    strh fore,[addr]
    .unreq fore
    .unreq addr
    mov pc,lr


/**
 * Use Bresenham's Algorithm for drawing a line.
 * Input: x0, y0, x1, y1 (r0-r3).
 * Use SetForeColor and SetGraphicsAddress to change the color and destination.
 */
.globl DrawLine
DrawLine:
    push {r4,r5,r6,r7,r8,r9,r10,r11,r12,lr}
    x0 .req r9
    x1 .req r10
    y0 .req r11
    y1 .req r12

    mov x0, r0
    mov y0, r1
    mov x1, r2
    mov y1, r3

    dx .req r4
    dyn .req r5
    sx .req r6
    sy .req r7
    err .req r8

    cmp x0,x1
    subgt dx,x0,x1
    movgt sx,#-1
    suble dx,x1,x0
    movle sx,#1

    cmp y0,y1
    subgt dyn,y1,y0
    movgt sy,#-1
    suble dyn,y0,y1
    movle sy,#1

    add err,dx,dyn
    add x1,sx
    add y1,sy

    pixelLoop$:
        teq x0,x1
        teqne y0,y1
        popeq {r4,r5,r6,r7,r8,r9,r10,r11,r12,pc}

        mov r0,x0
        mov r1,y0
        bl DrawPixel

        cmp dyn, err, lsl #1
        addle err,dyn
        addle x0,sx

        cmp dx, err, lsl #1
        addge err,dx
        addge y0,sy

        //just for fun
        ldr r0, =150
        bl Sleep
        b pixelLoop$
    .unreq x0
    .unreq x1
    .unreq y0
    .unreq y1
    .unreq dx
    .unreq dyn
    .unreq sx
    .unreq sy
    .unreq err


/**
 * Draws a Character at a specified location.
 * r0 is character, r1 is x, r2 is y
 * Return r0 = 8, r1 = 16 (width and height of the character)
 */
.globl DrawCharacter
DrawCharacter:
    cmp r0,#127
    movhi r0,#0
    movhi r1,#0
    movhi pc,lr

    push {r4, r5, r6, r7, r8, lr}
    x .req r4
    y .req r5
    charAddr .req r6
    mov x,r1
    mov y,r2
    ldr charAddr,=font
    add charAddr, r0, lsl #4 //shift character by 4 and add to charAddr

    lineLoop$:
        bits .req r7
        bit .req r8
        ldrb bits,[charAddr]
        mov bit,#8

        charPixelLoop$:
            subs bit,#1
            blt charPixelLoopEnd$
            lsl bits, #1
            tst bits,#0x100
            beq charPixelLoop$

            add r0,x,bit
            mov r1,y
            bl DrawPixel

            teq bit,#0
            bne charPixelLoop$
        charPixelLoopEnd$:
        .unreq bit
        .unreq bits
        add y,#1
        add charAddr,#1
        tst charAddr,#0b1111
        bne lineLoop$
    .unreq x
    .unreq y
    .unreq charAddr

    width .req r0
    height .req r1
    mov width,#8
    mov height,#16

    pop {r4,r5,r6,r7,r8,pc}
    .unreq width
    .unreq height

