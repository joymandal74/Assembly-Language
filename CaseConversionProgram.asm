.model small
.stack 100h
.data
cr equ 0dh
nl equ 0ah
msg1 db 'Enter a lower case letter: $'
msg2 db 0dh,0ah,'In upper case it is: '
char db ?,'$' 
.code 
main proc
    mov ax,@data
    mov ds,ax
    lea dx,msg1
    mov ah,9
    int 21h
    mov ah,1
    int 21h 
    sub al,20h 
    mov char,al
    lea dx,msg2
    mov ah,9
    int 21h
   
    
    
    
main endp
end main
    