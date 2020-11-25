#!/bin/bash
# Review the DB for tables based on filters, then ignore them from a dump

CLOUD_MYSQL_HOST=XXXXXXXXXX
CLOUD_MYSQL_USER=XXXXXXXXXX
CLOUD_MYSQL_PASS=XXXXXXXXXX
CLOUD_MYSQL_DATABASE=XXXXXXXXXX

IGNORE_TABLES=/tmp/${CLOUD_MYSQL_DATABASE}_tables.txt

[[ -f $IGNORE_TABLES ]] && rm $IGNORE_TABLES

mysql \
    -N "-h${CLOUD_MYSQL_HOST} -u${CLOUD_MYSQL_USER} -p${CLOUD_MYSQL_PASS}" -e "SHOW TABLES LIKE '_log%';" ${CLOUD_MYSQL_DATABASE} >> $IGNORE_TABLES
mysql \
    -N "-h${CLOUD_MYSQL_HOST} -u${CLOUD_MYSQL_USER} -p${CLOUD_MYSQL_PASS}" -e "SHOW TABLES LIKE 'sales\_%';" ${CLOUD_MYSQL_DATABASE} >> $IGNORE_TABLES
mysql \
    -N "-h${CLOUD_MYSQL_HOST} -u${CLOUD_MYSQL_USER} -p${CLOUD_MYSQL_PASS}" -e "SHOW TABLES LIKE 'quote%';" ${CLOUD_MYSQL_DATABASE} >> $IGNORE_TABLES

mysqldump \
    --no-data \
    --skip-lock-tables \
    "-h${CLOUD_MYSQL_HOST}" -u${CLOUD_MYSQL_USER} -p${CLOUD_MYSQL_PASS} ${CLOUD_MYSQL_DATABASE} | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'

echo

bash -c \
    "mysqldump $(cat ${IGNORE_TABLES} | xargs -I{} printf '--ignore-table '${CLOUD_MYSQL_DATABASE}'.{} ') --insert-ignore --skip-triggers --no-create-info --skip-lock-tables \"-h${CLOUD_MYSQL_HOST}\" \"-u${CLOUD_MYSQL_USER}\" \"-p${CLOUD_MYSQL_PASS}\" \"${CLOUD_MYSQL_DATABASE}\""
