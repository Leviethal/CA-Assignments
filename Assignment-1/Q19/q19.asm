mov ax,800h
mov ds,ax
mov si,0000h
mov bx,5
xor ax,ax
start:   
   mov [si+bx],bx
   dec bx
   JNZ start