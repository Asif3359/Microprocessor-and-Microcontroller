.model small
.stack 100h
.data 
    ms1 db 'Enter a number 1   : $'
    ms11 db 0ah, 0dh, 'Your first number :$'
    a db ?
    ms2 db 'Enter a number 2   :  $'
    ms22 db 0ah, 0dh, 'Your second number:$'
    b db ?
.code 

main proc 
    mov ax, @data 
    mov ds, ax 

    mov ah, 9
    lea dx, ms1
    int 21h

    mov ah, 1 
    int 21h
    mov a, al 

    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h

    mov ah, 9
    lea dx, ms2
    int 21h

    mov ah, 1
    int 21h
    mov b, al 

    mov ah, 9
    lea dx, ms11
    int 21h 

    mov ah, 2 
    mov dl, a 
    int 21h


    mov ah, 9
    lea dx, ms22
    int 21h

    mov ah, 2
    mov dl, b
    int 21h 


    exit:
    mov ah, 4ch
    int 21h 
    main endp
end main