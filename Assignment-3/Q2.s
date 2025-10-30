.data
array: .word 10, 20, 30, 40, 50

.global _start
_start:
    LDR R0, =array
    MOV R1, #5
    MOV R2, #0

push_loop:
    CMP R2, R1
    BEQ pop_loop
    LDR R3, [R0, R2, LSL #2]
    PUSH {R3}
    ADD R2, R2, #1
    B push_loop

pop_loop:
    CMP R1, #0
    BEQ halt
    POP {R4}
    SUB R1, R1, #1
    STR R4, [R0, R1, LSL #2]
    B pop_loop

halt:
    B halt