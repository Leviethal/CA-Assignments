.text
.global _start  @An assembler directive (pseudo-op) that makes the symbol _start visible to the linker and other object files.
_start:
    @ ---------------------------
    @ Demo 2: Large constant (use literal pool / PC-relative LDR)
    @ ---------------------------

	@ ----------------------------
    @ Method A: LDR pseudo-op with '='
    @ Assembler will either generate a MOV sequence
    @ or place the constant in a literal pool and emit a PC-relative LDR.
    @ ----------------------------
    LDR     R3, =0x12345678     @ loads 0x12345678 into R3 (= implies, assembler decides how to move...)

    @ Save R3 result for inspection
    LDR     R12, =out_base
    STR     R3, [R12, #0]       @ out_base+0 = method A result

    @ ----------------------------
    @ Method B: Explicit PC-relative LDR from a named literal label
    @ This demonstrates the actual memory load from a literal pool entry.
    @ ----------------------------
    LDR     R4, =literal_label  @ R4 gets the address of literal_label (convenience)
    LDR     R5, [R4]            @ load word at literal_label into R5
    STR     R5, [R12, #4]       @ out_base+4 = method B result

    @ ----------------------------
    @ Method C: Build constant with MOVW / MOVT (ARMv7 efficient way)
    @ MOVW sets low 16 bits; MOVT sets high 16 bits — together they form any 32-bit value.
    @ ----------------------------
    MOVW    R6, #0x5678         @ lower 16 bits -> R6 == 0x00005678
    MOVT    R6, #0x1234         @ upper 16 bits -> R6 == 0x12345678
    STR     R6, [R12, #8]       @ out_base+8 = method C result



halt:
    B halt
	
	
    .data
out_base:
    .space 64 @ the assembler reserves 64 bytes and by default fills them with zero bytes unless you give a fill value. This is commonly used to allocate a buffer or an output area.
	
	.align 4  	@tells the assembler to start the next code/data at an address aligned to 4 bytes
literal_label:
    .word 0x12345678            @ literal used by Method B


@============================================================================================================================================

@ What is a literal pool?
@ A literal pool is a small table of constant values (literals) placed in memory (usually near the code) 
@ that the assembler/linker uses so the CPU can load those constants with a PC-relative LDR instruction. 
@It’s how assemblers implement {LDR Rn, =const} when const cannot be encoded directly in an instruction. 

@============================================================================================================================================

@ Why literal pools exist
@ Many architectures (ARM among them) have a limited immediate field in instructions. 
@ To load an arbitrary 32-bit constant into a register, the assembler either synthesizes it with several instructions (slower / larger) 
@ or places the constant in memory near the code and issues a PC-relative load to fetch it — that memory area is the literal pool.

@============================================================================================================================================

@ Why do we need multiple methods for moving 32 bit eventhough ARM7 is a 32 bit processor?
@ Even though ARM is a 32-bit CPU with 32-bit registers and a 32-bit data bus, 
@ individual instructions are themselves encoded into 32 bits, and those 32 bits must contain opcode, 
@ register fields and other control bits — so there simply isn’t room to encode an arbitrary 32-bit 
@ immediate value in a single instruction. Therefore the ISA provides compact immediate encodings (for common values) 
@ and other methods (literal pools, MOVW/MOVT, or multi-instruction synthesis) to produce any 32-bit constant.

@============================================================================================================================================

@ What are those random characters at the right on Memory Tab?
@ They are a direct, byte-for-byte translation of the hexadecimal memory contents into text, using a standard called ASCII.
@ This ASCII view is incredibly useful when you are specifically looking for text data stored in your program, such as:
	@ 1.An error message like "File not found!".
	@ 2.A user's name.
	@ 3.Configuration settings.