.model small
.stack 100h
.code 
.data 
a db 5 
b db ?

main proc 
    mov ax, @data
    mov ds, ax 

    mov ah, 1 
    int 21h
    mov b , al

    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h 

    mov ah, 2
    mov dl, b
    int 21h

    mov ah, 2
    mov dl, 0ah
    int 21h 
    mov dl, 0dh
    int 21h 

    mov ah, 2 
    mov dl, a 
    add dl, 48
    int 21h


    exit:
    mov ah, 4ch 
    int 21h 
    main endp

end main