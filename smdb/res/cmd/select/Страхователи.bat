set sourceDir=%~dp0
cd ..
cd ..

@echo off
@REM set UTF-8 decoding
chcp 65001

sqlite3 auto.db "select * from Clients;"
pause

cd "%sourceDir%"