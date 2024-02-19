@REM @echo off

set query=create table Employees (^
    id INTEGER PRIMARY KEY AUTOINCREMENT, ^
    givenName TEXT NOT NULL);

"../../sqlite3" "../../auto.db"  "%query%"