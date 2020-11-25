#!/bin/bash
# Update permissions within a Magento filesystem

find . -type f -exec chmod 644 {} \;
find . -type d -exec chmod 755 {} \;

find ./var -type d -exec chmod 777 {} \;
find ./var -type f -exec chmod 777 {} \;

find ./generated -type d -exec chmod 777 {} \;
find ./generated -type f -exec chmod 777 {} \;

find ./pub -type f -exec chmod 777 {} \;

chmod 777 ./app/etc
chmod 644 ./app/etc/*.xml

chmod -R USER:GROUP .

chmod u+x bin/magento
