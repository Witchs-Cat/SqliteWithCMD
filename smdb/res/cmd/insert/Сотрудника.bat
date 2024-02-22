@echo off

@REM set UTF-8 decoding
chcp 65001

set sourceDir=%~dp0
cd ..
cd ..

set /p "givenName=Введи имя: "
set query=^
    insert into Employees (givenName) ^
    values ('%givenName%');
sqlite3 auto.db "%query%"

cd "cmd/select"
call Сотрудники.bat

cd "%sourceDir%"