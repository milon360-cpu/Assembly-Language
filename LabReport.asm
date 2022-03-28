; Question: Check minimum number between two numbers
.model small
.stack 100h
.code 
main proc 
; taken first input here 
 mov ah,1
 int 21h
 mov bl,al
;  taken second input here  
mov ah,1
int 21h 
mov bh,al

; comparison section here  
cmp bl,bh 
jl level1
jmp level2

level1:
mov ah,2
mov dl,bl
int 21h 
jmp exit
level2:
mov ah,2
mov dl,bh 
int 21h 

exit: 
mov ah,4ch
main endp
end main