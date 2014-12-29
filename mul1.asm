.model small
.stack 100h
.data
A dw 2
B dw 1
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ax,5
    imul A
    mov A,ax
    mov ax,12
    imul B
    sub A,ax
main endp
end main