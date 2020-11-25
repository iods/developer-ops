#!/bin/bash
# Application setup, if DB script updates aren't working from cloud-docker.

php bin/magento config:set dev/css/minify_files 0 --lock-env
php bin/magento config:set dev/css/merge_css_files 0 --lock-env
php bin/magento config:set dev/js/merge_files 0 --lock-env
php bin/magento config:set dev/js/enable_js_bundling 0 --lock-env
php bin/magento config:set dev/js/minify_files 0 --lock-env
php bin/magento config:set dev/template/minify_html 0 --lock-env
php bin/magento config:set dev/static/sign 0 --lock-env
php bin/magento config:set sales_email/general/async_sending 0 --lock-env
php bin/magento config:set payment/checkmo/active 1 --lock-env
php bin/magento config:set system/full_page_cache/caching_application 1 --lock-env

php bin/magento config:set enhancedsmtp/general/enabled 0 --lock-env
php bin/magento config:set enhancedsmtp/advanced/developermode 1 --lock-env
php bin/magento config:set smtp/developer/developer_mode 1 --lock-env
php bin/magento config:set payment/mollie_general/type test --lock-env
php bin/magento config:set payment/mollie_general/debug 1 --lock-env
php bin/magento config:set multisafepay/connect/msp_debug 1 --lock-env
php bin/magento config:set msp_securitysuite_recaptcha/backend/enabled 0 --lock-env
php bin/magento config:set msp_securitysuite_recaptcha/frontend/enabled 0 --lock-env
php bin/magento config:set msp_securitysuite_recaptcha/frontend/enabled_login 0 --lock-env
php bin/magento config:set payment/adyen_abstract/demo_mode 1 --lock-env
php bin/magento config:set googletagmanager2/settings/enabled 0 --lock-env
