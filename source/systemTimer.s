/**
 * The system timer counts at 1MHz and is at 0x20003000
 * The counter itself is offset by 4 and is 8 bytes and read only.
 *    It starts at 0 and just counts up from there forever.
 */

 /**
  * Returns the address of the system timer to r0.
  */
.globl GetSystemTimerAddress
GetSystemTimerAddress:
    ldr r0,=0x20003000
    mov pc,lr

/**
 * Gets the current system time and puts it in r0 and r1 where r1 is the 32 msb.
 * This ends up making r0 have the right half and r1 having the left half.
 */
.globl GetCurrentTime
GetCurrentTime:
    push {lr}
    bl GetSystemTimerAddress
    //load 8 bytes of memory in to 2 registers
    ldrd r0,r1,[r0,#4] 
    pop {pc}


/**
 * A sleep function which sleeps for r0 microseconds.
 */
.globl Sleep
Sleep:
    delay .req r2
    mov delay, r0 //save delay in r2

    push {lr}
    bl GetCurrentTime
    start .req r3
    mov start, r0 //move 32 msb of time to start (lower 4 bytes)

    loop$:
        bl GetCurrentTime
        elapsed .req r1
        sub elapsed, r0, start //elapsed = r0(currentTime) - start
        cmp elapsed, delay
        .unreq elapsed
        bls loop$ //if elapsed < delay, do the loop again

    .unreq delay
    .unreq start
    pop {pc}

