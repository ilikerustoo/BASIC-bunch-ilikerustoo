35 DIM CC(15)
40 FOR I=0TO15:READ CC(I):NEXT
50 PRINT":$D3"
60 PRINT" 0 black"
62 PRINT" 1 white"
64 PRINT" 2 red"
66 PRINT" 3 cyan"
68 PRINT" 4 purple"
70 PRINT" 5 green"
72 PRINT" 6 blue"
74 PRINT" 7 yellow"
76 PRINT" 8 orange"
78 PRINT" 9 brown"
80 PRINT"10 light red"
82 PRINT"11 grey 1"
84 PRINT"12 grey 2"
86 PRINT"13 light green"
88 PRINT"14 light blue"
90 PRINT"15 grey 3"
100 PRINT
105 PRINT" screen, border, or text ";
110 INPUT A$
120 PRINT
130 INPUT"color number";N
135 IF N<0 OR N> 15 THEN 50
140 IF A$="S" THEN POKE 53281,N
150 IF A$="B" THEN POKE 53280,N
160 IF A$<>"T" THEN 50
165 PRINT
170 PRINT CHR$(CC(N)); "colored text"
180 INPUT" press return to continue ";Z
190 GOTO 50
200 DATA 144,5,28,159,156,30,31,158
210 DATA 129,149,150,151,152,153,154,155
220 END 
