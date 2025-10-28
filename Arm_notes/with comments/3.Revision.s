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
result:     .space 4      @ Reserve 4 bytes for the result, initialized to 0

@ A 32-bit integer variable named 'my_score', initialized to 100
my_score:   .word 100

@ A 16-bit variable for player health, initialized to 30000
player_health:   .hword 30000

@ A single character variable named 'player_initial', initialized to 'J'
player_initial: .byte 'J'

@ A string variable
welcome_message: .asciz "Hello ARM!"