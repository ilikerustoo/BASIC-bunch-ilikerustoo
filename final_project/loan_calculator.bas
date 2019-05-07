100 REM: LOAN CALCULATOR
110 REM: ILIKERUSTOO
111 REM: MOHAMMAD KHAN
112 REM: ALLEGHENY COLLEGE
120 CLR:PRINT CHR$(147):BL$="            "
130 PRINT"loan calculator"
140 PRINT
150 INPUT "loan amount";A
155 GOSUB 1000: IF A = 0 THEN 150
160 INPUT"interest rate";R
170 INPUT"length of loan (months)";N
180 R = ABS(R):M = R/1200
190 GOSUB 800:W = 1
200 FOR J = 1 TO N:W = W*(1+M):NEXT
210 P = (A*M*W)/(W-1)
220 P =  INT(P*100+.99):P = P/100
230 PRINT"monthly payment is";P
240 FP = P
250 PRINT"next action:"
270 PRINT"1 - monthly analysis"
280 PRINT"2 - override payment"
290 PRINT"3 - start over"
300 PRINT"4 - end"
310 INPUT C
320 ON C GOTO 440,400,120,370
330 PRINT"choices are 1,2,3,4"
340 GOTO 250
370 END
400 PRINT
410 INPUT"monthly payment";P
420 GOTO 240
440 GOSUB 450:GOTO 510
450 GOSUB 800
460 PRINT TAB(5);"remaining";
470 PRINT TAB(17);"---interest---"
480 PRINT"mo. balance";TAB(16);
490 PRINT"month to date"
500 RETURN
510 B = A*100:TT = 0:TP = 0:L = 0
520 P = P*100:R$ = "":FOR J = 1 TO N
530 T = M*B:T = INT(T+.5)
540 IF J = N THEN P = B+T
550 TP = TP+P:B = B-P+T:TT = TT+T
560 IF B < 0 THEN GOSUB 2000
570 IF R$ = "T" THEN 690
580 W = B:GOSUB 900:B$ = S$
590 W = T:GOSUB 900:T$ = RIGHT$(S$,8)
600 W = TT:GOSUB 900:TT$ = " "+S$
605 J$ = STR$(J):J$ = RIGHT$(J$,LEN(J$)-1)
610 PRINT J$;TAB(4);B$;T$;TT$
620 L = L+1:IF L < 12 THEN 690
630 PRINT"press key to go on";
640 PRINT" (t = totals)";
650 GET R$:IF R$ = "" THEN 650
660 L = 0:GOSUB 450
670 IF R$ <> "T" THEN 690
680 PRINT"calculating totals....."
690 NEXT
700 PRINT:PRINT "last payment =";
710 PRINT P/100
720 PRINT:PRINT"total payment =";
730 PRINT  TP/100
740 PRINT:PRINT"monthly payment was";FP
750 PRINT
760 PRINT"press any key to continue"
770 GET X$:IF X$ = "" THEN 770
780 P = FP:GOTO 240
800 PRINT CHR$(147):PRINT A;"for";N;
810 PRINT"mo. at";R;"%"
820 RETURN
900 W = INT(W):S$ = STR$(W)
910 K = LEN(S$)-1:S$ = MID$(S$,2,K)
920 IF K = 1 THEN S$ = BL$+".0"+S$:RETURN
930 IF K = 2 THEN S$ = BL$+"."+S$:RETURN
940 D$ = "."+RIGHT$(S$,2)
950 S$ = LEFT$(S$,K-2)+D$
960 S$ = LEFT$(BL$,8-K)+S$
970 RETURN
1000 A = ABS(A):A = INT(A)
1010 IF A < 1000000 THEN RETURN
1020 PRINT"too large an amount"
1030 A = 0:RETURN
2000 P = P+B:TP = TP+B:B = 0:RETURN
