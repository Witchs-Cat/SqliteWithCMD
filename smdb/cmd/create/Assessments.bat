@echo off/
set sourceDir=%~dp0
cd ..
cd ..

set query=create table Assessments (^
    id INTEGER PRIMARY KEY AUTOINCREMENT, ^
    saferId INTEGER NOT NULL, ^
    pdf TEXT NOT NULL);

sqlite3 auto.db "%query%"

cd "%sourceDir%"