
@ECHO off

IF EXIST %CD%\include (
	RD /S/Q %CD%\include
	MKDIR %CD%\include
) 
ROBOCOPY /s %CD%\src\windows %CD%\include /NFL /NDL /NJH /NJS /nc /ns /np
ROBOCOPY /s %CD%\src %CD%\include /NFL /NDL /NJH /NJS /nc /ns /np
RD /S/Q %CD%\include\windows
