10 S=RND(-TI):FOR T=54272 TO 54296:POKE T,0 15 NEXT T:POKE 54296,15:POKE 54277,10
20 POKE 53281fO:PRINTCHR$(147)"DICE"
25 PRINT
30 PRINT"ENTER TO THROW" 35 INPUT
40 PRINTCHR$(147)
45 IF AO1 THEN 120 |J 50 FOR A=l TO
55 X=INT(RND(1)*6+1)
60 Y=INT(RND(1)*6+1)
65 D=0
70 ON GOSUB 125,140,160,185,215,250
75 D=5
80 ON GOSUB 125,140,160,185,215,250 LJ
85 N=INT(RND(l)*200+l)
90 POKE 54273,N:POKE 54272,N+50
95 POKE 54276,33 \J
100 GOSUB 290
105 NEXT
110 PRINT"TOTAL THROW=";X+Y
115 GOTO 25
120 POKE 54296,0:POKE 53281,6:END
125 REM #1
130 POKE 1560+D,81:POKE 55832+D,X+l LJ 135 RETURN
140 REM #2 ji
145 POKE 1519+D,81:POKE 55791+D,X+1 150 POKE 1601+D,81:POKE 55873+D,Y+l
155 RETURN
160 REM #3
165 POKE 1519+D,81:POKE 55791+D,X+1 170 POKE 1560+D,81:POKE 55832+D,Y+l
175 POKE 1601+D,81:POKE 55873+D,X+l
180 RETURN 185 REM # 4
190 POKE 1519+D,81:POKE 55791+D,X+1
195 POKE 1521+D,81:POKE 55793+D,Y+l
200 POKE 1599+D,81:POKE 55871+D,X+1
205 POKE 1601+D,81:POKE 55873+D,Y+l
210 RETURN
215 REM #5
220 POKE 1519+D,81:POKE 55791+D,X+1
225 POKE 1521+D,81:POKE 55793+D,Y+l
230 POKE 1560+D,81:POKE 55832+D,X+l LJ
235 POKE 1599+D,81:POKE 55871+D,Y+1
240 POKE 1601+D,81:POKE 55873+D,X+l
245 RETURN
250 REM #6
255 POKE 1519+D,81:POKE 55791+D,X+1
260 POKE 1520+D,81:POKE 55792+D,Y+l
265 POKE 1521+D,81:POKE 55793+D,X+l LJ 270 POKE 1599+D,81:POKE 55871+D,Y+1
176
Program 36-1—cont. Electronic Dice Program Listing.
275 POKE 1600+D,81:POKE 55872+D,X+l
280 POKE 1601+D,81:POKE 55873+D,Y+l
285 RETURN
290 FOR T=l TO 10:NEXT
295 POKE 54276,32 300 IF AO5
