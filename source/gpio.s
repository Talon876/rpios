//GPIO Controller address: 0x20200000
// offsets:
// 00-24: FUNCTION SELECT
// 28-36: Turn on pin
// 40-48: Turn off pin
// 52-60: pin input
//                100 0000 0000 0000 0000 = 1 << 18
//24 bits : 0000 0000 0000 0000 0000 0000
//             |    |    |    |    |    |
//            20   16   12    8    4    0               
// First 4 BYTES are first 10 gpio pins
// Second 4 BYTES are next 10 gpio pins
// Total of 54 gpio pins
// need 6 sets of 4 bytes
// 24 bytes in total
// 
// byte set 1+0    29  26  23  20  17  14  11  8   5   2
//                 |   |   |   |   |   |   |   |   |   |                                                  
// Bytes  0- 4: 00 000 000 000 000 000 000 000 000 000 000 - pins 0-9
// Pins            9   8   7   6   5   4   3   2   1   0
// byte set 2+4                                                               
// Bytes  5- 8: 00 000 000 000 000 000 000 000 000 000 000 - pins 10-19
// Pins            19  18  17  16  15  14  13  12  11  10              
// byte set 3+8                                                               
// Bytes  9-12: 00 000 000 000 000 000 000 000 000 000 000 - pins 20-29
// Pins            29  28  27  26  25  24  23  22  21  20          
// byte set 4+12                                                               
// Bytes 13-16: 00 000 000 000 000 000 000 000 000 000 000 - pins 30-39
// Pins            39  38  37  36  35  34  33  32  31  30            
// byte set 5+16                                                               
// Bytes 17-20: 00 000 000 000 000 000 000 000 000 000 000 - pins 40-49
// Pins            49  48  47  46  45  44  43  42  41  40  
// byte set 6+20                                                               
// Bytes 21-24: 00 000 000 000 000 000 000 000 000 000 000 - pins 50-53
// Pins                                    53  52  51  50  

/**
 * A function which returns (sets r0) to the address of the GPIO controller.
 * It takes no arguments.
 */
.globl GetGpioAddress
GetGpioAddress:
    ldr r0,=0x20200000

    //copy value from lr to pc; acts as a return
    //by setting the program acounter to the link register
    mov pc,lr

/**
 * argument r0 is the pin number, must be in the range [0,54]
 * argument r1 is the pin function, must be in the range [0,7]
 * exits with: 
 *  r0 as calculated gpio controller address
 *  r1 as pin function shifted over to the correct pin
 *  Note that r2 is modified in this function
 *  Further Work:
 *   While this function sets the value for the pin correctly, it sets all the
 *   other values in the set of 10 to 0. Can be fixed with and, orr, not.
 */
.globl SetGpioFunction
SetGpioFunction:
    cmp r0, #53 //make sure r0 is <= 53
    cmpls r1, #7 //make sure r1 is <= 7 (only runs if r0 was <= 53)
    movhi pc,lr //returns from function without doing anything else if value was out of bounds
    //if we get past the movhi then we know both values are in range
    push {lr} //save our lr so we know where to return to later
    mov r2,r0 //save r0 in r2 temporarily since we know r2 isn't modified in the function
    bl GetGpioAddress //jump and link to the GetGpioAddress function
    //now that we've returned, r0 should hold the gpio address
    //r0: gpioAddress, r1: pinFunction, r2: the pinNumber

    //find which set of 10 the pin belongs to
    functionLoop$:
        cmp r2,#9 //compare pinNumber to 9
        subhi r2,#10 //if pinNumber > 9, subtract 10 from pin number
        addhi r0,#4 //if pinNumber > 9, add 4 to gpioAddress
        bhi functionLoop$ //if pinNumber > 9, loop again

    //r0:gpioAddress should now be set to the correct offset for the specified pin
        //essentially it's Address + 4*(pinNumber/10)
    //r1: still just the pin function
    //r2: a number 0-9 which is the remainder of dividing the pinNumber by 10

    //add r2 to the result of shifting r2 by 1, r2 = r2 + r2*2 === r2 = r2 + r2 << 1
    //effectively is r2 = r2 * 3
    add r2, r2, lsl #1
    //move the pin function over to the correct slot for the pin
    lsl r1, r2 
    //save this calculated value in to the calcualted gpioaddress in r0
    //there is no offset because we calculated what r0 should be with 0 offset
    str r1,[r0] 
    //we pushed lr on to the stack earlier, pop it in to the pc to return
    pop {pc} 

/**
 * r0: gpio pin
 * r1: pin value, 0 for off, not 0 for on
 */
.globl SetGpio
SetGpio:
    pinNum .req r0 //alias r0 to pinNum
    pinVal .req r1 //alias r1 to pinVal
    cmp pinNum,#53 //make sure pinNum is <= 53
    movhi pc,lr //bail out if pinNum is >53
    push {lr} //save lr so we can call a function

    //move pinNum to r0 and update aliases
    mov r2,pinNum //save pinNum in r2
    .unreq pinNum //remove alias to r0
    pinNum .req r2 //alias pinNum 
    bl GetGpioAddress
    gpioAddr .req r0

    /* GPIO controller has two banks of 4 bytes each for turning pins on or off.
     * First set controls pins [0,31], second set controls pins [32,53].
     * Finding which set requires dividing pinNum by 32 (or shift right by 5).
     */
    pinBank .req r3
    lsr pinBank,pinNum,#5 //shift pinNum right by 5, save in pinBank
    lsl pinBank,#2 //multiply by 4 (shift left 2)
    add gpioAddr,pinBank //add offset to gpioAddr
    .unreq pinBank
    //now gpioAddr will be either gpioAddr or gpioAddr+4

    //makes sure the pin number correctly corresponds with the pinBank
    and pinNum,#31
    setBit .req r3
    mov setBit,#1
    lsl setBit,pinNum
    .unreq pinNum

    teq pinVal, #0
    .unreq pinVal
    streq setBit,[gpioAddr, #40] //turn off if pinVal == 0
    strne setBit,[gpioAddr, #28] //turn on if pinVal != 0
    .unreq setBit
    .unreq gpioAddr

    pop {pc}
