.text
.global _start

_start:
    @ --- Isolate the lower 4 bits ---

    @ Load a sample 32-bit hexadecimal value into register R0.
    LDR     R0, =0xABCDEF75

    @ Use the AND instruction with a mask to isolate the desired bits.
    @ The mask #0xF is equivalent to binary #0b1111.
    @ The AND operation will only keep the bits that are '1' in both the
    @ original value (R0) and the mask. This effectively clears all bits
    @ except for the lower 4.
    AND     R1, R0, #0xF     @ R1 = R0 & 0xF

    @ After this instruction, R1 will hold the value 0x5, which is the
    @ value of the lower 4 bits of R0.

halt:
    @ Infinite loop to stop the processor for inspection.
    B       halt