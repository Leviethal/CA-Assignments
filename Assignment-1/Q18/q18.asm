mov ax,700h
mov ds,ax
mov si,0000h
mov bx,5
xor ax,ax
start:   
   add ax,[si]
   inc si
   dec bx
   JNZ start