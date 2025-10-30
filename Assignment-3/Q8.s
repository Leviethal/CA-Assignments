.data
string: .asciz "daksh"

.global _start
_start:
	LDR R0, =string
	MOV R1, #0
	MOV R2, #4
	
loop:
	CMP R1, R2
	BGE halt
	LDRB R3, [R0,R1]
	LDRB R4, [R0,R2]
	MOV R5, R3
	MOV R3, R4
	MOV R4, R5
	STRB R3, [R0,R1]
	STRB R4, [R0,R2]
	ADD R1, R1, #1
	SUB R2, R2, #1
	B loop
	
halt:
	B halt