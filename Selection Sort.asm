.model small
.stack 100h
.data
ar db 1,3,5,8,9
k dw ?
k1 dw ?
t dw ?
index1 dw ?
num1 db ?
num2 db ?
temp db ?
temp1 db ?
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
    mov ax,1 
    mov t,0
inner_loop:
    cmp ax,k1
    jg continue_
    mov Si,t
    mov bl,ar[Si]
    mov num1,bl
    mov Si,ax
    mov bl,ar[Si]
    mov num2,bl
    cmp bl,num1
    jg exchange_ 
increment_:
    inc ax
    jmp inner_loop
exchange_:
    mov t,ax
    jmp increment_
continue_:
    mov index1,cx
    mov Si,index1
    mov bl,ar[Si]
    mov temp,bl
    mov Si,t
    mov bl,ar[Si]
    mov temp1,bl 
    mov bl,temp
    mov ar[Si],bl
    mov Si,index1
    mov bl,temp1
    mov ar[Si],bl
    dec cx
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