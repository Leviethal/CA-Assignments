.data
array: .word 10, 45, 7, 89, 23

.global _start

_start:
    LDR R0, =array          
    MOV R1, #5           
    LDR R2, [R0]         
    MOV R3, #1          

loop:
    CMP R3, R1              
    BEQ done                

    LDR R4, [R0, R3, LSL #2] 
    CMP R4, R2              
    BLE skip                
    MOV R2, R4             

skip:
    ADD R3, R3, #1         
    B loop

halt:
    B halt