.model small
.stack 100h

.data
 m db 2
 n db 3

.code 
start:
mov ax,@data
mov ds,ax



mov al,m ;a1=2
mul n ;a1=2*3
mov dl,al ;dl=6
add dl,48 ;d1= 6+48=54

mov ah,02h
int 21h

mov ax,4c00h
int 21h 

end start