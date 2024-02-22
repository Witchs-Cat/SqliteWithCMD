
@echo off
chcp 65001

set sourceDir=%~dp0
cd ..
cd ..

set /p "saferName=Тип страховки: "

set saferQuery=insert into SaferTypes (Name) values (^
    '%saferName%');

sqlite3 auto.db "%saferQuery%"

cd "%sourceDir%"
@echo on