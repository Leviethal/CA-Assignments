.text
.global _start
_start:
	@ Objective: Execute based on the N flag.
	MOV R0, #5
	MOV R1, #0
	CMP R0, #10       @ 5 - 10 is negative. N flag is now 1.
	MOVMI R1, #77     @ MOVE if MInus.
	
	@ Objective: Execute if the N flag is 0.
	MOV R0, #5
	MOV R1, #0
	CMP R0, #10       @ N flag is now 1.
	MOVPL R1, #77     @ MOVE if PLus.

halt:
	B halt
