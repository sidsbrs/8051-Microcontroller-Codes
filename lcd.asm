ORG 0H
			MOV A,#38H
			ACALL CMD_WRT
			ACALL DELAY
			MOV A,#0EH
			ACALL CMD_WRT
			ACALL DELAY
			MOV A,#01H
			ACALL CMD_WRT
			ACALL DELAY
			MOV A,#06H
			ACALL CMD_WRT
			ACALL DELAY
			MOV A,#80H
			ACALL CMD_WRT
			ACALL DELAY
			MOV A,#1CH
			ACALL CMD_WRT
			ACALL DELAY
			MOV A,#'E'
			ACALL DATA_WRT
			ACALL DELAY
			MOV A,#'E'
			ACALL DATA_WRT
			ACALL DELAY
			MOV A,#'E'
			ACALL DATA_WRT
			ACALL DELAY
			
	AGAIN:	SJMP AGAIN
	
	CMD_WRT:	MOV P3,A
			CLR P2.0
			CLR P2.1
			SETB P2.2
			ACALL DELAY
			CLR P2.2
			RET
			
	DATA_WRT:	MOV P3,A
			SETB P2.0
			CLR P2.1
			SETB P2.2
			ACALL DELAY
			CLR P2.2
			RET
			
	DELAY:	MOV R3,#255
	LOOP2:	MOV R4,#255
	LOOP1:	DJNZ R4,LOOP1
			DJNZ R3,LOOP2
			RET
	END
