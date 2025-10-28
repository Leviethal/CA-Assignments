.text
.global _start
_start:

    LDR     R3, =0x12345678

    LDR     R12, =out_base
    STR     R3, [R12, #0]

    LDR     R4, =literal_label
    LDR     R5, [R4]
    STR     R5, [R12, #4]

    MOVW    R6, #0x5678
    MOVT    R6, #0x1234
    STR     R6, [R12, #8]


halt:
    B halt


    .data
out_base:
    .space 64

    .align 4
literal_label:
    .word 0x12345678
