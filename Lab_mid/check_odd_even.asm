.model small
.stack 100h
.data 
    msg db 'Enter the number : $'
    odd db 0ah, 0dh, 'This is an odd number.$'
    even db 0ah, 0dh, 'This is an even number.$'
.code 
main proc
    mov ax, @data 
    mov ds, ax 

    mov ah, 9 
    lea dx, msg
    int 21h

    mov ah, 1 
    int 21h
    sub al, '0'        
    mov bl, al          
    mov cl, al          

    and bl, 1           
    jz printEven        

    mov ah, 9
    lea dx, odd
    int 21h
    jmp exit            

printEven:
    mov ah, 9
    lea dx, even
    int 21h

exit:
    mov ah, 4ch
    int 21h
    main endp
end main
