
.global _start
_start:
    MOV     R1, #0b101010
    MOV     R2, #0x2A
halt:
    B halt