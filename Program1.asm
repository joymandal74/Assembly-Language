.model small
.stack 100h
.data
quesmark db '?'
num1 db ?
num2 db ? 
sum db ? 
msg db 'THE SUM OF $'
msg1 db ' AND $'
msg2 db ' IS $'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov dl,quesmark
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    mov num1,al
    mov ah,1
    int 21h
    mov num2,al 
    mov al,num1
    sub al,30h
    mov bl,num2
    sub bl,30h
    ;sub num1,30h
    ;sub num2,30h 
    ;mov al,num1
    add al,bl
    mov sum,al
    add sum,30h
    mov ah,2
    mov dl,0dh 
    int 21h
    mov dl,0ah
    int 21h 
    mov ah,9
    lea dx,msg
    int 21h 
    mov ah,2
    mov dl,num1
    int 21h
    mov ah,9
    lea dx,msg1
    int 21h
    mov ah,2
    mov dl,num2
    int 21h 
    mov ah,9
    lea dx,msg2
    int 21h
    mov ah,2
    mov dl,sum
    int 21h
    
    
    
    
main endp
end main