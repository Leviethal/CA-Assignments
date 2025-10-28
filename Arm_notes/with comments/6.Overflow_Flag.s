.text
.global _start
_start:
	@ Objective: Show signed overflow.
	LDR R0, =0x7FFFFFFF @ Largest positive signed number
	MOV R1, #0
	ADDS R0, R0, #1   @ pos + pos = neg. V flag is now 1.
	MOVVS R1, #33     @ MOVE if oVerflow is Set.

halt:
	B halt
