.data
my_array:
    .word   10, 20, 30, 40, 50

.text
.global _start

_start:
    LDR     R0, =my_array
    MOV     R1, #5
    MOV     R3, #0

update_loop:
    CMP     R1, #0
    BEQ     done
    LDR     R2, [R0, R3]
    ADD     R2, R2, #1
    STR     R2, [R0, R3]
    ADD     R3, R3, #4
    SUB     R1, R1, #1
    B       update_loop

done:

halt:
    B       halt
