; Question : If value is indicated 
.model small
.stack 100h
.code 
main proc 
; display static/initial value 
mov ah,2
mov dl,"T"
int 21h

exit:
mov ah,4ch
main endp
end main