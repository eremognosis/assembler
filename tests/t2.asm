// --- BOOTSTRAP ---
@256
D=A
@SP
M=D


@Sys.init$ret.999999
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init$ret.999999)

(Sys.init)
@4000
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M -1
D = M
@3
M = D
@5000
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M -1
D = M
@4
M = D
@Sys.main$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.main
0;JMP
(Sys.main$ret.11)
@SP
AM = M -1
D = M
@6
M = D
(test.LOOP)
@test.LOOP
0;JMP
(Sys.main)

@0
D=A
@SP
A=M
M=D
@SP
M=M+1


@0
D=A
@SP
A=M
M=D
@SP
M=M+1


@0
D=A
@SP
A=M
M=D
@SP
M=M+1


@0
D=A
@SP
A=M
M=D
@SP
M=M+1


@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@4001
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M -1
D = M
@3
M = D
@5001
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M -1
D = M
@4
M = D
@200
D = A
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@1
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
@40
D = A
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@2
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
@6
D = A
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@3
D = D + A
@R13
M = D
@SP
AM = M - 1
D = M
@R13
A = M
M = D
@123
D = A
@SP
A = M
M = D
@SP
M = M + 1
@Sys.add12$ret.34
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.add12
0;JMP
(Sys.add12$ret.34)
@SP
AM = M -1
D = M
@5
M = D
@LCL
D = M
@0
D = D + A
A = D
D = M
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@1
D = D + A
A = D
D = M
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@2
D = D + A
A = D
D = M
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@3
D = D + A
A = D
D = M
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@4
D = D + A
A = D
D = M
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M-1
D = M
A = A-1
M = M +D
@SP
AM = M-1
D = M
A = A-1
M = M +D
@SP
AM = M-1
D = M
A = A-1
M = M +D
@SP
AM = M-1
D = M
A = A-1
M = M +D
@LCL
D = M
@R13
M = D
@5
A = D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
M=D
@ARG
D = M+1
@SP
M=D
@R13
AM=M-1
D=M
@THAT
M=D
@R13
AM=M-1
D=M
@THIS
M=D
@R13
AM=M-1
D=M
@ARG
M=D
@R13
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
(Sys.add12)
@4002
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M -1
D = M
@3
M = D
@5002
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M -1
D = M
@4
M = D
@ARG
D = M
@0
D = D + A
A = D
D = M
@SP
A = M
M = D
@SP
M = M + 1
@12
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M-1
D = M
A = A-1
M = M +D
@LCL
D = M
@R13
M = D
@5
A = D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
M=D
@ARG
D = M+1
@SP
M=D
@R13
AM=M-1
D=M
@THAT
M=D
@R13
AM=M-1
D=M
@THIS
M=D
@R13
AM=M-1
D=M
@ARG
M=D
@R13
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP