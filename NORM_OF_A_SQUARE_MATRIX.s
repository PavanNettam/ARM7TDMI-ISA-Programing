//CALCULATING THE NORM OF THE MARTIX
//IF THE GIVEN MATRIX IS STORED IN ROW MAJOR ORDER THEN THIS PROGRAM FINDS THE INFINITE NORM OF THE MATRIX
//ELSE IF THE GIVEN MATRIX IS STORED IN COLUMN MAJOR ORDER THEN THIS PROGRAM FINDS THE 1-NORM OF THE MATRIX
.DATA
A: .WORD 1,-2,3,4,-5,6,-7,8,-9

.TEXT
LDR R0,=A //ADDRESS REG
MOV R2,#0 //ITERATOR FOR THE OUTER LOOP
MOV R3,#-1 //MAXIMUM NORM 
	OUTER:
	MOV R4,#0 //ITERATOR FOR THE OUTER LOOP
	MOV R6,#0 //TEMP NORM
		INNER:
		LDR R5,[R0] //LODING THE ELEMENT FROM THE ADDRESS
		CMP R5,#0
		RSBLT R5,R5,#0 //CMP AND RSBLT TOGETHER FIND THE ABSOLUTE VALUE OF R5 REG
		ADD R6,R6,R5   //ACCUMLATING THE SUM IN R6 REG
		ADD R0,R0,#4 //INCREMENTING THE ADDRESS REG
		ADD R4,R4,#1 //INCREMENTING THE INNER LOOP REG
		CMP R4,#3
		BNE INNER  //LOOP BACK
	CMP R6,R3
	MOVGT R3,R6 //STORING THE MAXIMUM OF NORM AND MAX NORM IN R3
	ADD R2,R2,#1 //INCREMENTING THE OUTER LOOP REG
	CMP R2,#3
	BNE OUTER
.END