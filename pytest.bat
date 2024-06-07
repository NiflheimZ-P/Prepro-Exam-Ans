@echo off

:: Check if Python is installed
py --version >nul 2>&1
if %errorlevel% == 0 (
  echo Python is installed.
) else (
  echo Python is not installed.
  color 4b
  goto end
)

:: Check if VS Code is installed
for %%a in ("%ProgramFiles%\Microsoft VS Code\Code.exe" "%LocalAppData%\Programs\Microsoft VS Code\Code.exe") do (
  if exist "%%a" (
    set VSCODE_PATH="%%a"
    goto VS_CHECK
  )
)

:: VS Code not found
echo VS Code is not installed.
color 4b
goto end

:VS_CHECK
:: Create a temporary test Python file
echo print('============ Hello, world! ============') > test.py

:: Open the file in VS Code and run it
start "" "%VSCODE_PATH%" test.py >nul 2>&1
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" https://ijudge.it.kmitl.ac.th
py test.py
if %errorlevel% == 0 (
  echo VS Code opened test.py and executed it successfully.
) else (
  echo VS Code failed to open or execute test.py.
  color 4b
  goto end
)


:: Clean up: Delete the test file
timeout 10
del test.py

:: Stop VS Code if it's running
taskkill /f /im code.exe >nul 2>&1

:: Remove user data directories
rd /s /q "%APPDATA%\Code"

start "" "%VSCODE_PATH%" >nul 2>&1

:: Success message
echo All operations completed successfully.
color 2b

:: Delete the batch script itself
del "%~f0"

:end
pause