.model small
.stack 100h
.data
num1 dw 4
num2 dw 2
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ax,num1 
    mov cx,num2 
    mul cx
main endp
end main