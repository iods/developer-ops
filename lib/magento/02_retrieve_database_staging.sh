ssh \
    -i env/magento_cloud \
    ent-nv43ukrsffiau-production-cot4mvi@ssh.us-3.magento.cloud \
    bash -c "'
    if true; then
       echo Starting a database dump.
       mysqldump \
            -h 127.0.0.1 --user=${CLOUD_PRODUCTION_MYSQL_USER} --password=${CLOUD_PRODUCTION_MYSQL_PASSWORD} --single-transaction --triggers ${CLOUD_PRODUCTION_MYSQL_DATABASE} \
            | gzip - > /tmp/db.prod.sql.gz
       echo A database backup was created.
    else
        logout
    fi
'"
rsync \
    - a \
    ent-nv43ukrsffiau-production-cot4mvi@ssh.us-3.magento.cloud:/tmp/db.prod.sql.gz \
    data/backup.sql.gz
