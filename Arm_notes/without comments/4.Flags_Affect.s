.text
.global _start
_start:
	MOV R0, #0
	ADD R0, R0, #0
	MOVEQ R1, #99
	
	MOV R0, #0
	ADDS R0, R0, #0
	MOVNE R1, #99
	
	MOV R0, #10
	SUB R0, R0, #20
	
	MOV R0, #10
	SUBS R0, R0, #20
	halt:
	B halt
