Sujet 1 : Ecrire de l'assembleur
Exercices
Exercice 1
org 100h

mov  al,206
mov  bl,178

not bl
and bl,al
not al
or bl,al

mov cx, 8
print: mov ah, 2
       mov dl, '0'
       test bl, 10000000b
       jz zero
       mov dl, '1'

zero:  int 21h
       shl bl, 1
loop print

mov dl, 'b'
int 21h

mov ah, 0
int 16h

ret
Exercice 2
Je ne l'est pas compris 
Exercice 3
org 100h

jmp start

msg:    db      "Hello, World!", 0Dh,0Ah, 24h

start:  mov     dx, msg
        mov     ah, 09h
        int     21h

        mov     ah, 0

ret
Exercice 4
org 100h

mov  al,1
mov  bl,1

add al, bl

mov cx, 8
print: mov ah, 2
       mov dl, '0'
       test bl, 10
       jz zero
       mov dl, '1'

zero:  int 21h
       shl bl, 1
loop print

mov dl, 'b'
int 21h

mov ah, 0
int 16h

ret