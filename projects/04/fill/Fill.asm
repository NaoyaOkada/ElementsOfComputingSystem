@8192 // 32 * 256
D=A
@Width
M=D

(Loop)
    @KBD
    D=M

    @White
    D;JLE

    @ScreenVal
    M=-1
    @ColorJudge
    0;JMP

    (White)
    @ScreenVal
    M=0

    (ColorJudge)

    @i
    M=0
    (WidthLoop)
        @i
        D=M

        @Width
        D=D-M

        @EndWidthLoop
        D;JGE

        @SCREEN
        D=A

        @i
        D=D+M

        @currentRow
        M=D

        @ScreenVal
        D = M

        @currentRow
        A = M
        M = D

        @i
        M=M+1
    @WidthLoop
    0;JMP

    (EndWidthLoop)
@Loop
0;JMP
