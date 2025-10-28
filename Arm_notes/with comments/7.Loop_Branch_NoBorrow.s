.global _start
_start:
	@ Calculating the sum of the first 10 positive integers.
	@ Objective: Use a flag-setting instruction and a conditional branch.
	@ Objective: Understand the No Borrow Rule for Subtraction
	
	
	MOV R0, #10         @ Loop counter
	MOV R1, #0          @ Sum

	loop:
		ADD R1, R1, R0    @ Add the current counter value to sum
		SUBS R0, R0, #1   @ Decrement counter AND set flags
		BGT loop          @ Branch if Greater Than 0
halt:
	B halt




@ The "No Borrow" Rule for Subtraction 
@ This is a key concept in ARM architecture that can be a bit counter-intuitive. 
@ When performing subtraction (SUB, SUBS, CMP), the Carry flag acts as a "not borrow" flag.

@ C = 1 if the operation did not require a borrow (i.e., the result is positive or zero).

@ C = 0 if the operation did require a borrow (i.e., the result is negative, requiring a wraparound from all 1s).