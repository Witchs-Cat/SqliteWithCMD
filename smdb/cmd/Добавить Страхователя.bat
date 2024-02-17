cd ..

@REM set UTF-8 decoding
chcp 65001

@echo off
set /p "givenName=Введи имя: "
set /p "middleName=Введи фамилию: "
set /p "secondName=Введи отчество: "
sqlite3 auto.db "insert into Clients (givenName, middleName, secondName) values ('%givenName%', '%middleName%', '%secondName%');"

cd "cmd"
Страхователи.bat