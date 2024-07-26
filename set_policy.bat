@echo off
setlocal

curl "https://portal.it.kmitl.ac.th:4081/internal/dologin.php" ^
  -H "Cache-Control: max-age=0" ^
  -H "Connection: keep-alive" ^
  -H "Content-Type: application/x-www-form-urlencoded" ^
  --data-raw "kerio_username=Maxhub+Peer+Tutor3&kerio_password="

:: Enable animation effects in accessibility visual effects
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Accessibility" /v AnimationEffects /t REG_DWORD /d 1 /f

:: Enable animation effects in accessibility visual effects
reg add "HKCU\Control Panel\Accessibility" /v AnimationDisabled /t REG_DWORD /d 0 /f

:: Enable menu animations
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f

:: Enable window animations
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f

:: Enable animation effects
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f

:: Enable Animate controls and elements inside windows
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f

:: Enable Animate windows when minimizing and maximizing
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 1 /f

:: Enable Animate windows when minimizing and maximizing via system properties
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 3 /f

:: Enable Animate controls and elements inside windows
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f

:: Enable Animate windows when minimizing and maximizing
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 1 /f

:: Enable Animation effects (enable "Animate controls and elements inside windows")
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewAlphaSelect /t REG_DWORD /d 1 /f

:: Enable taskbar animations
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 1 /f

:: Enable smooth scrolling list boxes
reg add "HKCU\Control Panel\Desktop" /v SmoothScroll /t REG_SZ /d 1 /f

:: Enable transparency effects
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f

:: Set system to dark mode
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 1 /f

:: Modify individual visual effects settings (optional, for full best appearance effect)
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewAlphaSelect /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewShadow /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 1 /f

:: This script sets Windows visual effects to "Adjust for best appearance"
:: Modify the registry to set the visual effects

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9E3E078012000000 /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewAlphaSelect /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewShadow /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ComboBoxAnimation /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v CursorShadow /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DropShadow /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v IconUnderline /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewWatermark /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v MenuAnimation /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v MenuFade /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v SelectionFade /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TooltipAnimation /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v WebView /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v WindowAnimation /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /v "FolderType" /t REG_SZ /d "NotSpecified" /f

:: create python alias
copy "%USERPROFILE%\AppData\Local\Programs\Python\Launcher\py.exe" "%USERPROFILE%\AppData\Local\Programs\Python\Launcher\python.exe"
copy "%USERPROFILE%\AppData\Local\Programs\Python\Launcher\py.exe" "%USERPROFILE%\AppData\Local\Programs\Python\Launcher\python3.exe"

:: --- Telemetry and Privacy Tweaks (for Windows 10/11) ---

:: Disable Advertising ID
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f

:: Disable Location Tracking
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\GlobalPrivacyControl" /v LocationTrackingAllowed /t REG_DWORD /d 0 /f

:: Disable App Telemetry
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationTelemetry" /v AllowTelemetry /t REG_DWORD /d 0 /f

:: Disable Handwriting and Typing Data Collection
reg add "HKCU\SOFTWARE\Microsoft\Input\TIP" /v Policies /t REG_DWORD /d 255 /f

:: Disable Windows Defender Sample Submission (for Windows 10)
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v SubmitSamplesConsent /t REG_DWORD /d 2 /f

:: Enable showing file extensions
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f

:: --- End of Telemetry and Privacy Tweaks ---

rem Set registry key value
reg add "HKCU\Control Panel\Desktop" /v JPEGImportQuality /t REG_DWORD /d 100 /f


:: Disable pointer acceleration (EPP)
reg add "HKCU\Control Panel\Mouse" /v MouseAcceleration /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v EnhancedPointerPrecision /t REG_DWORD /d 0 /f

set "wallpaper_url=https://512pixels.net/downloads/macos-wallpapers/10-11.jpg"

:: Extract file extension from URL
for %%a in ("%wallpaper_url%") do set "file_ext=%%~xa"

:: Download wallpaper
echo Downloading wallpaper from %wallpaper_url%...
curl -L -o "%USERPROFILE%\Pictures\wallpaper%file_ext%" "%wallpaper_url%"
if %errorlevel%==0 (
    :: Set wallpaper (requires absolute path)
    %SystemRoot%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters 
    timeout /t 2 /nobreak > nul
    REG ADD "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%USERPROFILE%\Pictures\wallpaper%file_ext%" /f
    timeout /t 2 /nobreak > nul
    REG ADD "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
    timeout /t 2 /nobreak > nul
    REG ADD "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f
    timeout /t 2 /nobreak > nul
    %SystemRoot%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters 
    echo Wallpaper set successfully.
) else (
    echo ERROR: Failed to download wallpaper.
)

:: Restart Windows Explorer
taskkill /f /im explorer.exe
timeout /t 1 /nobreak >nul 
start explorer.exe

echo.
echo Download complete!
del "%~f0"