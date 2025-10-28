.text
.global _start

_start:
    @ Step 1: Initialize the Stack Pointer.
    @MOV SP, #0x1000

	MOV R1, #0x1
    MOV R2, #0x2 
	MOV R3, #0x3
    MOV R4, #0x4 
	
    PUSH {R1}
	PUSH {R2}
	PUSH {R3}
	PUSH {R4}

    MOV R1, #0      
    MOV R2, #0 
	MOV R3, #0      
    MOV R4, #0 

    POP {R1}
	POP {R2}
	POP {R3}
	POP {R4}
	

halt:
    B halt