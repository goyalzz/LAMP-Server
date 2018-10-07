# /bin/sh
service mysql start

# Secure MariaDB with password
mysql -h localhost -uroot -ptest mysql -e "SELECT host, user, password, plugin FROM mysql.user LIMIT 0,1;"
mysql -h localhost -uroot -ptest mysql -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('${MYSQL_ROOT_PASSWORD}');"
mysql -h localhost -uroot -ptest mysql -e "UPDATE mysql.user SET plugin = '' WHERE user = 'root' AND host = 'localhost';"
mysql -h localhost -uroot -ptest mysql -e "FLUSH PRIVILEGES;"
mysql -h localhost -uroot -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL ON *.* to root@'%' IDENTIFIED BY 'root';"
mysql -h localhost -uroot -p${MYSQL_ROOT_PASSWORD} mysql -e "FLUSH PRIVILEGES;"
# mysql -h localhost -uroot -proot -e "DROP DATABASE cias;"
# mysql -h localhost -uroot -proot -e "CREATE DATABASE IF NOT EXISTS cias;"
# mysql -h localhost -uroot -proot cias < /var/www/html/cias.sql

service apache2 start

a2enmod rewrite

a2ensite stg.example.com.conf 

sleep infinity
