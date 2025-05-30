.model small
.stack 100h
.data
sum db 0
r db 0
.code
start:
mov ax,@data
mov ds,ax

mov cl,5

lstart:;cl=5 ->cl=4
mov dl,sum ;dl=sum=0 ->sum=5
add dl,cl ;dl=dl+cl=0+5=5 ->dl=5+4=9
mov sum,dl ;sum=dl=5 ->dl=9

loop lstart
;sum=15
mov al,sum ;al=sum=15
mov ah,00
mov bl,10 ;bl=10
div bl ;al=al/bl=15/10  al=1 ah=5
mov r,ah

mov dl,al
add dl,48
mov ah,02h
int 21h

mov dl,r
add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start