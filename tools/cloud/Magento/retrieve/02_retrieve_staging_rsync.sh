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
       echo Starting a database import for Staging.
       mysqldump \
            -h ${CLOUD_STAGING_MYSQL_HOST} --user=${CLOUD_STAGING_MYSQL_USER} --password=${CLOUD_STAGING_MYSQL_PASSWORD} --single-transaction --triggers ${CLOUD_STAGING_MYSQL_DATABASE} \
            | gzip - > /tmp/database.sql.gz
       echo A database backup for staging was created.
       echo Starting a transfer for the database to develop.
       rsync -azvP /tmp/database.sql.gz ssh ${CLOUD_PROJECT_ID}-develop-sr3snxi--mymagento@ssh.us-3.magento.cloud:/tmp
       echo Transfer completed.
       echo Goodbye.
    else
        logout
    fi
'"

if [ $? != "0" ]; then
    echo "Connection failed to the develop environment. Call Stillson."
fi
