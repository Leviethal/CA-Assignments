.data
char: .byte 'd'

.global _start

_start:
    LDR R0, =char       
    LDRB R1, [R0]                 

    SUB R1, R1, #32      
    STRB R1, [R0]        

halt:
    B halt