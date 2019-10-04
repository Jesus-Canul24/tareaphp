#!/bin/bash
echo "script para instalar lamp"
echo "update del sistema y repositorios"
sudo yum update
sudo yum upgrade
echo "instalar y ejecutar apache"
sudo yum install httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
echo "instala y ejecutar mariadb"
sudo yum install mariadb-server mariadb
sudo systemctl start mariadb 
sudo systemctl enable mariadb.service
echo "instala php y php-mysql y activar los servicios"
sudo yum install php php-mysql
sudo systemctl restart httpd.service
sudo mysql_secure_installation
echo "ha finalizado la instalacion de lamp"
