/**
 * Generate random numbers using the quadratic congruence generator.
 */

/**
 * Input r0 as last value it generated
 * Outputs the next number
 */
.globl Random
Random:
    xnm .req r0
    a .req r1

    mov a,#0xef00 //randomly chosen even number
    mul a,xnm
    mul a,xnm
    add a,xnm
    .unreq xnm
    add r0,a,#73 //randomly chosen odd number

    .unreq a
    mov pc,lr
