.text
.global _start

_start:
    LDR     R0, =0xABCDEF75
    AND     R1, R0, #0xF
halt:
    B       halt
