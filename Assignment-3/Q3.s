.data
array: .word 10, 20, 30, 40

.global _start

_start:
    LDR R0, =array       
    MOV R1, #0           

loop:
    CMP R1, #4           
    BEQ done             

    LDR R2, [R0, R1, LSL #2]  
    ADD R2, R2, #1            
    STR R2, [R0, R1, LSL #2]  

    ADD R1, R1, #1      
    B loop

halt:
    B halt