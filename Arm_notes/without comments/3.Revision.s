.text
.global _start

_start:
    LDR R0, =num_a
    LDR R1, [R0]

    LDR R0, =num_b
    LDR R2, [R0]

    ADD R3, R1, R2

    LDR R0, =result
    STR R3, [R0]

stop:
    B stop

.data
num_a:      .word 10
num_b:      .word 15
result:     .space 4
my_score:   .word 100
player_health:   .hword 30000
player_initial: .byte 'J'
welcome_message: .asciz "Hello ARM!"
