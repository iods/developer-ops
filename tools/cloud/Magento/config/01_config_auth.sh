#!/usr/bin/env bash
# Compiles the auth.json file with keys (use .env file)

GITHUB_KEY='XXXXXXXXXXXXXXX'
MAGENTO_USER='XXXXXXXXXXXXXXX'
MAGENTO_KEY='XXXXXXXXXXXXXXX'

json = "
{
    \"github-oauth\": {
        \"github.com\": \"$GITHUB_KEY\"
    },
    \"http-basic\": {
        \"username\": \"$MAGENTO_USER\",
        \"password\": \"$MAGENTO_KEY\"
    }
}
"

echo $json > ~/auth.json
