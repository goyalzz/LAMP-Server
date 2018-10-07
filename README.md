# Docker LAMP Server #
> Linux Apache2 MariaDB PHP 7.2

## Docker Hub Repository ##
```docker pull goyalzz/lamp-server```

### Entry Point ###
```/startup.sh```

## Mount Volumes ##
- For PHP Code `/var/www/html`
- Start-Up Script `/startup.sh`
- Maria DB `/var/lib/mysql`

# Docker Compose #
```docker-compose up -d --remove-orphans```
1. Start PHP-Lamp Server
2. Start PhpMyAdmin
