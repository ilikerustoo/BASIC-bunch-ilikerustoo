1000 S=RND(-TI):REM RNG NUMBER GENERATOR
1030 FOR X=1 TO 52
1040 A(X)=X
1050 NEXT X
1060 FOR Y=1 TO 52
1070 X=INT(RND(1)*52+1)
1080 IF A(X)=0 THEN 1070
1090 A(X)=0
1100 B(Y)=X
1110 NEXT Y
1120 FOR A=1 TO 52
1130 PRINT B(A);"
1140 NEXT A
1150 END
