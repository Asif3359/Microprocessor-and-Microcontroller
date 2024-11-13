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

    cmp bl, cl 
    jg L1       ; if bl > cl 
    jmp L2      ; if !(bl>cl)

L1:
    mov ah, 2 
    mov dl, bl 
    int 21h 
L2:
    jmp exit 


    exit:
    mov ah, 4ch 
    int 21h
    main endp
end main 