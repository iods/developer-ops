#!/bin/bash
# Script for testing deployment steps (profiling)

git checkout origin develop

composer install

php bin/magento maintenance:enable

php bin/magento cache:enable

rm -rf var/di/* var/generation/* var/cache/*

php bin/magento setup:di:compile

php bin/magento deploy:mode:set production --skip-compilation

php bin/magento maintenance:enable

php bin/magento setup:upgrade

php bin/magento setup:di:compile

php bin/magento setup:db-schema:upgrade

php bin/magento setup:db-data:upgrade

php bin/magento setup:static-content:deploy

php bin/magento indexer:reindex

php bin/magento maintenance:disable
