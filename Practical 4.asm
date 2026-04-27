Program Code

(a) Logical AND
MOV A, #0F5H
MOV R0, #0A3H
ANL A, R0
SJMP $

(b) Logical OR
MOV A, #55H
MOV R1, #AAH
ORL A, R1
SJMP $

(c) Logical XOR
MOV A, #5AH
MOV R2, #3CH
XRL A, R2
SJMP $

(d) Complement and Clear
MOV A, #96H
CPL A
CLR C
SJMP $

(e) Rotate Left/Right
MOV A, #09H
RL A
RR A
SJMP $

(f) Swap Nibbles
MOV A, #3CH
SWAP A
SJMP $
