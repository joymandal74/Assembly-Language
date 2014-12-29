.model small
.stack 100h
.data
a db ?
b db ?
.code
main proc
    mov ah,1
    int 21h
    mov a,al
    mov ah,1
    int 21h
    mov b,al
    mov bl,a
    cmp bl,b
    jl print1_
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    mov dl,b
    int 21h
    mov dl,a
    int 21h
    jmp exit_
print1_:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    mov dl,a
    int 21h
    mov dl,b
    int 21h
exit_:  
main endp
end main