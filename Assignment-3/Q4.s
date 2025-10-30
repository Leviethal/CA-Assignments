.global _start
_start:
    MOV R0, #0b10110110   
    MOV R1, #0            

loop:
    CMP R0, #0            
    BEQ done

    AND R2, R0, #1        
    ADD R1, R1, R2        

    LSR R0, R0, #1        
    B loop

halt:
    B halt
