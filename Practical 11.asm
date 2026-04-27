Program Code
A. Running LED Pattern
MOV P1, #01H

RUN:
    ACALL DELAY
    RL P1
    SJMP RUN
B. Left–Right Flowing Pattern
MOV P1, #01H

FLOW:
    MOV R0, #08      ; 8 shifts left
LEFT:
    RL P1
    ACALL DELAY
    DJNZ R0, LEFT

    MOV R0, #08
RIGHT:
    RR P1
    ACALL DELAY
    DJNZ R0, RIGHT
    SJMP FLOW
Delay Routine
DELAY:
    MOV R6, #255
H1: MOV R7, #255
H2: DJNZ R7, H2
    DJNZ R6, H1
    RET
