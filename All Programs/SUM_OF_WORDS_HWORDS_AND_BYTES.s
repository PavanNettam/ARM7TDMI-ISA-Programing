//TO FIND SUM OF WORD DATA IN LOCATION A AND STORE IN LOCATION B
//TO FIND SUM OF HALF WORD DATA IN LOCATION C AND STORE IN LOCATION D
//TO FIND SUM OF BYTES IN LOCATION E AND STORE IN LOCATION F
.DATA
A: .WORD 1,2,3,4,5
B: .WORD 0
C: .HWORD 1,2,3,4,5
D: .HWORD 0
E: .BYTE 1,2,3,4,5
F: .BYTE 0
.TEXT
//FINDING SUM OF WORDS IN LOCATION A
LDR R0,=A
LDR R1,=B
MOV R10,#0 //COUNT REG
MOV R9,#0  //SUM REG
LOOP1:
LDR R2,[R0]
ADD R9,R9,R2
ADD R0,R0,#4
ADD R1,R1,#4
ADD R10,R10,#1
CMP R10,#5
BNE LOOP1
STR R9,[R1]
//FINDING SUM OF HALF WORDS IN LOCATION C
LDR R0,=C
LDR R1,=D
MOV R10,#0 //COUNT REG
MOV R8,#0  //SUM REG
LOOP2:
LDR R2,[R0]
ADD R8,R8,R2
ADD R0,R0,#4
ADD R1,R1,#4
ADD R10,R10,#1
CMP R10,#5
BNE LOOP2
STR R8,[R1]
//FINDING SUM OF BYTES IN LOCATION E
LDR R0,=E
LDR R1,=F
MOV R10,#0 //COUNT REG
MOV R7,#0  //SUM REG
LOOP3:
LDR R2,[R0]
ADD R7,R7,R2
ADD R0,R0,#4
ADD R1,R1,#4
ADD R10,R10,#1
CMP R10,#5
BNE LOOP3
STR R7,[R1]