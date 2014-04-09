@echo off
echo hello > fileio.txt
echo world  >> fileio.txt
set /P answer=Insert: 
echo %answer%  >> fileio.txt
for /f "skip=1 tokens=*" %%A in (fileio.txt) do echo %%A

REM To explain that last horrible looking for loop, it assumes that there is only hello (newline) world in the file. So it just skips the first line and echos only the second.
