@echo off

setlocal

set USERPROFILE=%USERPROFILE%
set BATCH_FILE=%~f0

:: Enable showing file extensions
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f

echo Downloading and extracting extensions.rar...

curl "https://portal.it.kmitl.ac.th:4081/internal/dologin.php" ^
  -H "Cache-Control: max-age=0" ^
  -H "Connection: keep-alive" ^
  -H "Content-Type: application/x-www-form-urlencoded" ^
  --data-raw "kerio_username=Maxhub+Peer+Tutor3&kerio_password="

curl -o "%USERPROFILE%\.vscode\extensions.rar" "http://10.30.4.53/prepro/extensions.rar"

curl "https://portal.it.kmitl.ac.th:4081/internal/logout"

"C:\Program Files\WinRAR\WinRAR.exe" x -o+ "%USERPROFILE%\.vscode\extensions.rar" "%USERPROFILE%\.vscode\"

IF %ERRORLEVEL% EQU 0 (
    msg * Extraction completed successfully.
) ELSE (
    msg * /!\ Failed to extract the .rar file.
    color cf
    pause
)

:: Delete the .rar file 
del "%USERPROFILE%\.vscode\extensions.rar"

:: Restart Windows Explorer
taskkill /f /im explorer.exe
timeout /t 1 /nobreak >nul 
start explorer.exe

:: Delete the batch file itself
del "%BATCH_FILE%"
endlocal