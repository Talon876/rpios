/**
 * The framebuffer is a message that is sent to the graphics processor.
 * It will fill out some information and return it to us through the mailbox.
 */

.section data
.align 4
.globl FrameBufferInfo

FrameBufferInfo:

/**
 * The physical width and height of the screen in pixels.
 */
.int 1024 // #0 physical width
.int 768  // #4 physical height

/**
 * The virtual width and height of the screen in pixels. This will be the real
 * resolution and the gpu will scale it to the physical resolution.
 */
.int 1024 // #8 virtual width
.int 768  // #12 virtual height

/**
 * Filled out by GPU.
 * It's how many bytes will be on reach row of the frame buffer.
 */
.int 0    // #16 gpu pitch 

/**
 * How many bits to allocate for each pixel.
 * 16 is high color mode, 24 is true color, 32 is rgba32.
 */
.int 16   // #20 bit depth

/**
 * The number of pixels to skip in the top left corner of the screen.
 */
.int 0    // #24 X
.int 0    // #28 Y

/**
 * Filled out by GPU.
 * Pointer to the frame buffer.
 */
.int 0    // #32 gpu - pointer to framebuffer

/**
 * Filled out by GPU.
 * Size of the frame buffer in bytes.
 */
.int 0    // #36 gpu - framebuffer size in bytes.

.section text

/**
 * Inputs: r0 = width, r1 = height, r2 = bitDepth
 * 1. Validate Inputs
 * 2. Write the inputs into the frame buffer.
 * 3. Send address of the frameBuffer + 0x40000000 to the mailbox.
 * 4. Receive the reply from the mailbox
 * 5. If the reply is not 0, it failed, return 0 to indicate failure.
 * 6. Return a pointer to the frame buffer info.
 */
.globl InitFrameBuffer
InitFrameBuffer:
    // Step 1
    width .req r0
    height .req r1
    bitDepth .req r2
    cmp width,#4096
    cmpls height,#4096
    cmpls bitDepth,#32
    result .req r0
    movhi result,#0
    movhi pc,lr

    // Step 2
    fbInfoAddr .req r4
    push {r4, lr}
    ldr fbInfoAddr,=FrameBufferInfo
    str width,[r4,#0]
    str height,[r4,#4]
    str width,[r4,#8]
    str height,[r4,#12]
    str bitDepth,[r4,#20]
    .unreq width
    .unreq height
    .unreq bitDepth

    // Step 3
    mov r0, fbInfoAddr
    add r0,#0x40000000
    mov r1,#1
    bl MailboxWrite

    // Step 4
    mov r0, #1
    bl MailboxRead

    // Step 5 
    teq result,#0
    movne result,#0
    popne {r4,pc} //return 0 if the gpu is angry

    mov result,fbInfoAddr
    pop {r4,pc}
    .unreq result
    .unreq fbInfoAddr

