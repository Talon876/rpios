/**
 * The mailbox is used to communicate with the graphics card.
 * It lives at address 0x2000B880
 * Address    HexOffset| Name    | Description                     | Read/Write
 * 0x2000B880   +0x00  | Read    | Receiving mail                  | R
 * 0x2000B890   +0x10  | Poll    | Receive without retrieving      | R
 * 0x2000B894   +0x14  | Sender  | Sender information              | R
 * 0x2000B898   +0x18  | Status  | Information                     | R
 * 0x2000B89C   +0x1C  | Config  | Settings                        | RW
 * 0x2000B8A0   +0x20  | Write   | Sending mail                    | W 
 *
 * Sending a Message to a mailbox:
 *    1. Wait until the status field has a 0 in the top bit
 *    2. Sender writes to Write such that the lowest 4 bits are the mailbox
 *       to write to, and the upper 28 bits are the message to write.
 *
 * Reading a message:
 *    1. Receiver waits until the status field has a 0 in the 30th bit
 *    2. Reads from read.
 *    3. Receiver confirms the message is for the correct mailbox,
 *       and tries again if not.
 */

/**
  * Returns the address of the mailbox to r0.
  */
.globl GetMailboxBase
GetMailboxBase:
    ldr r0,=0x2000B880
    mov pc,lr


/**
 * 1. Our input will be what to write (r0), and what mailbox to write to (r1).
 *    We must validate this by checking it is a real mailbox, 
 *    and that the low 4 bits of the value are 0.
 * 2. Use GetMailboxBase to retrieve the address
 * 3. Read from the Status field
 * 4. Check the top bit is 0. If not, go back to 3.
 * 5. Combine the value to write and the channel.
 * 6. Write to the Write.
 */
.globl MailboxWrite
MailboxWrite:
    // Step 1
    tst r0,#0b1111 //computes 'and r0, #0b1111' then compares with 0
    movne pc,lr //if low 4 bits of r0 weren't 0, bail out
    cmp r1,#15  //make sure we have a real mailbox
    movhi pc,lr //if mailbox is higher than 15, bail out

    // Step 2
    channel .req r1
    value .req r2
    mov value, r0 //save message in r2(value)
    push {lr}
    bl GetMailboxBase
    mailbox .req r0 //save mailbox address in r0

    // Step 3
    wait1$:
        status .req r3
        ldr status,[mailbox, #0x18]
        // Step 4
        tst status,#0x80000000 //test status against mask of 1 followed by 31 0s
        .unreq status
        bne wait1$ //if the top bit isn't a 0, try again

    // Step 5
    add value,channel

    // Step 6
    str value,[mailbox, #0x20]
    .unreq value
    .unreq mailbox
    pop {pc}


/**
 * 1. Our input will be what mailbox to read from (r0). Validate it.
 * 2. Use GetMailboxBase to retrieve the address
 * 3. Read from the status field.
 * 4. Check the 30th bit is 0, if not, go back to 3
 * 5. Read from the Read field
 * 6. Check the mailbox is the one we want, if not go back to 3
 * 7. Return the result to r0
 */
.globl MailboxRead
MailboxRead:
    // Step 1
    cmp r0, #15
    movhi pc, lr //if mailbox is higher than 15, bail out

    // Step 2
    channel .req r1
    mov channel, r0
    push {lr}
    bl GetMailboxBase
    mailbox .req r0

    // Step 3
    rightmail$:
        wait2$:
            status .req r2
            ldr status,[mailbox, #0x18]
            // Step 4
            tst status,#0x40000000 //check 30th bit of status
            .unreq status
            bne wait2$
        // Step 5
        mail .req r2
        ldr mail,[mailbox,#0] //put message in mail
        // Step 6
        inchan .req r3
        and inchan, mail, #0b1111
        teq inchan, channel
        .unreq inchan
        bne rightmail$
        .unreq mailbox
        .unreq channel

    // Step 7
    and r0,mail,#0xfffffff0
    .unreq mail
    pop {pc}
