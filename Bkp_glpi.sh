#!/bin/bash
#Script Feito por Felipe Alves
#Está sendo adequado ainda para funcionar 100%, não está funcional para usar, por enquanto;
#Entrando na pasta raiz e criando a pasta de backup
cd /
mkdir /mnt/backups

#Diretório de backup do GLPI
DIR="/mnt/backups";

# Define do nome do arquivo de backup com a data atual do backup
DB_GLPI="DB_GLPI-`date +%d_%m_%Y-%H_%M`"

# Gerando o arquivo SQL.
mysqldump --host=LOCALHOST --user=glpi_usuario --password=glpi_senha --databases nome_banco > $DIR/$DB_GLPI.sql
#
# Verifica se o diretório existe, se não ele irá criar e dar permissão
if [ ! -d $DIR ]; then
	mkdir $DIR
	chmod -R 0777 $DIR
fi

# Abrindo o diretório
cd $DIR

# Compactando o arquivo para que não fique muito grande
tar -zvcf $DB_GLPI.tar.gz $DB_GLPI.sql

# Removendo o arquivo original para liberar espaço
rm -f $DIR/$DB_GLPI.sql

