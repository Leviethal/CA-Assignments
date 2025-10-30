.data
string: .asciz "hello"

.global _start

_start:
    LDR R0, =string       
    MOV R1, R0           
    MOV R2, R0            

find_end:
    LDRB R3, [R2]        
    CMP R3, #0           
    BEQ end_found      
    ADD R2, R2, #1       
    B find_end

end_found:
    SUB R2, R2, #1        

reverse_loop:
    CMP R1, R2            
    BHS halt        

    LDRB R3, [R1]         
    LDRB R4, [R2]        
    STRB R4, [R1]       
    STRB R3, [R2]         

    ADD R1, R1, #1      
    SUB R2, R2, #1       
    B reverse_loop        

halt:
    B halt 