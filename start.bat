@echo off
REM Launches the Jeopardy board over a local web server so YouTube embeds work.
REM (Opening index.html directly as a file:// page causes YouTube "Error 153".)
cd /d "%~dp0"
echo Starting local server at http://lvh.me:8731 ...
start "Jeopardy Server (leave this window open)" /min python -m http.server 8731
timeout /t 1 /nobreak >nul
start "" "http://lvh.me:8731/index.html"
echo.
echo The board opened in your browser.
echo Keep the minimized "Jeopardy Server" window open while you play.
echo Close that window when you are done.
