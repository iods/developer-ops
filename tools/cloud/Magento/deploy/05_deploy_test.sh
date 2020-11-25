#!/bin/bash
# Another deploy steps test for profiling.

php bin/magento maintenance:enable

rm -rf var/cache/*
rm -rf var/di/*
rm -rf var/generation/*
rm -rf var/page_cache/*
rm -rf pub/static/*
rm -rf var/view_preprocessed/*

php bin/magento deploy:mode:set developer
php bin/magento setup:upgrade
php bin/magento setup:di:compile
php bin/magento indexer:reindex
php bin/magento cache:flush
php bin/magento cache:clean
php bin/magento deploy:mode:set production

php bin/magento maintenance:disable
