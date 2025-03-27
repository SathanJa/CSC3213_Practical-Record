.model small
.stack 100h

.data
 m db 6
 n db 3

.code 
start:
mov ax,@data
mov ds,ax



mov dl,m ;d1=6
sub dl,n ;d1=6-3=3
add dl,48 ;d1= 3+48=51

mov ah,02h
int 21h

mov ax,4c00h
int 21h 

end start