@REM @echo off
cd ..
cd ..

set query=create table SaferTypes (^
    id INTEGER PRIMARY KEY AUTOINCREMENT, ^
    Name TEXT NOT NULL);

sqlite3 auto.db "%query%"