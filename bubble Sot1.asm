.model small
.stack 100h
.data
ar db 0,5,9,3,4
k db ?
k1 db ?
num db ?
t db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    mov k,4
    mov cl,k
outer_loop:
    cmp cl,0
    je exit
    mov k1,cl
    mov bl,0
    mov t,0
inner_loop:
    cmp bl,k1
    je continue_
    mov ah,2
    mov num,bl
    add num,030h
    mov dl,num
    int 21h
    inc bl
    jmp inner_loop
continue_:
    mov cl,t
    jmp outer_loop 
exit_:

main endp
end main