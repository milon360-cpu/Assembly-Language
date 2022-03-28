; Question: Take a single character input and display it 
.model small
.stack 100h
.code 
main proc 
;input taken here 
mov ah,1
int 21h
mov bl,al 
; display section here  
mov ah,2
mov dl,bl
int 21h


exit:
mov ah,4ch
main endp 
end main