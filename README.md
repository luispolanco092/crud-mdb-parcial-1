## Nombre del Proyecto
# Herramientas para gestión y construcción de Proyectos.

## Instrucciones para Ejecutar el Proyecto
Para evitar problemas de caché entre varios proyectos durante la calificación, siga los siguientes pasos:

1. Eliminar las imágenes previamente creadas:
   
   docker rmi $(docker images -q) --force
   
2. Borrar la caché de Docker:
   
   docker builder prune
   
3. Correr el proyecto con Docker Compose:
   # Comando para ejecutar en MacOS 
   docker-compose up

   # Comando para ejecutar en GNU/Linux Debian
   docker compose up
   
   # En windows se puede usar docker-compose up ó docker compose up sin inconvenientes.

## Adicional se agrega maven-site-plugin y su dependencia para poder verificar su documentación 
   mvn site


## Integrantes del Equipo GT02
- Vilma Melissa Alvarado Parada - AP22024
- Luis Miguel Polanco Pacheco- PP22054
- William Orlando Rivera Aragon - RA22045
