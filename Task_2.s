.section .bss
.global ram
.lcomm ram, 256          # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.global fill_ram         # Make function visible to C program

fill_ram:
    # Store 0xFF into register %cl 
    movb $0xFF, %cl 

    # Store register %cl into RAM locations 50h - 58h using direct addressing
    movb %cl, ram+0x50
    movb %cl, ram+0x51
    movb %cl, ram+0x52
    movb %cl, ram+0x53
    movb %cl, ram+0x54
    movb %cl, ram+0x55
    movb %cl, ram+0x56
    movb %cl, ram+0x57
    movb %cl, ram+0x58

    ret                     # Return control back to C program

.section .note.GNU-stack,"",@progbits
