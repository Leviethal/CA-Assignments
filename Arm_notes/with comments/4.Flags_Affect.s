.text
.global _start
_start:
	@ Objective: Show that a standard ADD does not change any flags.
	MOV R0, #0
	ADD R0, R0, #0  @ Result is 0, but Z flag will NOT be set.
	
	MOVEQ R1, #99     @ MOVE if EQual.
	
	@ Objective: Show that ADDS DOES update the flags.
	MOV R0, #0
	ADDS R0, R0, #0 @ Result is 0, so Z flag WILL be set.
	
	MOVNE R1, #99     @ MOVE if Not Equal.
	
	@ Objective: Show that a standard SUB does not change any flags.
	MOV R0, #10
	SUB R0, R0, #20 @ Result is -10, but N flag will NOT be set.
	
	@ Objective: Show that SUBS sets the Negative flag.
	MOV R0, #10
	SUBS R0, R0, #20 @ Result is -10, so N flag WILL be set.
	
halt:
	B halt
