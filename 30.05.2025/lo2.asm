.model small
.stack 100h
.data
s db ' $ '

.code
start:
mov ax,@data
mov ds,ax

mov cl,5
mov bl,1
lstart:
mov ah,02h
mov dl,bl
add dl,48
int 21h

mov dx,offset s
mov ah,09h
int 21h

mov dl,10
mov ah,02h
int 21h

inc bl
loop lstart

mov ax,4c00h
int 21h

end start