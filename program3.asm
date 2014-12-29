.model small
.stack 100h
.data
msg db 'ENTER A HEX DIGIT: $'
msg db 'IN DECIMAL IT IS $'
var1 db ?
var2 db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    