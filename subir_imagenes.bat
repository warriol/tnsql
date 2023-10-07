@echo off
REM crear las imagenes
REM docker tag apache warriol/apache:1.0
REM docker tag php warriol/php:1.0
REM docker tag mysql warriol/mysql:1.0
REM docker tag pma warriol/phpmyadmin:1.0
REM docker tag mongo warriol/mongo:1.0
REM docker tag mexpress warriol/mongo-express:1.0

REM Nombre de usuario de Docker Hub
set DOCKER_USERNAME=warriol

REM Versión de las imágenes
set VERSION=1.0

REM Lista de nombres de los servicios
set SERVICES=tnsql-apache tnsql-php mysql mongo mongo-mexpress

REM Etiquetar y subir imágenes
for %%s in (%SERVICES%) do (
  REM echo Etiquetando y subiendo la imagen %%s...
  REM docker tag %%s %DOCKER_USERNAME%/%%s:%VERSION%
  docker push %DOCKER_USERNAME%/%%s:%VERSION%
  echo Imagen %%s etiquetada y subida con éxito.
)
