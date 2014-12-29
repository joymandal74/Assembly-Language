.model samll
.stack 100h
.data 
num1 db ?
num2 db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
    sub al,30h
    mov num1,al
    mov ah,2
    mov dl,0dh
    int 21h
    mov ah,2
    mov dl,0ah
    int 21h
    mov ah,1
    int 21h
    sub al,30h
    mov num2,al
    mov ah,2
    mov dl,0dh
    int 21h
    mov ah,2
    mov dl,0ah
    int 21h
    mov al,num1
    cmp al,num2
    jl print_num1
    jmp print_num2
print_num1:
    add al,30h
    mov ah,2
    mov dl,al
    int 21h
    jmp exit
print_num2:
    mov al,num2
    add al,30h
    mov ah,2
    mov dl,al
    int 21h
    jmp exit
exit:
    
main endp
end main