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

    mov ah, 1
    int 21h
    mov ch, al

    cmp bl, cl  
    jg L1       ; if bl > cl 
    mov bl, cl  ; else !(bl>cl)

L1:
    cmp bl, ch
    jg L2
    mov bl, ch

L2:
    mov ah, 2
    mov dl, bl
    int 21h

    exit:
    mov ah, 4Ch
    int 21h

main endp
end main
