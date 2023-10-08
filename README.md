# Taller BD NoSql
## Tarea entregable

## Integrantes
- Damian Vera
- Nicolás Lepore
- Wilson Arriola


## 1. Instalación de WSL 2
Para la instalación de WSL 2, se debe seguir los pasos que se encuentran en el siguiente link: https://learn.microsoft.com/en-us/windows/wsl/install

## 2. Instalación de Docker Desktop
Para la instalación de Docker Desktop, se debe seguir los pasos que se encuentran en el siguiente link: https://docs.docker.com/docker-for-windows/install/

## 3. Instalación de Docker Compose
- Constuir las images de los contenedores.
- Abir PowerShell y navegar hasta la raíz del git.
- Para esto, se debe ejecutar el siguiente comando en la carpeta raíz del proyecto: 
  - ```docker-compose build```
  - Este proceso descargará dos imagenes de DockerHub:
    - --> tnsql-apache
    - --> tnsql-php
- Este comando comenzará a construir las imágenes de los contenedores. Este proceso puede tardar varios minutos. Se descargaran todas las imagenes necesarias y configuraciones de servicios y puertos.
- Una vez finalizado el proceso, se debe ejecutar el siguiente comando para levantar los contenedores: 
  - ```docker-compose up -d```
  - Este proceso descargara otras imagenes necesarias para el funcionamiento de los contenedores.
    - --> mongo-express
    - --> mongo
    - --> mysql
    - --> phpmyadmin
  - Seguidamente, se levantarás el contenedore con los siguientes servicios:
    - --> MongoDB