#!/bin/bash
# Encrypt a value through terminal.

read -s -p "Enter a value: " VALUE
echo
read -s -p "Enter a password: " PASSWORD
echo

echo "$VALUE" | openssl enc -aes-128-cbc -a -salt -pass pass:$PASSWORD
