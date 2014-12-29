.model samll
.stack 100h
.code
main proc
    mov ah,2
    mov cx,256
    mov dl,0
print_loop:
int 21h
inc dl
dec cx
jnz print_loop
main endp
end main