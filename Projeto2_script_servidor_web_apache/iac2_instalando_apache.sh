#!/bin/bash

echo "Atualizando o servidor."

apt-get update
apt-get upgrade -y

echo "Instalando o unzip"

apt-get install unzip -y

echo "Instalando o Apache"

apt-get install apache2 -y

echo "Copiando e descompactando arquivos de aplicação na pasta tmp"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos para a pasta do Apache"

cp -R /tmp/*main/* /var/www/html/

echo "Instalação finalizada!"
