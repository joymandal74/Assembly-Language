.model small
.stack 100h
.data 
ar db -1,5,6,2,9,3
n dw ?
t dw ?
num1 db ?
temp dw ?
.code
main proc
    mov ax,@data
    mov ds,ax
    mov n,6
    mov cx,2
outer_loop:
    cmp cx,n
    jge exit_
    mov Si,cx
    mov bl,ar[Si]
    mov num1,bl
    mov t,cx
    dec t
    mov ax,t
inner_loop:
    mov Si,ax
    mov bl,ar[Si]
    cmp bl,num1
    jg exchange_
    jmp continue_
continue_:
    inc ax
    mov Si,ax 
    mov bl,num1
    mov ar[Si],bl
    inc cx
    jmp outer_loop
exchange_:
    mov temp,ax
    inc temp
    mov Si,temp
    mov ar[Si],bl
    dec ax
    jmp inner_loop 


exit_:
mov cx,1
mov ah,2 
mov Si,0
print_:
    cmp cx,6
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