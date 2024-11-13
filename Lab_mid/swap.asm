.model small
.stack 100h
.data 
.code 
main proc 
    mov ax, @data 
    mov ds, ax 

    mov ah, 1
    int 21h
    mov bl, al 

    mov ah, 1
    int 21h
    mov cl, al 

    xchg bl, cl 

    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h

    mov ah, 2 
    mov dl, bl
    int 21h

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