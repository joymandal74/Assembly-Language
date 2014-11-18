.model small
.stack 100h   
.data
S db 'S'
H db 'h'
U db 'u'
V db 'v'
O db 'o'
J db 'j'
I db 'i'
T db 't' 
space db ' '
A db 'a'
.code
main proc
    mov ax,@data
    mov ds,ax 
    mov ah,2
    mov dl,S
    int 21h 
    mov ah,2
    mov dl,H
    int 21h
    mov ah,2
    mov dl,U
    int 21h
    mov ah,2
    mov dl,V
    int 21h
    mov ah,2
    mov dl,O
    int 21h
    mov ah,2
    mov dl,J
    int 21h
    mov ah,2
    mov dl,I
    int 21h
    mov ah,2
    mov dl,T
    int 21h
    mov ah,2
    mov dl,space
    int 21h
    mov ah,2
    mov dl,S
    int 21h
    mov ah,2
    mov dl,A
    int 21h
    mov ah,2
    mov dl,H
    int 21h
    mov ah,2
    mov dl,A
    int 21h
    
main endp
end main
    