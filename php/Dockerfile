# https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04#step-2-install-mysql
FROM php:7.2-apache
MAINTAINER Ankush Goyal "ankush@novuse.com"

LABEL Author='Ankush Goyal <goyalankush007@gmail.com>'
LABEL LAMP-Server="0.1"
LABEL Web_Port="80"
LABEL MySql_Port="3306"
LABEL PHP_MyAdmin_Port="8090"
LABEL MARIA_DB_ROOT_PASSWORD="root"

# Environment Variables
ENV MYSQL_ROOT_PASSWORD root

# COPY php.ini /usr/local/etc/php/
RUN apt-get update \
  && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev \
  && docker-php-ext-install pdo_mysql mysqli gd iconv

# Installations
RUN apt-get -y install git htop curl unzip vim wget mysql-server net-tools

COPY ./stg.example.com.conf /etc/apache2/sites-available/
COPY ./hosts /etc/hosts
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN a2enmod rewrite 

# RUN service apache2 restart
WORKDIR /var/log/php/
# RUN a2ensite stg.example.com.conf

COPY ./startup.sh /startup.sh
RUN chmod -R 777 /startup.sh

RUN ls /var/log/php/

EXPOSE 80 3306

ENTRYPOINT ["sh", "-c", "/startup.sh"]
