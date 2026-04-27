(a) Addition
MOV A, #25H
MOV R0, #12H
ADD A, R0   ; Result = 37H
HERE: SJMP HERE

(b) Subtraction
MOV A, #50H
MOV R1, #20H
SUBB A, R1
SJMP $

(c) Multiplication
MOV A, #12H
MOV B, #05H
MUL AB
SJMP $

(d) Division
MOV A, #40H
MOV B, #08H
DIV AB
SJMP $
