@REM @echo off
cd ..
cd ..

set query=create table Transports (^
    id INTEGER PRIMARY KEY AUTOINCREMENT, ^
    clientId INTEGER NOT NULL, ^
    saferId INTEGER NOT NULL);

sqlite3 auto.db "%query%"