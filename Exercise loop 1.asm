.model small
.stack 100h 
.data
chr db ?
val db ?
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
first_:
    cmp al,'0'
    jl last_
    cmp al,'9'
    jg last_
    sub al,30h
    mov val,al
    jmp print_
last_: 
    cmp al,'A'
    jl not_
    cmp al,'F'
    jg not_
    sub al,37h
    mov val,al
    jmp print_char
    

print_:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    mov bl,val
    add bl,30h
    mov dl,bl
    int 21h
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    jmp continue_: 
print_char:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    mov bl,val
    add bl,37h
    mov dl,bl
    int 21h
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    jmp continue_: 
not_:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    mov dl,'K'
    int 21h
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    jmp continue_: 
    
continue_:
    mov ah,1
    int 21h
    cmp al,'y'
    je while_
    cmp al,'Y'
    je while_
    jmp exit_ 
while_: 
    mov ah,1
    int 21h
    jmp first_
exit_:
    
main endp
end main