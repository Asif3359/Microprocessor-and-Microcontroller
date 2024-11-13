.model small
.stack 100h
.data 
    a db 5 
    string db 'Hello world $'
    b db ?
.code 
main proc 
    mov ax, @data 
    mov ds, ax 

    mov ah, 9
    lea dx, string
    int 21h


    exit:
    mov ah, 4ch
    int 21h 
    main endp
end main 