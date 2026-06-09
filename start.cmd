@echo off
REM All Da Notes launcher: serve from localhost for reliable folder restore.
cd /d "%~dp0"
REM Open the browser ~1s later (after the server below is listening), then serve
REM in the foreground so closing this window stops the server.
start "" cmd /c "timeout /t 1 >nul & start """" http://localhost:8765/all-da-notes.html"
python -m http.server 8765
