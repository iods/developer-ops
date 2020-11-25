#!/usr/bin/env bash
# Connection to Magento Cloud Environments
#
# - Connection to the develop environment through SSH.
#
# Author: Lippert Developers
# Copyright: Copyright (c) 2020, Lippert Components, Inc.
#
# All shell scripts should follow this style guide provided
# by Google: https://google.github.io/styleguide/shellguide.html.

set -o errexit
set -o pipefail
set -o xtrace

source .config/env/cloud.env

ssh \
    -A \
    ${CLOUD_STAGING_SSH_URL} \
    bash -c "'
    if true; then
        cd /tmp
        rm database.sql
        echo Starting a database import for Staging.
        mysql -h ${CLOUD_STAGING_MYSQL_HOST} --user=${CLOUD_STAGING_MYSQL_USER} --password=${CLOUD_STAGING_MYSQL_PASSWORD} ${CLOUD_STAGING_MYSQL_DATABASE} \
            'DROP DATABASE ${CLOUD_STAGING_MYSQL_DATABASE}'; \
            'CREATE DATABASE ${CLOUD_STAGING_MYSQL_DATABASE}';
        mysql \
            -h ${CLOUD_STAGING_MYSQL_HOST} --user=${CLOUD_STAGING_MYSQL_USER} --password=${CLOUD_STAGING_MYSQL_PASSWORD} ${CLOUD_STAGING_MYSQL_DATABASE} < backup.sql
        echo A database is being imported
        echo Transfer completed.
        echo Goodbye.
    else
        logout
    fi
'"

if [ $? != "0" ]; then
    echo "Connection failed to the develop environment. Call Stillson."
fi


$ chassy cloud sync staging
