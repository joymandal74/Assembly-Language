.model small
.stack 100h
.code
main proc
    mov ah,2
    mov cx,5
top:
    mov dl,'*'
    int 21h
    loop top
    
    
main endp
end main