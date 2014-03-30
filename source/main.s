//tells assembler to put this code in .init section, which is set as first
.section .init 

.globl _start

_start:

b main

.section .text
main:
    mov sp,#0x8000 //setup stack http://i.imgur.com/Ipqusb3.png


