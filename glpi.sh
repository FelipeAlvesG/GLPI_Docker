#!/bin/bash
#Script criado por Felipe Alves
#Antes de Executar o Script, instale o GIT na máquina


echo "======================================"
echo "      Atualizando o Servidor"
echo "======================================"
apt-get update && apt-get upgrade -y
#yum check-update

echo "======================================"
echo "        Instalando o Curl e o Docker"
echo "======================================"
apt-get install curl -y
curl -fsSL https://get.docker.com | sh
#systemctl start docker
#systemctl status docker

echo "======================================"
echo "Baixando os arquivos do Docker-Compose"
echo "======================================"
curl -L https://github.com/docker/compose/releases/download/1.25.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo "=========================================================================="
echo "    Criação de diretorio para aplicabilidade da persistencia de dados"
echo "=========================================================================="
cd /opt 
mkdir GLPI
cd GLPI
git clone https://github.com/FelipeAlvesG/GLPI_Docker.git

mkdir -p ./var/www/html/glpi \
         ./var/lib/mysql

chown 472:472 ./var/lib/mysql \
              ./var/lib/mysql

docker-compose up -d