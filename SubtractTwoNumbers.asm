.model small
.stack 100h
.data
num1 dw 5
num2 dw 5
.code

main proc
  mov ax,@data
  mov ds,ax
  mov ax,num1
  sub ax,num2
    
    
    
main endp
end main
