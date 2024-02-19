set sourceDir=%~dp0
cd ..
cd ..

sqlite3 auto.db "select * from Employees;"

cd "%sourceDir%"