.model small
.stack 100h
.data
    a db ?
    b db ?
.code

main proc
    mov ax, @data
    mov ds, ax

    mov ah, 1
    int 21h
    sub al, 48
    mov a, al

    mov ah, 1
    int 21h
    sub al, 48
    mov b, al
    mov bl, b

    mov al, a
    mov ah, 0
    div bl

    mov cl, al 
    mov ch, ah 
    
    mov ah, 2
    mov dl, cl
    add dl, 48
    int 21h

    mov ah, 2
    mov dl, ch
    add dl, 48
    int 21h

exit:
    mov ah, 4Ch
    int 21h

main endp
end main
