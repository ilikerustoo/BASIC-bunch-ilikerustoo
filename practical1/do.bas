PROGRAM series_do
! illustrate use of DO LOOP structure
LET sum = 0
LET n = 0
LET relative_change = 1           ! choose large value
DO while relative_change > 0.0001
   LET n = n + 1
   LET newterm = 1/(n*n)
   LET sum = sum + newterm
   LET relative_change = newterm/sum
   PRINT n,relative_change,sum
LOOP
END
