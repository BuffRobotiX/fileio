OPEN "fileio.txt" FOR OUTPUT AS 1
PRINT #1, "hello"
PRINT #1, "world"
CLOSE 1

OPEN "fileio.txt" FOR INPUT AS 1
LINE INPUT #1, A$
LINE INPUT #1, A$
CLOSE 1

PRINT A$
