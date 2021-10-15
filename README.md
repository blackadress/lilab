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
```console
$ pipenv --three
$ pipenv install
```

## Correr aplicación
_Instrucciones inician desde el root de la aplicación_
Primero el servidor web Django
```console
$ cd ezcreditos
$ python ezcreditos/manage.py makemigrations
$ python ezcreditos/manage.py migrate
$ psql -U lilab lilab < creditos.sql
$ python ezcreditos/manage.py runserver
```

Levantar la aplicación react (modo dev)
```console
$ cd ezc-fe
$ npm start
```

## Notas
Si se quiere ingresar al panel de administración de django: 'usuario:contraseña' 'admin:admin'

## Puntos por mejorar
- La autorización a la API está a través de JWT, debido a restricciones de tiempo se desactivaron
- El CSS es bootstrap, se debería cambiar por tailwind?
- Página de login
- Los puntajes de usuarios podrían ser API individuales o API de terceros, por restricciones de tiempo se pusieron directamente en la BD
