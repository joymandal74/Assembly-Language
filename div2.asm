.model small
.stack 100h
.code
main proc
    mov al,12
    cbw
    mov bl,-7
    idiv bl
main endp
end main