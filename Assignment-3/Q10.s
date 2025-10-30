.data
src: .word 10, 20, 30, 40, 50   @ source data (5 words)
dst: .space 20

.global _start

_start:
    LDR  R0, =src        
    LDR  R1, =dst       
    MOV  R2, #5          

copy_loop:
    CMP  R2, #0          
    BEQ  halt            

    LDR  R3, [R0], #4   
    STR  R3, [R1], #4    

    SUB  R2, R2, #1     
    B    copy_loop      

halt:
    B halt