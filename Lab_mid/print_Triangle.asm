.model small
.stack 100h
.data
    n db ? 

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 1
    int 21h
    sub al, 48
    mov n, al
    mov bl, 1           ; Set initial row count to 1

    mov ah, 2          
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h

outer_loop:
    mov cl, bl          ; Set inner loop counter (number of stars per line)
print_line:
    mov ah, 2
    mov dl, '*'         ; Print asterisk
    int 21h

    dec cl              ; Decrease star counter for current line
    jnz print_line      ; Continue printing stars if cl > 0

    mov ah, 2           ; Newline after printing all stars on a line
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h

    inc bl              ; Increase line length for next row
    cmp bl, n           ; Check if we've reached the input value n
    jle outer_loop      ; If not, repeat for the next row

exit:
    mov ah, 4Ch
    int 21h

main endp
end main
