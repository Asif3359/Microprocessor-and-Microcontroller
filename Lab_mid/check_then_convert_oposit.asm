.model small
.stack 100h
.data 
    input db ?
    result db ?
.code 
main proc 
    mov ax, @data 
    mov ds, ax 

    mov ah, 1 
    int 21h 
    mov input, al 
    mov bl, input 

    cmp bl, 'a'
    jb toLowercase
    cmp bl, 'z'
    ja toLowercase
    sub bl, 32 
    jmp display 

toLowercase:
    add bl, 32
display:
    mov result, bl 
    mov ah, 2 
    mov dl, result 
    int 21h 

    exit:
    mov ah, 4ch
    int 21h
    main endp
end main