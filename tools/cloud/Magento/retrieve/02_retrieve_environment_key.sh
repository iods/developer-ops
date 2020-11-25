#!/bin/bash
# Use ssh to get env.php key from server.

CLOUD_SSH_USER=ssh@magentocloud.com

ssh \
    $CLOUD_SSH_USER \
    -C 'grep "'\''key'\''" /var/www/app/app/etc/env.php'  | awk '{ print $3 }'

dev:console

$encryptor = $di->get(\Magento\Framework\Encryption\EncryptorInterface::class);
$encryptor->decrypt('value from remote database core_config_data table goes here');
