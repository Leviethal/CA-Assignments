.data
char: .byte 'o'

.global _start

_start:
    LDR R0, =char
    LDRB R1, [R0]       

    CMP R1, #'a'        
    BLT check_vowel     
    CMP R1, #'z'        
    BGT check_vowel     
    SUB R1, R1, #32     

check_vowel:
    CMP R1, #'A'        
    BEQ vowel
    CMP R1, #'E'        
    BEQ vowel
    CMP R1, #'I'        
    BEQ vowel
    CMP R1, #'O'
    BEQ vowel
    CMP R1, #'U'        
    BEQ vowel

    MOV R2, #'C'       
    STRB R2, [R0]      
    B halt

vowel:
    MOV R2, #'V'        
    STRB R2, [R0]      

halt:
    B halt