.text
.global _start

_start:
    @ --- Step 1: Load the ADDRESS of our first variable (num_a) into R0 ---
    LDR R0, =num_a

    @ --- Step 2: Load the VALUE from that address into R1 ---
    @ The square brackets mean "go to the address in R0 and get the data"
    LDR R1, [R0]        @ R1 now holds 10

    @ --- Step 3: Do the same for our second variable (num_b) ---
    LDR R0, =num_b      @ R0 now holds the ADDRESS of num_b
    LDR R2, [R0]        @ R2 now holds 15

    @ --- Step 4: Perform the operation using registers ---
    ADD R3, R1, R2      @ R3 = R1 + R2  (so, R3 = 10 + 15 = 25)

    @ --- Step 5: Store the result back into our 'result' variable ---
    LDR R0, =result     @ R0 now holds the ADDRESS of result
    STR R3, [R0]        @ Store the value from R3 into the memory at the address in R0

stop:
    B stop


@ =================================================================
@ Data Section: Here is where we define our "variables"
@ =================================================================
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