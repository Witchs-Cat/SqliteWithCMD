@REM @echo off
cd ..
cd ..

set query=create table SaferContact (^
    id INTEGER PRIMARY KEY AUTOINCREMENT, ^
    saferTypeId INTEGER NOT NULL);

sqlite3 auto.db "%query%"