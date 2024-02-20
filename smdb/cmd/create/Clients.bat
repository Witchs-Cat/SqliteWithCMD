@echo off

set sourceDir=%~dp0
cd ..
cd ..

set query=create table Clients (^
    id INTEGER PRIMARY KEY AUTOINCREMENT, ^
    givenName TEXT NOT NULL, ^
    middleName TEXT NOT NULL, ^
    secondName TEXT NOT NULL);

sqlite3 auto.db "%query%"

cd "%sourceDir%"