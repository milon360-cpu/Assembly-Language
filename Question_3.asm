; Question : If veriable is declared 
.model small 
.stack 100h
.data 
vr db ?
.code 
main proc 
; initialize data segment in the main procedure 
mov ax,@data
mov ds,ax 

; taken value in the variable 
 mov ah,1
 int 21h
 mov vr,al

;  display section here 
mov ah,2
mov dl,vr
int 21h

exit:
mov ah,4ch
main endp 
end main