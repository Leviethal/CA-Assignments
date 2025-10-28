.text
.global _start
_start:
	MOV R0, #5
	MOV R1, #0
	CMP R0, #10
	MOVMI R1, #77
	
	MOV R0, #5
	MOV R1, #0
	CMP R0, #10
	MOVPL R1, #77

halt:
	B halt
