@echo off

echo Initializing...
mkdir C:\Tools\elm-new

echo Downloading...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://codeload.github.com/simonewebdesign/elm-new/zip/v1.3.0', 'C:\Tools\elm-new\elm-new.zip')"

echo Extracting...
call :unzip "C:\Tools\elm-new" "C:\Tools\elm-new\elm-new.zip"

echo Installing...
robocopy C:\Tools\elm-new\elm-new-1.3.0 C:\Tools\elm-new /e >nul 2>&1

echo Cleaning...
del C:\Tools\elm-new\elm-new.zip
rmdir /s /q C:\Tools\elm-new\elm-new-1.3.0

echo Done!
exit /b

:unzip <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
