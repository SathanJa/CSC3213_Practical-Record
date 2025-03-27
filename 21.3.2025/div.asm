.model small
.stack 100h

.data
 m db 6
 n db 3
 r db ?
.code 
start:
mov ax,@data
mov ds,ax

mov ah,00 ;ah register store reminder value
mov al,m
div n ;ah=m/n=2
mov r,ah  ;r=0

mov dl,al ;dl=2
add dl,48 ;d1= 2+48=50
mov ah,02h
int 21h

mov dl,10
mov ah,02h
int 21h

mov dl,r ;dl=0
add dl,48 ;d1= 0+48=48
mov ah,02h
int 21h

mov ax,4c00h
int 21h 

end start