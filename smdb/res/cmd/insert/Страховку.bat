
chcp 65001

set sourceDir=%~dp0
cd ..
cd ..

set /p "contactId=ID договора: "
set /p "employeeId=ID сотрудника: "

set saferQuery=insert into Safers (saferContactId, EmployeeId) values (^
    %contactId%, %employeeId%);

sqlite3 auto.db "%saferQuery%"

cd "%sourceDir%"