
from alpine:latest

run apk --no-cache add sqlite

workdir /db

copy auto.db /db/

cmd ["sqlite3", "/data/auto.db"]