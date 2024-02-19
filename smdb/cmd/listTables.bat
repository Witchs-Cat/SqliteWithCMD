set sourceDir=%~dp0
cd ..
sqlite3 auto.db ".tables"
pause