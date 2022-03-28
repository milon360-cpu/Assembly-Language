; Question : Printing String 
.model small
.stack 100h
.data
 str db "Life is not a playboy $"
.code
main proc 
; initialize data segment in the main procedure 
mov ax,@data
mov ds,ax

; Display section here 
mov ah,9
lea dx,str
int 21h

exit:
mov ah,4ch
main endp 
end main