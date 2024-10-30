.MODEL
.STACK 100H
.DATA
    MSG1 DB 0DH, 0AH, 'HELLO WORLD', 0DH, 0AH, '$'
    VAR1 DB 4 ;INT
    VAR2 DB ? ;USER INPUT
.CODE

NEWLINE PROC
    MOV AH, 2
    MOV DL, 0DH          
    INT 21H
    MOV DL, 0AH          
    INT 21H
    RET
NEWLINE ENDP

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9               
    LEA DX, MSG1  
    INT 21H
    
    MOV AH, 2
    MOV DL, VAR1
    ADD DL, 48
    INT 21H

    CALL NEWLINE

    MOV AH, 1
    INT 21H
    MOV VAR2, AL

    CALL NEWLINE

    MOV AH, 2
    MOV DL, VAR2
    INT 21H

    EXIT:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN


