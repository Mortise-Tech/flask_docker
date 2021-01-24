#!/bin/sh

if [ "$DATABASE" = "sqlite3" ]
then 
    echo "Waiting for sqlite3..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
        sleep 0.1
    done

    echo "Sqlite3 started"
fi

exec "$@"