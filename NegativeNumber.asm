.model small
.stack 100h
.data
num1 dw 4
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ax,num1 
    neg ax 
main endp
end main