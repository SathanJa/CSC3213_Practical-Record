.model small
.stack 100h
.data
msg db "Enter the number:$"

h db 0;1
t db 0;2
o db 0;3
h1 db 0;100
dig db 0;123
rh db 0
rt db 0

.code
start:
mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,09h
int 21h

;read first digit
mov ah,01h ;al=1+48=49
int 21h

mov dl,al ;dl=49
sub al,48 ;dl=49-48=1
mov h,dl ;h=1

;read second digit
mov ah,01h ;al=2+48=50
int 21h

mov dl,al
sub al,48 ;dl=50-48=2
mov t,dl  ;t=2

;read third digit
mov ah,01h ;al=3+48=51
int 21h

mov dl,al 
sub al,48 ;dl=51-48=3
mov o,dl  ;o=3

;h*100
mov al,h
mov bl,100 ;bl=100
mul bl ;al=al*bl=1*100=100

mov h,al ;h=100 

mov al,t ;al=2
mov bl,10 ;bl=10
mul bl ;al=al*bl=2*10=20
mov dl,al ;dl=20
add dl,h ;dl=dl+h=20+100=120
add dl,o ;dl=dl+o=120+3=123
mov dig,dl ;dig=123

;dig=123/100=1  r=23


mov dl,10
mov ah,02h
int 21h

mov ah,00
mov al,dig ;al=123
mov bl,100 ;bl=100
div bl  ;al=al/bl=123/100=1  r=23

mov rh,ah ;rh=23
mov dl,al
add dl,48
mov ah,02h
int 21h

mov ah,00
mov al,rh ;al=23
mov bl,10 ;bl=10
div bl  ;al=23/10=2  r=3

mov rt,ah ;rt=3
mov dl,al
add dl,48
mov ah,02h
int 21h

mov dl,rt
add dl,48
mov ah,02h
int 21h



mov ax,4c00h
int 21h





end start
