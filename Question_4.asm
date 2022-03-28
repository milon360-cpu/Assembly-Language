; Question : I/O in different line   
.model small
.stack 100h
.code 
main proc 
;input taken here
mov ah,1
int 21h
mov bl,al

;for new line  
mov ah,2
mov dl,10
int 21h
mov ah,2
mov dl,13
int 21h

; display section here  
mov ah,2
mov dl,bl
int 21h;

exit:
mov ah,4ch
main endp
end main