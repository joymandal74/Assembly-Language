.model small
.stack 100h
.data
ar db 9,5,2,3,1
k dw ?
k1 dw ?
num db ?
t dw ?
index1 dw ?
index2 dw ?
pre db ?
frwd db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    mov k,4
    mov cx,k
outer_loop:
    cmp cx,0
    je exit_
    mov k1,cx
    mov ax,0
    mov t,0 
inner_loop:
    cmp ax,k1
    jge continue_
    mov index1,ax
    mov Si,index1
    mov bl,ar[Si]
    mov pre,bl
    inc Si
    mov index2,Si
    mov bl,ar[Si]
    mov frwd,bl
    cmp bl,pre
    jl exchange_
    inc ax
    jmp inner_loop
exchange_:
    mov Si,index2
    mov bl,pre
    mov ar[Si],bl
    mov Si,index1
    mov bl,frwd
    mov ar[Si],bl
    mov t,ax
    inc ax
    jmp inner_loop 
continue_:
    mov cx,t
    jmp outer_loop
exit_:
mov cx,0
mov ah,2 
mov Si,0
print_:
    cmp cx,5
    jge exit1_
    mov Si,cx
    mov bl,ar[Si]
    add bx,30h
    mov dl,bl
    int 21h
    inc cx
    jmp print_
exit1_:
main endp
end main