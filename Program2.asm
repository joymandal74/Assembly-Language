.model small
.stack 100h
.data
first db ?
middle db ?
last db ? 
msg db 'ENTER THREE INITIALS: $'
.code
main proc
    mov ax,@data
    mov ds,ax 
    mov ah,9
    lea dx,msg
    int 21h
    mov ah,1
    int 21h
    mov first,al
    int 21h
    mov middle,al
    int 21h
    mov last,al
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    mov dl,first
    int 21h 
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    mov dl,middle
    int 21h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    mov dl,last
    int 21h  
    
main endp
end main
    