Program Code
External Interrupt 0 Example
ORG 0000H
LJMP MAIN

ORG 0003H        ; INT0 ISR
INC P1
RETI

MAIN: MOV IE, #81H   ; Enable EX0
      MOV TCON, #01H ; Edge triggered
      MOV P1, #00H
HERE: SJMP HERE
END
Timer0 Interrupt Example
ORG 0000H
LJMP MAIN

ORG 000BH      ; Timer0 ISR
CPL P1.0
RETI

MAIN: MOV TMOD, #01H
      MOV IE, #82H     ; Enable Timer0 Interrupt
      SETB TR0
      SJMP $
END
