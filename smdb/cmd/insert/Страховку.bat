set sourceDir=%~dp0
cd ..
cd ..

sqlite3 auto.db "insert into values ()"

cd "%sourceDir%"