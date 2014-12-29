.model small
.stack 100h
.data
f0 db 0
f1 db 1
fc db ?
num db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
    sub al,30h
    sub al,2
    mov num,al
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    mov bl,f0
    add bl,30h
    mov dl,bl
    int 21h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h     
    mov bl,f1
    add bl,30h
    mov dl,bl
    int 21h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h   
    mov cl,num  
    
top:       
     mov bl,f0
     add bl,f1
     mov fc,bl
     mov bl,f1
     mov f0,bl
     mov bl,fc
     mov f1,bl
     mov bl,fc
     add bl,30h 
     mov dl,bl
     int 21h
     mov dl,0dh
     int 21h
     mov dl,0ah
     int 21h
     dec cl
     jnz top

main endp
end main