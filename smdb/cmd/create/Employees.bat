@echo off

set sourceDir=%~dp0
cd ..
cd ..

set query=create table Employees (^
    id INTEGER PRIMARY KEY AUTOINCREMENT, ^
    givenName TEXT NOT NULL);

sqlite3 auto.db  "%query%"

cd "%sourceDir%"