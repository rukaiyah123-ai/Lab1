.section .bss
.global ram
.lcomm ram, 256          # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.global fill_ram         # Make function visible to C program

fill_ram:
    # Storing constants 1-10 in RAM locations 0x50-0x59

    movb $1, ram+0x50
    movb $2, ram+0x51
    movb $3, ram+0x52
    movb $4, ram+0x53
    movb $5, ram+0x54
    movb $6, ram+0x55
    movb $7, ram+0x56
    movb $8, ram+0x57
    movb $9, ram+0x58
    movb $10, ram+0x59

  # Moving content of RAM location 0x50 to accumulator register %al
    movb ram+0x50, %al

    # adding 51-59 RAM values and accumulating in register %al
    addb ram+0x51, %al
    addb ram+0x52, %al
    addb ram+0x53, %al
    addb ram+0x54, %al
    addb ram+0x55, %al
    addb ram+0x56, %al
    addb ram+0x57, %al
    addb ram+0x58, %al
    addb ram+0x59, %al

    # moving accumulator %al to RAM location 5A
    movb %al, ram+0x5A


    ret                     # Return control back to C program

.section .note.GNU-stack,"",@progbits
