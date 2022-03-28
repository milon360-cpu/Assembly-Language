; Question : Loop 
.model small
.stack 100h 
.data
 str db "Life is not a playboy $"
.code 
main proc 
; initialize data segment in the main procedure 
mov ax,@data
mov ds,ax 

;condition
mov cx,10  

level1:
mov ah,9
lea dx,str
int 21h
; printing new line 
mov ah,2
mov dl,10
int 21h
mov ah,2
mov dl,13
int 21h
; calling loop  
loop level1

exit:
mov ah,4ch
main endp 
end main