
.model small
.stack 100h
.data
msg db "Enter even number:$"
newline db 13,10,'$'
.code
start:
 mov ax,@data
 mov ds,ax
 
 mov cl,9
 mov bl,2 ;bl=2
 
next_num:
mov al,bl ;al=bl=2
mov ah,00 ;ah=00
mov dl,2 ;dl=2
div dl ;al=al/dl=2/2 al=1 ah=0
cmp ah,0
jnz not_even

mov dx,offset msg
mov ah,09h
int 21h

mov al,bl 
add al,48
mov dl,al
mov ah,02h
int 21h

mov dx,offset newline
mov ah,09h
int 21h

not_even:
inc bl
loop next_num

mov ax,4c00h
int 21h

end start