SET TARGETPATH=%~dp0sendmail.ini
IF NOT EXIST "%TARGETPATH%" GOTO :ERROR
SET TARGETPATH=%~dp0sendmail.exe
IF NOT EXIST "%TARGETPATH%" GOTO :ERROR
SET TARGETPATH=%~dp0Message.txt
IF NOT EXIST "%TARGETPATH%" GOTO :ERROR
SET TARGETPATH=%~dp0libeay32.dll
IF NOT EXIST "%TARGETPATH%" GOTO :ERROR
SET TARGETPATH=%~dp0ssleay32.dll
IF NOT EXIST "%TARGETPATH%" GOTO :ERROR
SET TARGETPATH=%~dp0Message.txt
"%~dp0sendmail.exe"   -t   0<  "%TARGETPATH%"
SET TARGETPATH=%~dp0error.log
IF NOT EXIST "%TARGETPATH%" GOTO :ERROR2
SET msgboxTitle=PISMO NE OTPRAVLENO!
SET msgboxBody=PISMO NE OTPRAVLENO!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
GOTO :END
:ERROR
SET msgboxTitle=PISMO NE OTPRAVLENO!
SET msgboxBody=PISMO NE OTPRAVLENO!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
GOTO :END
:ERROR2
SET msgboxTitle=Pismo Otpravleno!
SET msgboxBody=Pismo Otpravleno!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
SET msgboxBody=This is my Message Body
:END
