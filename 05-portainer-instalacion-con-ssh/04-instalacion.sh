#!/bin/bash
#NOTA: yo lo puse como bash pero esto es un archivo YAML de configuracion
#NOTA2: nunca copiar y pegar siempre escribir lo que estamos haciendo
#NOTA3: este es el compose de portainer solamente, hay que mirar la documentacion o tutoriales 
#donde expliquen bien donde hay que guardarlo y como hacer la lanzar el compose, pero si puedo decir 
#que hay que poner "-d" en el comando para que nos quede la terminal ocupada por el comando porque sino nos vamos a poder salir.


version: '3'

services:
  portainer:
    image: portainer/portainer-ce:latest
    container_name: portainer
    restart: unless-stopped
    security_opt:
      - no-new-privileges:true
    volumes:
      - /etc/localtime:/etc/localtime:ro
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - ./portainer-data:/data
    ports:
      - 9000:9000
