.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV BL, AL
    
    MOV AL, BL
    MOV CL, 100
    MUL CL
    MOV DH, AL
    
    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV BL, AL
    
    MOV AL, BL
    MOV CL, 10
    MUL CL
    MOV BH, AL
    
    ADD DH, BH
    
    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV CL, AL
    
    ADD DH, CL
    
    
    ;OUTPUT
    MOV AH, 0
    MOV AL, DH
    MOV BL, 100
    DIV BL
    MOV BL, AL
    MOV DH, AH
    
    MOV AH, 0
    MOV AL, DH
    MOV CL, 10
    DIV CL
    MOV BH, AL
    MOV CL, AH
    
    MOV AH, 2
    MOV DL, BL
    ADD DL, 48
    INT 21H
    MOV DL, BH
    ADD DL, 48
    INT 21H
    MOV DL, CL
    ADD DL,48
    INT 21H
        
    
    
    MAIN ENDP
END MAIN