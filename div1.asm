.model small
.stack 100h
.code
main proc
    mov ax,1250
    cwd
    mov bx,7
    idiv bx
main endp
end main