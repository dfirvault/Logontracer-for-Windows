@echo off
start "" "C:\Users\dfir\AppData\Local\Programs\neo4j-desktop\Neo4j Desktop 2.exe"
timeout /t 5 /nobreak >nul
start "SpiderFoot" cmd /k "python C:\Tools\LogonTracer\logontracer.py -r -o 8080 -u neo4j -p training -s localhost"
timeout /t 5 /nobreak >nul
start "Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe" http://127.0.0.1:8080/
