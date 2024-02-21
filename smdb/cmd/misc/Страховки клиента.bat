set sourceDir=%~dp0
cd ..
cd ..

chcp 65001

set /p "clientId=ID клиента: "

set queryTransport=select saferId from Transports^
    where clientId IN (clientId)

set querySafer=select saferContactId from Safers^
    where id IN (%queryTransport%)

set querySaferContact=select saferTypeId from SaferContact^
    where id IN (%querySafer%)

set querySaferType=select Name from SaferTypes^
    where id in (%querySaferContact%);

sqlite3 auto.db "%querySaferType%"

cd "%sourceDir%"