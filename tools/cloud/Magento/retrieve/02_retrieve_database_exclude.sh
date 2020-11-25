#!/usr/bin/env bash

CLOUD_MYSQL_HOST=XXXXXXXXXX
CLOUD_MYSQL_USER=XXXXXXXXXX
CLOUD_MYSQL_PASS=XXXXXXXXXX
CLOUD_MYSQL_DATABASE=XXXXXXXXXX
CLOUD_DATABASE_FILE=database.sql

IGNORED_TABLES=''

for TABLE in "${EXCLUDED_TABLES[@]}"
do :
    IGNORED_TABLES += " --ignore-table=${CLOUD_MYSQL_DATABASE}.${TABLE}"
done

read "Dumping structure." -t 1
echo ""
mysqldump -h ${CLOUD_MYSQL_HOST} -u ${CLOUD_MYSQL_USER} --password=${CLOUD_MYSQL_PASS} --single-transaction --no-data --routines ${CLOUD_MYSQL_DATABASE} > $CLOUD_DATABASE_FILE

echo "or..."
read "Dumping content" -t 1
echo ""
mysqldump -h ${CLOUD_MYSQL_HOST} -u ${CLOUD_MYSQL_USER} --password=${CLOUD_MYSQL_PASS} --no-create-info --skip-triggers ${CLOUD_MYSQL_DATABASE} > $CLOUD_DATABASE_FILE
