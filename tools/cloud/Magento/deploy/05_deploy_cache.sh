#!/bin/bash

rm -rf /var/run/nginx-cache/*
rm -rf /var/www/html/var/cache/*

rm -rf /cache/catalog-cache/*
rm -rf /cache/shop-cache/*
rm -rf /cache/nginx-cache/*

redis-cli flushall
