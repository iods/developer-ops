#!/bin/bash
# Essentially, Magentogedden script.

CRON_FLAG=/users/home/server/cron.pause

php bin/magento maintenance:enable
echo -n > $CRON_FLAG

php bin/magento deploy:mode:set developer

rm -rf var/di/*
rm -rf var/generation/*

php bin/magento setup:upgrade
php bin/magento setup:di:compile
php bin/magento setup:db-schema:upgrade

php bin/magento deploy:mode:set production --skip-compilation

php bin/magento maintenance:enable

php bin/magento setup:static-content:deploy
php bin/magento indexer:reindex

php bin/magento cache:clean
php bin/magento cache:flush

# Fix Permissions

php bin/magento maintenance:disable


