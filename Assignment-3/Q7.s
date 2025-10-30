.data
string: .asciz "hello"   

.global _start

_start:
    LDR R0, =string      
    MOV R1, #0          

loop:
    LDRB R2, [R0, R1]
    CMP R2, #0           
    BEQ done            
    ADD R1, R1, #1    
    B loop               

halt:
    B halt               