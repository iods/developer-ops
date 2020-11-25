#!/bin/bash
# Enables Maintenance mode using an IP exclude list.

EXCLUDE_IPS='
127.0.0.1,
127.0.0.2,
127.0.0.3,
127.0.0.4,
127.0.0.5'

echo $EXCLUDE_IPS > var/.maintenance.ip

touch var/.maintenance.flag
