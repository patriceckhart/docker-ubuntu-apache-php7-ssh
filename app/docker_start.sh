#!/bin/bash

rm /var/run/apache2/*
rm /var/run/mysqld/*
rm /var/run/crond.pid

chown -R www-data:www-data /app

service apache2 start
service apache2 status

mkdir /var/log/supervisor

/usr/bin/supervisord
