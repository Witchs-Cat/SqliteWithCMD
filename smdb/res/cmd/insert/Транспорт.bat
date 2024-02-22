
chcp 65001

set sourceDir=%~dp0
cd ..
cd ..

set /p "clientId=ID клиента: "
set /p "saferId=ID страховки: "

set saferQuery=insert into Transports (clientId, saferId) values (^
    %clientId%, %saferId%);

sqlite3 auto.db "%saferQuery%"

cd "%sourceDir%"