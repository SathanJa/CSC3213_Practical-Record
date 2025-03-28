.model small
.stack 100h
.data

msg1 db "Enter the number1: $"
msg2 db "Enter the number2: $"
msg3 db "The sum of two numbers: $"
n1 db 0
n2 db 0
n3 db 0

.code
start:
mov ax,@data
mov ds,ax

mov dx,offset msg1 ;print the msg1
mov ah,09h
int 21h

mov ah,01h ;2   al=2+48=50
int 21h

mov dl,al ;al=50 dl=50
sub dl,48  ;dl=50-48

mov n1,dl ;n1=2

mov dl,0ah
mov ah,02h
int 21h

mov dx,offset msg2
mov ah,09h
int 21h

mov ah,01h ;3  al=3+48=51
int 21h

mov dl,al ;al=51 dl=51
sub dl,48 ;dl=51-48

mov n2,dl ;n2=3

mov dl,0ah
mov ah,02h
int 21h

mov dx,offset msg3 ;print the msg3
mov ah,09h
int 21h

mov dl,n1 ;d1=2
add dl,n2 ;d1=2+3=5
add dl,48 ;dl=5+48=53

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start