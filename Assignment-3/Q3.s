.data
array: .word 10,20,30,40,50

.global _start
_start:
	LDR R0, =array
	MOV R2, #0
loop:
	CMP R2, #5
	BEQ halt
	LDR R3, [R0,R2,LSL #2]
	ADD R3, R3, #1
	STR R3, [R0,R2,LSL #2]
	ADD R2, R2, #1
	B loop
	
halt:
	B halt