# lilab
reto de seleccion

## Inicialización Postgres
Si se está en un entorno UNIX, primero asegurarse de que el servicio de BD esté activo
```shell
$ sudo systemctl start postgresql
```

Luego crear el usuario y la base de datos dentro de psql
```SQL
CREATE USER lilab WITH PASSWORD 'lilab';
CREATE DATABASE lilab OWNER lilab;
```

## Instalación de librerías
```shell
$ pipenv --three
$ pipenv install
```

## Correr aplicación
```shell
$ python ezecreditos/manage.py makemigrations
$ python ezecreditos/manage.py migrate
$ python ezecreditos/manage.py runserver
```
