#!/bin/bash


apt install git apache2 unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

chmod 777 /var/www/html
cd /var/www/html
rm -Rf index.html
cd /tmp
mv linux-site-dio-main /var/www/html

