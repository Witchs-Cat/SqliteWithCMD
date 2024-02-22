set sourceDir=%~dp0

cd ..
sqlite3 auto.db "drop table if exists 'Clients'"
sqlite3 auto.db "drop table if exists 'SaferTypes'"
sqlite3 auto.db "drop table if exists 'Safers'"
sqlite3 auto.db "drop table if exists 'Transports'"
sqlite3 auto.db "drop table if exists 'Assessments'"
sqlite3 auto.db "drop table if exists 'Employees'"
sqlite3 auto.db "drop table if exists 'SaferContact'"
pause