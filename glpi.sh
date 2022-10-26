#!/bin/bash
#Script criado por Felipe Alves

echo "Atualizando o Servidor"
apt-get update && apt-get upgrade -y

echo "Instalando o Docker"
curl -fsSL https://get.docker.com | sh

echo "Baixando os arquivos do Docker-Compose"
curl -L https://github.com/docker/compose/releases/download/1.25.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo "Criação de diretorio para aplicabilidade da persistencia de dados"
cd /opt 
mkdir GLPI
cd GLPI
git clone https://github.com/FelipeAlvesG/GLPI_Docker.git

mkdir -p ./var/www/html/glpi \
         ./var/lib/mysql

chown 472:472 ./var/lib/mysql \
              ./var/lib/mysql

