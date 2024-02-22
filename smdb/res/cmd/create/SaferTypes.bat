@REM @echo off

set sourceDir=%~dp0
cd ..
cd ..

set query=create table SaferTypes (^
    id INTEGER PRIMARY KEY AUTOINCREMENT, ^
    Name TEXT NOT NULL);

sqlite3 auto.db "%query%"

cd "%sourceDir%"