
chcp 65001

set sourceDir=%~dp0
cd ..
cd ..

set /p "saferType=ID типа страховки: "

set saferQuery=insert into SaferContact (saferTypeId) values (^
    %saferType%);

sqlite3 auto.db "%saferQuery%"

cd "%sourceDir%"