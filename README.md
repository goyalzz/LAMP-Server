# Docker LAMP Server #
> Linux Apache2 MariaDB PHP 7.2

## Docker Hub Repository ##
```docker pull goyalzz/lamp-server```
![docker pull goyalzz/lamp-server](https://github.com/goyalzz/LAMP-Server/blob/master/Docker%20PHP%20Lamp%20Stack.png?raw=true "Docker Hub")

### Entry Point ###
`/startup.sh`

### Mount Volumes ###
- For PHP Code `/var/www/html`
- Start-Up Script `/startup.sh`
- Maria DB `/var/lib/mysql`

# Docker Compose #
git clone `https://github.com/goyalzz/LAMP-Server.git`
```docker-compose up -d --remove-orphans```
1. Start PHP-Lamp Server
2. Start PhpMyAdmin

### Environment Variables ###
- MYSQL_ROOT_PASSWORD: root

### Change Maria DB Data Path ###
1. `mkdir /mnt/mysql-data`
2. `chown -R mysql:mysql /mnt/mysql-data`
3. `mysql -u root -p -e "SELECT @@datadir;"`
4. `service mysql stop`
5. `service mysql status`
6. `cp -R -p /var/lib/mysql/* /mnt/mysql-data`
7. `vi /etc/mysql/mariadb.conf.d/50-server.cnf`
    i. Change Data Directory `datadir = /mnt/mysql-data`
8. `service mysql restart`
9. `mysql -u root -p -e "SELECT @@datadir;"`
