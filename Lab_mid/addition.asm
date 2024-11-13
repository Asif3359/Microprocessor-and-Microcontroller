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
    mov a, al 

    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h 

    mov ah, 1 
    int 21h 
    mov b, al 

    mov cl, a 
    add cl, b
    sub cl, 48 ; convert ascii to number

    mov ah, 2 
    mov dl, 0ah
    int 21h 
    mov dl, 0dh
    int 21h 

    mov ah, 2
    mov dl, cl 
    int 21h 


    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main