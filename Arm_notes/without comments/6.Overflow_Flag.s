.text
.global _start
_start:
	LDR R0, =0x7FFFFFFF
	MOV R1, #0
	ADDS R0, R0, #1
	MOVVS R1, #33

halt:
	B halt
