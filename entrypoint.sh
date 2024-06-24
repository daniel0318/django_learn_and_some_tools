#!/bin/sh

#echo "Waiting for postgres..."
#while ! nc -z my-postgres 5432; do
#  sleep 0.1
#done
#sleep 1
#echo "PostgreSQL started"

python manage.py makemigrations 
python manage.py migrate

echo "my-postgres:5432:postgres:postgres:mypassword" > ~/.pgpass
chmod 600 ~/.pgpass

psql -h my-postgres -U postgres -f /app/companies_insert.sql

exec "$@"
