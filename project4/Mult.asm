@result
M=0 // result = 0

@i
M=0 // i = 0

(LOOP)
	@i
	D=M
	@R0
	D=M-D
	@END
	D;JEQ // if i < MEM[R0] goto END

	@R1
	D=M
	@result
	M=D+M // result += MEM[R1]

	@i
	M=M+1 // i++

	@LOOP
	0;JMP // goto LOOP

(END)
@result
D=M
@R2
M=D // MEM[R2] = result

(INFINITE_LOOP)
@INFINITE_LOOP
0;JMP
