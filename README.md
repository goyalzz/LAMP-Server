# Docker LAMP Server #
> Linux Apache2 MariaDB PHP 7.2

## Docker Hub Repository ##
![Docker Hub Repository](https://github.com/goyalzz/LAMP-Server/blob/master/Docker%20PHP%20Lamp%20Stack.png?raw=true "Docker Hub")
```docker pull goyalzz/lamp-server```

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
