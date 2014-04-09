section .data
hello db 'hello',10
helloLen equ $-hello
world db 'world',10
worldLen equ $-world
helloFile db 'hello.txt'

section .text
global _start

_start:
mov eax,8
mov ebx,helloFile
mov ecx,00644Q
int 80h

mov ebx,eax

mov eax,4
mov ecx, hello
mov edx, helloLen
int 80h

mov eax,4
mov ecx, world
mov edx, worldLen
int 80h

mov eax,6
int 80h

mov eax,5
mov ebx,helloFile
int 80h

mov eax,3
int 80h

mov eax,4
mov ebx,1
int 80h

xor ebx,ebx
mov eax,1
int 80h
