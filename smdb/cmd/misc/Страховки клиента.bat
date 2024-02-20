set sourceDir=%~dp0
cd ..
cd ..

chcp 65001

set /p "clientId=ID клиента: "

set query=select * from Transports^
    where clientId IN (clientId);

sqlite3 auto.db "%query%"

cd "%sourceDir%"