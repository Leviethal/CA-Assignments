.global _start                      @ An assembler directive (pseudo-op) that makes the symbol _start visible to the linker and other object files.
_start:                             @ A label. Labels mark addresses in code and end with a colon. This label defines the address that the CPU will execute when you start.
    @ ---------------------------
    @ Demo 1: Move immediates (decimal / binary / hex)
    @ ---------------------------
    MOV     R1, #0b101010           @ binary 0b101010 (same value 42)
    MOV     R2, #0x2A               @ hex 0x2A (same value 42)
halt:
    B halt                          @ B — unconditional branch. 
                                    @ It changes the program counter (PC) so execution continues at the address labeled halt.
                                    @ Execution jumps back to the halt label — because halt is the current instruction's target, this forms an infinite loop.
                                    @ The CPU repetitively executes the same B halt, so nothing else runs. 
                                    @ This is a standard way to “stop” in bare-metal demos so the program doesn't run off into random memory.
                                    @ It halts progress but keeps registers unchanged so you can inspect them in the simulator.