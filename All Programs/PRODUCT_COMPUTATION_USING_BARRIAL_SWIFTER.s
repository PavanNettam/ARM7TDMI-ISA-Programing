//NOTE: THIS PROGRAM IS SPECIFIC (NOT GENERIC), IT IS DESIGNED TO MULTIPLY 100 AND 70
//TO FIND THE PRODUCT OF TWO NUMBERS USING BARRIAL SWIFTER
//LOGIC:
//100 X 70 (ANY TWO NUMBERS)
//100 X (64+4+2)
//100 X (2^6 + 2^2 + 2^1)
//(100 X 2^6) + (100X 2^2)+ (100X 2^1)
//(100 << 6) + (100 << 2) + (100 << 1)
//WE DECRESE THE SMALLER OF THE TWO NUMBERS FOR THE BETTER PERFORMANCE(THUS WE DECRESED 70 IN THIS CASE)
.TEXT:
MOV R0,#100
MOV R1,#70
MOV R2,#0 //RESULT REG
MOV R3,#0 //TEMP REG
LSL R3,R0,#6 //(100 << 6)
ADD R2,R2,R3 //ADDING THE RESULT TO RESULT REG
LSL R3,R0,#2 //(100 << 2)
ADD R2,R2,R3 //ADDING THE RESULT TO RESULT REG
LSL R3,R0,#1 //(100 << 1)
ADD R2,R2,R3 //ADDING THE RESULT TO RESULT REG

