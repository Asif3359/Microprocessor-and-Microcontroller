.model small
.stack 100h
.code 
.data 

main proc

    mov ah, 1 
    int 21h
    mov bl, al ; default input al

    ; new line 
    mov AH, 2
    mov dl, 0AH
    int 21H 
    mov dl, 0DH
    int 21H 

    mov ah, 2 
    mov dl, bl ; dafult output bl
    int 21h 

    exit:
    mov ah, 4ch
    int 21h
    main endp

end main