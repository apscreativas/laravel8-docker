## Docker-compose para Laravel 8.0 con PHP 8

Esta configuración cuentan con:

- PHP a travez de FPM (app)
- PHP CLI (cli)
- Servidor Nginx (web)
- Servidor de BD Mariadb (mariadb)

## Ejecutar servicios

```shel
    $> docker-compose up -d
```

## Ejecutar servicios de forma individual

```shel
    $> docker-compose up {service}
```