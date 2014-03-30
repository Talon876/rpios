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
.int 1920 // #0 physical width
.int 1080  // #4 physical height

/**
 * The virtual width and height of the screen in pixels. This will be the real
 * resolution and the gpu will scale it to the physical resolution.
 */
.int 1920 // #8 virtual width
.int 1080  // #12 virtual height

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





