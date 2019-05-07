PROGRAM series
! add the first 100 terms of a simple series
! True BASIC automatically initializes variables to zero,
! but other languages might not.
LET sum = 0
FOR n = 1 to 100
    LET sum = sum + 1/(n*n)
    PRINT n,sum
NEXT n
END
