.global _start
_start:
	MOV R0, #10
	MOV R1, #0

loop:
	ADD R1, R1, R0
	SUBS R0, R0, #1
	BGT loop
halt:
	B halt

