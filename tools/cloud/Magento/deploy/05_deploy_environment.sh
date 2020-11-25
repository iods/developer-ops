#!/bin/bash
# Runs a Magento 2 deployment based on developer/production setup.

ENVIRONMENT=developer

COMPOSER=$(which composer)

if [[ $ENVIRONMENT == "production" ]]; then
    $COMPOSER install --no-dev
else
    $COMPOSER install
fi

php bin/magento maintenance:enable
php bin/magento setup:upgrade
php bin/magento cache:enable

if [[ $ENVIRONMENT == "production" ]]; then
    php bin/magento deploy:mode:set production --skip-compilation \
    && php bin/magento config:set dev/js/move_script_to_bottom 1 \
    && php bin/magento config:set dev/js/enable_js_bundling 0 \
    && php bin/magento config:set dev/js/merge_files 1 \
    && php bin/magento config:set dev/js/minify_files 1 \
    && php bin/magento config:set google/analytics/active 1 \
    && php bin/magento config:set design/head/default_robots 'INDEX,FOLLOW'
else
    php bin/magento deploy:mode:set developer \
    && php bin/magento config:set dev/js/move_script_to_bottom 0 \
    && php bin/magento config:set dev/js/enable_js_bundling 0 \
    && php bin/magento config:set dev/js/merge_files 0 \
    && php bin/magento config:set dev/js/minify_files 0 \
    && php bin/magento config:set google/analytics/active 0 \
    && php bin/magento config:set design/head/default_robots 'NOINDEX,NOFOLLOW'
fi

php bin/magento setup:di:compile
php bin/magento setup:static-content:deploy -f
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento cache:flush
php bin/magento maintenance:disable
