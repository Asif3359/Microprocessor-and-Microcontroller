.model small 
.stack 100h
.data 
    in1 db ?
    in2 db ?
.code 

main proc
    mov ax, @data 
    mov ds, ax 

    mov ah, 1 
    int 21h 
    mov in1, al 
    mov bl, in1

    mov ah, 1 
    int 21h 
    mov in2, al 
    mov cl, in2 

    mov ah, 2 
    mov dl, 0ah
    int 21h 
    mov dl, 0dh 
    int 21h

    sub bl, 32  ; sub 32 for lowercase to uppercase 
    add cl, 32  ; add 32 for uppercase to lowercase

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