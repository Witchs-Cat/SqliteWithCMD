@echo off
cd ..
cd ..

@REM set UTF-8 decoding
chcp 65001

set /p "givenName=Введи имя: "
set /p "middleName=Введи фамилию: "
set /p "secondName=Введи отчество: "
set query=^
    insert into Clients (givenName, middleName, secondName) ^
    values ('%givenName%', '%middleName%', '%secondName%');
sqlite3 auto.db "%query%"

cd "cmd/select"
Страхователи.bat