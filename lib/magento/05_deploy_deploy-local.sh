#!/usr/bin/env bash
# Deploy script for Magento

git pull origin develop

composer install

php bin/magento setup:upgrade
php bin/magento cache:flush
php bin/magento cache:clean
php bin/magento setup:di:compile
php bin/magento setup:static-content:deploy
