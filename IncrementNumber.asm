.model small
.stack 100h
.data
num dw 5
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ax,num 
    inc ax
main endp
end main