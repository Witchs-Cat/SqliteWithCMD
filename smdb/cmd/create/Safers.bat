@REM @echo off
cd ..
cd ..

set query=create table Safers (^
    id INTEGER PRIMARY KEY AUTOINCREMENT, ^
    saferContactId INTEGER NOT NULL, ^
    employeeId INTEGER NOT NULL);

sqlite3 auto.db "%query%"