#!/bin/sh

echo "Iniciando Script"

apt-get update -y

apt-get upgrade -y

apt install apache2 -y

apt install unzip -y

cd /tmp

wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cp -R * /var/www/html

cd /var/www/html

rm index.html

cd linux-site-dio-main

cp -R * /var/www/html


echo "Finalizando"
