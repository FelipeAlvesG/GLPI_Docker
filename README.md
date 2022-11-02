# GLPI com Docker Compose e colocando os dados persistentes
Repositorio para automação da instalção do GLPI com Docker na ultima versão disponivel.
#
## PASSOS DO PROCESSO

#
1º Primeira Coisa a se fazer é montar sua máquina virtual seja local ou em nuvem.

2º Instala o Git na sua VM -> apt-get install git -y

3º Na VM baixa somente o script ".sh" (git clone ...)

4º Dê a permissão de execução ("chmod +x glpi.sh")

5º Execute o script que ele fará o resto para você!

6º no arquivo mariadb.env você tem os atributos de configuração do banco de dados, mude conforme sua necessidade.(RECOMENDO MUDAR)
#

Obs: a imagem docker usada é uma que está disponivel no hub.docker, você pode criar a sua imagem personalizada de acordo com a imagem base original, você quem sabe.